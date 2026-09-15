select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select store_key
from "lab9"."dbt_marts"."dim_store"
where store_key is null



      
    ) dbt_internal_test