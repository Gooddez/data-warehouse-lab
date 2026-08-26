select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select store_id
from "dvdrental"."dbt_metrics"."metric_store_monthly"
where store_id is null



      
    ) dbt_internal_test