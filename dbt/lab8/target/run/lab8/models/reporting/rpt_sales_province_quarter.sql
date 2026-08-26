
  create view "lab8"."dbt_reporting"."rpt_sales_province_quarter__dbt_tmp"
    
    
  as (
    select
    date_trunc('quarter', d.sale_date)::date as quarter_start,
    r.region_key,
    r.region_name,
    p.province_key,
    p.province_name,
    sum(f.revenue) as province_revenue,
    sum(f.quantity) as province_quantity,
    count(distinct f.invoice_number) as invoice_count
from "lab8"."dbt_marts"."fct_sales" f
join "lab8"."dbt_marts"."dim_date" d
  on f.date_key = d.date_key
join "lab8"."dbt_marts"."dim_store" s
  on f.store_key = s.store_key
join "lab8"."dbt_marts"."dim_province" p
  on s.province_key = p.province_key
join "lab8"."dbt_marts"."dim_region" r
  on p.region_key = r.region_key
group by
    date_trunc('quarter', d.sale_date)::date,
    r.region_key,
    r.region_name,
    p.province_key,
    p.province_name
  );