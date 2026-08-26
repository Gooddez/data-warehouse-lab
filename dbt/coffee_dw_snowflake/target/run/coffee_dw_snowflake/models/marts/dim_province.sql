
  
    

  create  table "coffee_dw_snowflake"."dbt_marts"."dim_province__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(m.province_name) as province_key,
    m.province_name,
    r.region_key
from "coffee_dw_snowflake"."dbt_staging"."stg_province_region_mapping" m
join "coffee_dw_snowflake"."dbt_marts"."dim_region" r
  on m.region_name = r.region_name
  );
  