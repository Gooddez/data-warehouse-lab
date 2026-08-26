select distinct
    md5(coalesce(product_code, '__NULL__')) as product_key,
    product_code,
    product_name,
    category,
    size
from "coffee_dw"."dbt"."stg_coffee_sales"