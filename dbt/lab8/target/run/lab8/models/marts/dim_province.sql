
  
    

  create  table "lab8"."dbt_marts"."dim_province__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(m.province_name) as province_key,
    m.province_name,
    r.region_key
from "lab8"."dbt_staging"."stg_province_region_mapping" m
join "lab8"."dbt_marts"."dim_region" r
  on m.region_name = r.region_name
  );
  