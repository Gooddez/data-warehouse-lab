
  create view "lab8"."dbt_reporting"."rpt_sales_store_day__dbt_tmp"
    
    
  as (
    select
    d.sale_date,
    s.store_key,
    s.store_code,
    s.store_name,
    sum(f.revenue) as daily_revenue,
    sum(f.quantity) as daily_quantity,
    count(distinct f.invoice_number) as invoice_count
from "lab8"."dbt_marts"."fct_sales" f
join "lab8"."dbt_marts"."dim_date" d
  on f.date_key = d.date_key
join "lab8"."dbt_marts"."dim_store" s
  on f.store_key = s.store_key
group by
    d.sale_date,
    s.store_key,
    s.store_code,
    s.store_name
  );