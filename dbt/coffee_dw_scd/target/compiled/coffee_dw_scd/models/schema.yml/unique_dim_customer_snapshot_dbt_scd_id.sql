
    
    

select
    dbt_scd_id as unique_field,
    count(*) as n_records

from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"
where dbt_scd_id is not null
group by dbt_scd_id
having count(*) > 1


