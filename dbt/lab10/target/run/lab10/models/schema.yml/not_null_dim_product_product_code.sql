
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select product_code
from "lab10"."warehouse"."dim_product"
where product_code is null



  
  
      
    ) dbt_internal_test