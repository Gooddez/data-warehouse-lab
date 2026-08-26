
    
    

select
    store_key as unique_field,
    count(*) as n_records

from "lab8"."dbt_marts"."dim_store"
where store_key is not null
group by store_key
having count(*) > 1


