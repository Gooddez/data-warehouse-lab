select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    status as unique_field,
    count(*) as n_records

from "lab7"."dbt"."dim_order_status"
where status is not null
group by status
having count(*) > 1



      
    ) dbt_internal_test