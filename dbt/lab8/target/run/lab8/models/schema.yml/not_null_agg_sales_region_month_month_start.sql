select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select month_start
from "lab8"."dbt_aggregates"."agg_sales_region_month"
where month_start is null



      
    ) dbt_internal_test