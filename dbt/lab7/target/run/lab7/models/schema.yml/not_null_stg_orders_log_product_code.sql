select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_code
from "lab7"."dbt"."stg_orders_log"
where product_code is null



      
    ) dbt_internal_test