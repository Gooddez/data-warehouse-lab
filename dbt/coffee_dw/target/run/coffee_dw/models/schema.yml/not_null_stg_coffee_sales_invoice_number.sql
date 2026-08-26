select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select invoice_number
from "coffee_dw"."dbt"."stg_coffee_sales"
where invoice_number is null



      
    ) dbt_internal_test