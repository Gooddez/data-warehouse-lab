select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    staff_code as unique_field,
    count(*) as n_records

from "coffee_dw_scd"."dbt_marts"."dim_staff"
where staff_code is not null
group by staff_code
having count(*) > 1



      
    ) dbt_internal_test