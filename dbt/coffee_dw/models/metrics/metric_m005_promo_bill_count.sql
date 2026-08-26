select
    'M005'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    pr.promo_code::varchar               as dimension_key,
    pr.promo_desc::varchar               as dimension_name,
    count(distinct f.invoice_number)::numeric as metric_value
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d using (date_key)
join {{ ref('dim_promotion') }} pr using (promotion_key)
where pr.promo_code != 'NO_PROMO'
group by 1, 2, 3, 4