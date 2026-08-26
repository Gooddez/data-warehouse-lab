select distinct
    md5(region_name) as region_key,
    region_name
from "coffee_dw_snowflake"."dbt_staging"."stg_province_region_mapping"