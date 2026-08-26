select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    promo_key as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_promotion"
where promo_key is not null
group by promo_key
having count(*) > 1



      
    ) dbt_internal_test