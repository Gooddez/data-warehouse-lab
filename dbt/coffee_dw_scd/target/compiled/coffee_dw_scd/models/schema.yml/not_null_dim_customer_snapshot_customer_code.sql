
    
    



select customer_code
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where customer_code is null


