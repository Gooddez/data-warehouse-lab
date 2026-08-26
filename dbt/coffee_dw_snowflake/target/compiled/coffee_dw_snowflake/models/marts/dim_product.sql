select distinct
    md5(s.product_code) as product_key,
    s.product_code,
    s.product_name,
    c.category_key,
    s.size,
    s.unit_price
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
join "coffee_dw_snowflake"."dbt_marts"."dim_category" c
  on s.category = c.category_name