
  
    

  create  table "lab8"."dbt_marts"."dim_product__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(s.product_code || '|' || s.size) as product_key,
    s.product_code,
    s.product_name,
    c.category_key,
    s.size,
    s.unit_price
from "lab8"."dbt_staging"."stg_coffee_sales" s
join "lab8"."dbt_marts"."dim_category" c
  on s.category = c.category_name
  );
  