
  
    

  create  table "coffee_dw"."dbt"."dim_store__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(coalesce(store_code, '__NULL__')) as store_key,
    store_code,
    store_name,
    province
from "coffee_dw"."dbt"."stg_coffee_sales"
  );
  