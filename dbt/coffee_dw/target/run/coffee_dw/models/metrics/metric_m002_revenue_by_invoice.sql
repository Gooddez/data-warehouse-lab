
  create view "coffee_dw"."dbt"."metric_m002_revenue_by_invoice__dbt_tmp"
    
    
  as (
    select
    'M002'::varchar                      as metric_key,
    date_trunc('month', d.full_date)::date as metric_month,
    f.invoice_number::varchar            as dimension_key,
    f.invoice_number::varchar            as dimension_name,
    sum(f.revenue)::numeric              as metric_value
from "coffee_dw"."dbt"."fct_sales" f
join "coffee_dw"."dbt"."dim_date" d using (date_key)
group by 1, 2, 3, 4
  );