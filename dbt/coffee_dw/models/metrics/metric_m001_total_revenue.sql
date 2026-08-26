select
    'M001'::varchar              as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    'ALL'::varchar               as dimension_key,
    'Coffee Club'::varchar       as dimension_name,
    sum(f.revenue)::numeric      as metric_value
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d using (date_key)
group by 1, 2, 3, 4