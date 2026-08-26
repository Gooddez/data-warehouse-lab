select
    'M006'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    c.customer_code::varchar             as dimension_key,
    c.customer_name::varchar             as dimension_name,
    sum(f.points_redeemed)::numeric      as metric_value
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d using (date_key)
join {{ ref('dim_customer') }} c using (customer_key)
group by 1, 2, 3, 4