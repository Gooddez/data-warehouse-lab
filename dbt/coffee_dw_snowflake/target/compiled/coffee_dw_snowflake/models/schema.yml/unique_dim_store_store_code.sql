
    
    

select
    store_code as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_store"
where store_code is not null
group by store_code
having count(*) > 1


