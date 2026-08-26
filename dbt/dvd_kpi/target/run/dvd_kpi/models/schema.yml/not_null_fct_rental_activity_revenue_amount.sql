select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select revenue_amount
from "dvdrental"."dbt_metrics"."fct_rental_activity"
where revenue_amount is null



      
    ) dbt_internal_test