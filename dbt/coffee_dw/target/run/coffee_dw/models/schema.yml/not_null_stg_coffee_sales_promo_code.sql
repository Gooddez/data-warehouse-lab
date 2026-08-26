select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select promo_code
from "coffee_dw"."dbt"."stg_coffee_sales"
where promo_code is null



      
    ) dbt_internal_test