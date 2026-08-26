select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metric_key
from "dvdrental"."dbt_metrics"."metric_company_monthly"
where metric_key is null



      
    ) dbt_internal_test