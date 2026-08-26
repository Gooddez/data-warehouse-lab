select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select metric_value
from "coffee_dw"."dbt"."metric_m001_total_revenue"
where metric_value is null



      
    ) dbt_internal_test