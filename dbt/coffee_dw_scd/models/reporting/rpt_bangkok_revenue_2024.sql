select
    d.year,
    c.province,
    sum(f.revenue) as total_revenue
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d
  on f.date_key = d.date_key
join {{ ref('dim_customer') }} c
  on f.customer_key = c.customer_key
where d.year = 2024
  and c.province = 'Bangkok'
group by d.year, c.province