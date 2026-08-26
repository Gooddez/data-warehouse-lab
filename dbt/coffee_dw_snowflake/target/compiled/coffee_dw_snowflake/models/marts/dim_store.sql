select distinct
    md5(s.store_code) as store_key,
    s.store_code,
    s.store_name,
    p.province_key
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
join "coffee_dw_snowflake"."dbt_marts"."dim_province" p
  on s.province = p.province_name