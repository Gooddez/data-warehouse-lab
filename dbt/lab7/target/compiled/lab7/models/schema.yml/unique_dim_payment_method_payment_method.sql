
    
    

select
    payment_method as unique_field,
    count(*) as n_records

from "lab7"."dbt"."dim_payment_method"
where payment_method is not null
group by payment_method
having count(*) > 1


