
  
    

  create  table "coffee_dw"."dbt"."dim_customer__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(coalesce(customer_code, '__NULL__')) as customer_key,
    customer_code,
    customer_name,
    gender,
    birth_year
from "coffee_dw"."dbt"."stg_coffee_sales"
  );
  