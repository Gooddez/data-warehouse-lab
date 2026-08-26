select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_date_key
from "lab7"."dbt"."fact_orders_lifecycle"
where order_date_key is null



      
    ) dbt_internal_test