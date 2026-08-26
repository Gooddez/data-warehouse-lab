
    
    

select
    status as unique_field,
    count(*) as n_records

from "lab7"."dbt"."dim_order_status"
where status is not null
group by status
having count(*) > 1


