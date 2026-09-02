select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select province_key
from "lab9"."dbt_marts"."dim_province"
where province_key is null



      
    ) dbt_internal_test