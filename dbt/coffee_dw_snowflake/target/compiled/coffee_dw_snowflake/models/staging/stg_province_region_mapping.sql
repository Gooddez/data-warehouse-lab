select
    trim(province_name) as province_name,
    trim(region_name) as region_name
from "coffee_dw_snowflake"."dbt_raw"."province_region_mapping"