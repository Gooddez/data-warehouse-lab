select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) as actual_rows
from "lab8"."dbt_marts"."fct_sales"
having count(*) <> 27000
      
    ) dbt_internal_test