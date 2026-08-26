select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select total_revenue
from "lab8"."dbt_aggregates"."agg_sales_region_month"
where total_revenue is null



      
    ) dbt_internal_test