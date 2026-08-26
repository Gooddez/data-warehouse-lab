select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select date_key
from "lab8"."dbt_marts"."fct_sales"
where date_key is null



      
    ) dbt_internal_test