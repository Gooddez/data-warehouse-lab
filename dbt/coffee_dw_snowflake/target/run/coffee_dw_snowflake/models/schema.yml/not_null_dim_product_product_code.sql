select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_code
from "coffee_dw_snowflake"."dbt_marts"."dim_product"
where product_code is null



      
    ) dbt_internal_test