
select distinct
  md5(region_name) as region_key,
  region_name
from "lab9"."dbt_staging"."stg_province_region"