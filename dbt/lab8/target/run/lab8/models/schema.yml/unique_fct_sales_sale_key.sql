select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    sale_key as unique_field,
    count(*) as n_records

from "lab8"."dbt_marts"."fct_sales"
where sale_key is not null
group by sale_key
having count(*) > 1



      
    ) dbt_internal_test