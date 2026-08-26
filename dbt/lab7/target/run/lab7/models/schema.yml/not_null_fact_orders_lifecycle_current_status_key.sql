select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select current_status_key
from "lab7"."dbt"."fact_orders_lifecycle"
where current_status_key is null



      
    ) dbt_internal_test