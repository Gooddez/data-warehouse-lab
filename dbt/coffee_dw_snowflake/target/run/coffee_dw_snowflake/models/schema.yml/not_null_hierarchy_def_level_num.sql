select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select level_num
from "coffee_dw_snowflake"."dbt_metadata"."hierarchy_def"
where level_num is null



      
    ) dbt_internal_test