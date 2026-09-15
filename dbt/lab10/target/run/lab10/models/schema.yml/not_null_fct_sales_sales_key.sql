
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sales_key
from "lab10"."warehouse"."fct_sales"
where sales_key is null



  
  
      
    ) dbt_internal_test