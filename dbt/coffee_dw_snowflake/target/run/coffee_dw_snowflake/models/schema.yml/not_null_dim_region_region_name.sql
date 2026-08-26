select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select region_name
from "coffee_dw_snowflake"."dbt_marts"."dim_region"
where region_name is null



      
    ) dbt_internal_test