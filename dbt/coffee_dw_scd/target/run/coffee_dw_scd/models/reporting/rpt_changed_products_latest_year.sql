
  create view "coffee_dw_scd"."dbt_reporting"."rpt_changed_products_latest_year__dbt_tmp"
    
    
  as (
    with latest_year as (
    select max(year) as year
    from "coffee_dw_scd"."dbt_marts"."dim_date"
),

changed_products as (
    select
        product_key,
        product_code,
        product_name
    from "coffee_dw_scd"."dbt_marts"."dim_product"
    where previous_category is not null
)

select
    d.year,
    p.product_code,
    p.product_name,
    sum(f.revenue) as total_revenue_latest_year
from "coffee_dw_scd"."dbt_marts"."fct_sales" f
join "coffee_dw_scd"."dbt_marts"."dim_date" d
  on f.date_key = d.date_key
join changed_products p
  on f.product_key = p.product_key
join latest_year y
  on d.year = y.year
group by d.year, p.product_code, p.product_name
  );