
  
    

  create  table "coffee_dw_snowflake"."dbt_marts"."dim_customer__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(customer_code) as customer_key,
    customer_code,
    customer_name,
    gender,
    birth_year
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales"
  );
  