
  create view "coffee_dw"."dbt"."metric_m001_total_revenue__dbt_tmp"
    
    
  as (
    select
    'M001'::varchar              as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    'ALL'::varchar               as dimension_key,
    'Coffee Club'::varchar       as dimension_name,
    sum(f.revenue)::numeric      as metric_value
from "coffee_dw"."dbt"."fct_sales" f
join "coffee_dw"."dbt"."dim_date" d using (date_key)
group by 1, 2, 3, 4
  );