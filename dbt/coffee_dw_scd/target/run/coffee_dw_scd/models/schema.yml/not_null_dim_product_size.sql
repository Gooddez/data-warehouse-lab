select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select size
from "coffee_dw_scd"."dbt_marts"."dim_product"
where size is null



      
    ) dbt_internal_test