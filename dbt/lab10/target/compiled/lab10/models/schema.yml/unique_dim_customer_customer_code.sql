
    
    

select
    customer_code as unique_field,
    count(*) as n_records

from "lab10"."warehouse"."dim_customer"
where customer_code is not null
group by customer_code
having count(*) > 1


