
  create view "lab8"."dbt_staging"."stg_province_region_mapping__dbt_tmp"
    
    
  as (
    select
    trim(province_name) as province_name,
    trim(region_name) as region_name
from "lab8"."dbt_raw"."province_region_mapping_v2"
  );