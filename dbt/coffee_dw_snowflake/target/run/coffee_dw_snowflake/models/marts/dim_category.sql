
  
    

  create  table "coffee_dw_snowflake"."dbt_marts"."dim_category__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(category) as category_key,
    category as category_name
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales"
  );
  