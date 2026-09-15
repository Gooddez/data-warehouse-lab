
  
    

  create  table "lab10"."warehouse"."dim_product__dbt_tmp"
  
  
    as
  
  (
    with products as (
    select distinct
        product_code,
        product_name,
        category,
        size,
        unit_price
    from "lab10"."warehouse"."stg_coffee_sales"
)

select
    md5(product_code) as product_key,
    product_code,
    product_name,
    category,
    size,
    unit_price
from products
  );
  