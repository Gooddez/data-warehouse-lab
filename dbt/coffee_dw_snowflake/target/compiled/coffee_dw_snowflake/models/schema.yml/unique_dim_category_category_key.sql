
    
    

select
    category_key as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_category"
where category_key is not null
group by category_key
having count(*) > 1


