select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_fact_key
from "lab7"."dbt"."fact_orders_txn"
where order_fact_key is null



      
    ) dbt_internal_test