
  
    

  create  table "lab9"."dbt_marts"."dim_province__dbt_tmp"
  
  
    as
  
  (
    
select
  md5(p.province_name) as province_key,
  p.province_name,
  r.region_key
from "lab9"."dbt_staging"."stg_province_region" p
join "lab9"."dbt_marts"."dim_region" r on r.region_name=p.region_name
  );
  