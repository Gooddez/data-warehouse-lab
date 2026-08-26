select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    sale_date as unique_field,
    count(*) as n_records

from "lab8"."dbt_marts"."dim_date"
where sale_date is not null
group by sale_date
having count(*) > 1



      
    ) dbt_internal_test