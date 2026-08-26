select
    'M007'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    s.staff_code::varchar                as dimension_key,
    s.staff_name::varchar                as dimension_name,
    sum(f.revenue)::numeric              as metric_value
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d using (date_key)
join {{ ref('dim_staff') }} s using (staff_key)
group by 1, 2, 3, 4