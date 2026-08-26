select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select is_current
from "coffee_dw_scd"."dbt_marts"."dim_customer"
where is_current is null



      
    ) dbt_internal_test