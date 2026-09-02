select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select province_name
from "lab9"."dbt_staging"."stg_province_region"
where province_name is null



      
    ) dbt_internal_test