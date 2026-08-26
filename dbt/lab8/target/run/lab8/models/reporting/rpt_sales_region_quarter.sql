
  create view "lab8"."dbt_reporting"."rpt_sales_region_quarter__dbt_tmp"
    
    
  as (
    select
    date_trunc('quarter', month_start)::date as quarter_start,
    region_key,
    region_name,
    sum(total_revenue) as quarter_revenue,
    sum(total_quantity) as quarter_quantity,
    sum(total_points_redeemed) as quarter_points_redeemed,
    sum(invoice_count) as quarter_invoice_count
from "lab8"."dbt_aggregates"."agg_sales_region_month"
group by
    date_trunc('quarter', month_start)::date,
    region_key,
    region_name
  );