with first_known as (
    select
        store_code,
        store_name,
        province,
        row_number() over (
            partition by store_code
            order by sale_date, sale_id
        ) as row_num
    from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
)

select
    md5(store_code) as store_key,
    store_code,
    store_name,
    province
from first_known
where row_num = 1