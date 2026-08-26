select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select rental_count
from "dvdrental"."dbt_metrics"."fct_rental_activity"
where rental_count is null



      
    ) dbt_internal_test