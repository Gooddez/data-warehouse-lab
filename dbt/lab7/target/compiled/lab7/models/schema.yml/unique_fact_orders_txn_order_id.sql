
    
    

select
    order_id as unique_field,
    count(*) as n_records

from "lab7"."dbt"."fact_orders_txn"
where order_id is not null
group by order_id
having count(*) > 1


