select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select rental_month
from "dvdrental"."dbt_metrics"."fct_rental_activity"
where rental_month is null



      
    ) dbt_internal_test