select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select staff_key
from "coffee_dw_scd"."dbt_marts"."fct_sales"
where staff_key is null



      
    ) dbt_internal_test