select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_id
from "coffee_dw_scd"."dbt_raw"."coffee_sales_scd"
where sale_id is null



      
    ) dbt_internal_test