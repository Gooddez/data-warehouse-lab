with category_sales as (

    select
        date_trunc('month', d.full_date)::date as metric_month,
        sf.staff_code,
        sf.staff_name,
        p.category,
        sum(f.quantity)::numeric as quantity_sold
    from {{ ref('fct_sales') }} f
    join {{ ref('dim_date') }} d using (date_key)
    join {{ ref('dim_staff') }} sf using (staff_key)
    join {{ ref('dim_product') }} p using (product_key)
    group by 1, 2, 3, 4

), ranked as (

    select
        *,
        row_number() over (
            partition by metric_month, staff_code
            order by quantity_sold desc, category
        ) as category_rank
    from category_sales

)

select
    'M008'::varchar         as metric_key,
    metric_month,
    staff_code::varchar     as dimension_key,
    staff_name::varchar     as dimension_name,
    category::varchar       as result_label,
    quantity_sold           as metric_value
from ranked
where category_rank = 1