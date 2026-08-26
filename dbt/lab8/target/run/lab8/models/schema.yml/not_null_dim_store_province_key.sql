select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select province_key
from "lab8"."dbt_marts"."dim_store"
where province_key is null



      
    ) dbt_internal_test