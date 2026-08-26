select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select province_name
from "coffee_dw_snowflake"."dbt_staging"."stg_province_region_mapping"
where province_name is null



      
    ) dbt_internal_test