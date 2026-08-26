select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    customer_code as unique_field,
    count(*) as n_records

from "lab7"."dbt"."dim_customer"
where customer_code is not null
group by customer_code
having count(*) > 1



      
    ) dbt_internal_test