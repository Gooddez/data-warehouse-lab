with latest_product as (
    select
        product_code,
        product_name,
        size,
        unit_price,
        row_number() over (
            partition by product_code, size
            order by sale_date desc, sale_id desc
        ) as product_rank
    from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
),

product_daily as (
    select distinct
        product_code,
        sale_date,
        category
    from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
),

category_ordered as (
    select
        product_code,
        sale_date,
        category,
        lag(category) over (
            partition by product_code
            order by sale_date
        ) as previous_category_in_source
    from product_daily
),

category_changes as (
    select
        product_code,
        sale_date as category_start_date,
        category
    from category_ordered
    where previous_category_in_source is null
       or category is distinct from previous_category_in_source
),

category_ranked as (
    select
        *,
        row_number() over (
            partition by product_code
            order by category_start_date desc
        ) as category_rank
    from category_changes
),

category_type3 as (
    select
        product_code,
        max(case when category_rank = 1 then category end)
            as current_category,
        max(case when category_rank = 2 then category end)
            as previous_category
    from category_ranked
    group by product_code
)

select
    md5(concat_ws('|', p.product_code, p.size))
        as product_key,
    p.product_code,
    p.product_name,
    c.current_category,
    c.previous_category,
    p.size,
    p.unit_price
from latest_product p
join category_type3 c using (product_code)
where p.product_rank = 1