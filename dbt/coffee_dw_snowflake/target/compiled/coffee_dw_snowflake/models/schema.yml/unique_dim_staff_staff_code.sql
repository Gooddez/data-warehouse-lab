
    
    

select
    staff_code as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_staff"
where staff_code is not null
group by staff_code
having count(*) > 1


