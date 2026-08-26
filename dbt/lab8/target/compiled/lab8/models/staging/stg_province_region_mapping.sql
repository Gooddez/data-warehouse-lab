select
    trim(province_name) as province_name,
    trim(region_name) as region_name
from "lab8"."dbt_raw"."province_region_mapping_v2"