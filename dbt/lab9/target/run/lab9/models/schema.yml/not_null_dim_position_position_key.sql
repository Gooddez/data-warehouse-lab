select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select position_key
from "lab9"."dbt_marts"."dim_position"
where position_key is null



      
    ) dbt_internal_test