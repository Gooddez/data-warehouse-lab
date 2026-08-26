with latest_year as (
    select max(year) as year
    from {{ ref('dim_date') }}
),

changed_products as (
    select
        product_key,
        product_code,
        product_name
    from {{ ref('dim_product') }}
    where previous_category is not null
)

select
    d.year,
    p.product_code,
    p.product_name,
    sum(f.revenue) as total_revenue_latest_year
from {{ ref('fct_sales') }} f
join {{ ref('dim_date') }} d
  on f.date_key = d.date_key
join changed_products p
  on f.product_key = p.product_key
join latest_year y
  on d.year = y.year
group by d.year, p.product_code, p.product_name