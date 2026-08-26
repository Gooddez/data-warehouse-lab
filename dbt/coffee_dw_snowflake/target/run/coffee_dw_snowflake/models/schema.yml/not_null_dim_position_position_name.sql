select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select position_name
from "coffee_dw_snowflake"."dbt_marts"."dim_position"
where position_name is null



      
    ) dbt_internal_test