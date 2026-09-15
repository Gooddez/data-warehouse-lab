
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from "lab10"."warehouse"."dim_customer"
where customer_key is not null
group by customer_key
having count(*) > 1


