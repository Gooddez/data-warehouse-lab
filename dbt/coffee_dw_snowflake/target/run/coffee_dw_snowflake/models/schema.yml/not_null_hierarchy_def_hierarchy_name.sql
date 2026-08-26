select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select hierarchy_name
from "coffee_dw_snowflake"."dbt_metadata"."hierarchy_def"
where hierarchy_name is null



      
    ) dbt_internal_test