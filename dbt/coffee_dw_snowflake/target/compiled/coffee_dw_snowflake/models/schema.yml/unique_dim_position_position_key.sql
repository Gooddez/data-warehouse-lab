
    
    

select
    position_key as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_position"
where position_key is not null
group by position_key
having count(*) > 1


