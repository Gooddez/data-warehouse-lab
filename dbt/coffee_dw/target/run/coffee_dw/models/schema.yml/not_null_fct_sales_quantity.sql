select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select quantity
from "coffee_dw"."dbt"."fct_sales"
where quantity is null



      
    ) dbt_internal_test