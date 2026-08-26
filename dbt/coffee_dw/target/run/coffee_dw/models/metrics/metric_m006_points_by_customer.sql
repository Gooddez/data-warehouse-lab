
  create view "coffee_dw"."dbt"."metric_m006_points_by_customer__dbt_tmp"
    
    
  as (
    select
    'M006'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    c.customer_code::varchar             as dimension_key,
    c.customer_name::varchar             as dimension_name,
    sum(f.points_redeemed)::numeric      as metric_value
from "coffee_dw"."dbt"."fct_sales" f
join "coffee_dw"."dbt"."dim_date" d using (date_key)
join "coffee_dw"."dbt"."dim_customer" c using (customer_key)
group by 1, 2, 3, 4
  );