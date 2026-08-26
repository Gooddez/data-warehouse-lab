
  create view "coffee_dw"."dbt"."metric_m003_revenue_by_product__dbt_tmp"
    
    
  as (
    select
    'M003'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    p.product_code::varchar              as dimension_key,
    p.product_name::varchar              as dimension_name,
    sum(f.revenue)::numeric              as metric_value
from "coffee_dw"."dbt"."fct_sales" f
join "coffee_dw"."dbt"."dim_date" d using (date_key)
join "coffee_dw"."dbt"."dim_product" p using (product_key)
group by 1, 2, 3, 4
  );