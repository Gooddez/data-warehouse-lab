select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metric_key
from "coffee_dw"."dbt"."metric_m001_total_revenue"
where metric_key is null



      
    ) dbt_internal_test