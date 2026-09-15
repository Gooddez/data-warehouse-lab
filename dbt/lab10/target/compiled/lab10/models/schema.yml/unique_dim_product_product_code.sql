
    
    

select
    product_code as unique_field,
    count(*) as n_records

from "lab10"."warehouse"."dim_product"
where product_code is not null
group by product_code
having count(*) > 1


