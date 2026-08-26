
    
    



select dbt_valid_from
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where dbt_valid_from is null


