select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select dbt_valid_from
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where dbt_valid_from is null



      
    ) dbt_internal_test