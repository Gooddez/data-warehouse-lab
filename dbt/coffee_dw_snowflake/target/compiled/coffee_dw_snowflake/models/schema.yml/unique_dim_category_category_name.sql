
    
    

select
    category_name as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_category"
where category_name is not null
group by category_name
having count(*) > 1


