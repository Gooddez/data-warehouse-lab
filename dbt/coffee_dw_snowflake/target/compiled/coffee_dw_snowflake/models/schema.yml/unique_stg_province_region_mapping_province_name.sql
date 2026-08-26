
    
    

select
    province_name as unique_field,
    count(*) as n_records

from "coffee_dw_snowflake"."dbt_staging"."stg_province_region_mapping"
where province_name is not null
group by province_name
having count(*) > 1


