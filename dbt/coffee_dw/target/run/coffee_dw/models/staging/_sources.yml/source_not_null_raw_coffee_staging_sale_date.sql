select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_date
from "coffee_dw"."public"."coffee_staging"
where sale_date is null



      
    ) dbt_internal_test