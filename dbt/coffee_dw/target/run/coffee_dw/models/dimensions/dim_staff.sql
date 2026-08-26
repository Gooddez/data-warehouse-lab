
  
    

  create  table "coffee_dw"."dbt"."dim_staff__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(coalesce(staff_code, '__NULL__')) as staff_key,
    staff_code,
    staff_name,
    position
from "coffee_dw"."dbt"."stg_coffee_sales"
  );
  