select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_key
from "lab8"."dbt_marts"."fct_sales"
where sale_key is null



      
    ) dbt_internal_test