select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_id
from "coffee_dw"."public"."coffee_staging"
where sale_id is null



      
    ) dbt_internal_test