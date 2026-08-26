
    
    

select
    position_name as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_position"
where position_name is not null
group by position_name
having count(*) > 1


