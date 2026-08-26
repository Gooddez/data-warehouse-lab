select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metric_month
from "dvdrental"."dbt_metrics"."metric_store_monthly"
where metric_month is null



      
    ) dbt_internal_test