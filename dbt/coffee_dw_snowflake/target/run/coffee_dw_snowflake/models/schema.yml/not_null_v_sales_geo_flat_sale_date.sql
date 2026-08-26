select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_date
from "coffee_dw_snowflake"."dbt_reporting"."v_sales_geo_flat"
where sale_date is null



      
    ) dbt_internal_test