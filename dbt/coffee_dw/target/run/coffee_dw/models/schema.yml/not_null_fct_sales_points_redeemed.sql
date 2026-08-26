select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select points_redeemed
from "coffee_dw"."dbt"."fct_sales"
where points_redeemed is null



      
    ) dbt_internal_test