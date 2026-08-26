
    
    

select
    sale_id as unique_field,
    count(*) as n_records

from "coffee_dw_scd"."dbt_raw"."coffee_sales_scd"
where sale_id is not null
group by sale_id
having count(*) > 1


