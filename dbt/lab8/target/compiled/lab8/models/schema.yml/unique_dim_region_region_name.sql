
    
    

select
    region_name as unique_field,
    count(*) as n_records

from "lab8"."dbt_marts"."dim_region"
where region_name is not null
group by region_name
having count(*) > 1


