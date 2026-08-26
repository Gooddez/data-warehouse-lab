
    
    

select
    staff_key as unique_field,
    count(*) as n_records

from "coffee_dw_scd"."dbt_marts"."dim_staff"
where staff_key is not null
group by staff_key
having count(*) > 1


