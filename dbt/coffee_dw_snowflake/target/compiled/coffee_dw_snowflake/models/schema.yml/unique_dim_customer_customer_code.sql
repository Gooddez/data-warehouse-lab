
    
    

select
    customer_code as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_customer"
where customer_code is not null
group by customer_code
having count(*) > 1


