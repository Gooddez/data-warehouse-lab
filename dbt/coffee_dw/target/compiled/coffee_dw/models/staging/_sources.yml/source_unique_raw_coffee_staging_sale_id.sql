
    
    

select
    sale_id as unique_field,
    count(*) as n_records

from "coffee_dw"."public"."coffee_staging"
where sale_id is not null
group by sale_id
having count(*) > 1


