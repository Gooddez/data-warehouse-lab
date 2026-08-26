select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select staff_code
from "coffee_dw"."dbt"."dim_staff"
where staff_code is null



      
    ) dbt_internal_test