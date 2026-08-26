select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select category_name
from "coffee_dw_snowflake"."dbt_marts"."dim_category"
where category_name is null



      
    ) dbt_internal_test