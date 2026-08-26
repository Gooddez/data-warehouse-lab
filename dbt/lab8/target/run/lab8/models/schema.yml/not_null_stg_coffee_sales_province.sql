select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select province
from "lab8"."dbt_staging"."stg_coffee_sales"
where province is null



      
    ) dbt_internal_test