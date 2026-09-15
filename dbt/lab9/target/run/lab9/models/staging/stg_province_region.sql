
  create view "lab9"."dbt_staging"."stg_province_region__dbt_tmp"
    
    
  as (
    select province_name, region_name
from "lab9"."dbt"."province_region_mapping_v2"
  );