
    
    

select
    store_key as unique_field,
    count(*) as n_records

from "lab10"."warehouse"."dim_store"
where store_key is not null
group by store_key
having count(*) > 1


