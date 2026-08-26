
    
    

select
    province_key as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_marts"."dim_province"
where province_key is not null
group by province_key
having count(*) > 1


