select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select promotion_key
from "coffee_dw"."dbt"."dim_promotion"
where promotion_key is null



      
    ) dbt_internal_test