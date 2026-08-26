
    
    



select dbt_scd_id
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where dbt_scd_id is null


