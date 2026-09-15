
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    promo_code as unique_field,
    count(*) as n_records

from "lab10"."warehouse"."dim_promotion"
where promo_code is not null
group by promo_code
having count(*) > 1



  
  
      
    ) dbt_internal_test