
    
    

select
    product_code as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_product"
where product_code is not null
group by product_code
having count(*) > 1


