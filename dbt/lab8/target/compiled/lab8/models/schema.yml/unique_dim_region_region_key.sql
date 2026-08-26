
    
    

select
    region_key as unique_field,
    count(*) as n_records

from "lab8"."dbt_marts"."dim_region"
where region_key is not null
group by region_key
having count(*) > 1


