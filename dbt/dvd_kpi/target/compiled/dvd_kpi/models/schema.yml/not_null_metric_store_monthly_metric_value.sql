
    
    



select metric_value
from (select * from "dvdrental"."dbt_metrics"."metric_store_monthly" where metric_key NOT IN ('M004', 'M005')) dbt_subquery
where metric_value is null


