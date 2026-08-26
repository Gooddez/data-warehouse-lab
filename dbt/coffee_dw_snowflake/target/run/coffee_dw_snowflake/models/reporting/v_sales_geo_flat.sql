
  create view "coffee_dw_snowflake"."dbt_reporting"."v_sales_geo_flat__dbt_tmp"
    
    
  as (
    select
    d.sale_date,
    f.invoice_number,
    p.province_name,
    r.region_name,
    f.revenue
from "coffee_dw_snowflake"."dbt_marts"."fct_sales" f
join "coffee_dw_snowflake"."dbt_marts"."dim_date" d
  on f.date_key = d.date_key
join "coffee_dw_snowflake"."dbt_marts"."dim_store" s
  on f.store_key = s.store_key
join "coffee_dw_snowflake"."dbt_marts"."dim_province" p
  on s.province_key = p.province_key
join "coffee_dw_snowflake"."dbt_marts"."dim_region" r
  on p.region_key = r.region_key
  );