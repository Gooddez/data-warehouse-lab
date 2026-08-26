select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_code
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where customer_code is null



      
    ) dbt_internal_test