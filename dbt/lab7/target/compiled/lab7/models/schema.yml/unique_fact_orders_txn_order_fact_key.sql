
    
    

select
    order_fact_key as unique_field,
    count(*) as n_records

from "lab7"."dbt"."fact_orders_txn"
where order_fact_key is not null
group by order_fact_key
having count(*) > 1


