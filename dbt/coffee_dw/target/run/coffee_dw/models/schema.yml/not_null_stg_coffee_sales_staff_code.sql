select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select staff_code
from "coffee_dw"."dbt"."stg_coffee_sales"
where staff_code is null



      
    ) dbt_internal_test