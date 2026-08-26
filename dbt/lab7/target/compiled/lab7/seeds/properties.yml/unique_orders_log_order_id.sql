
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "lab7"."dbt"."orders_log"
where order_id is not null
group by order_id
having count(*) > 1


