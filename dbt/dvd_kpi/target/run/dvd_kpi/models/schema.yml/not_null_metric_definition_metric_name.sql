select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metric_name
from "dvdrental"."dbt_metadata"."metric_definition"
where metric_name is null



      
    ) dbt_internal_test