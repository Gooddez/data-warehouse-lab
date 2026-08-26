
    
    

select
    sale_date as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_date"
where sale_date is not null
group by sale_date
having count(*) > 1


