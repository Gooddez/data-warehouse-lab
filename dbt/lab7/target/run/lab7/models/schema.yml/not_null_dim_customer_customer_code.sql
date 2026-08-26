select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_code
from "lab7"."dbt"."dim_customer"
where customer_code is null



      
    ) dbt_internal_test