
  
    

  create  table "coffee_dw_snowflake"."dbt_marts"."dim_staff__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(s.staff_code) as staff_key,
    s.staff_code,
    s.staff_name,
    p.position_key
from "coffee_dw_snowflake"."dbt_staging"."stg_coffee_sales" s
join "coffee_dw_snowflake"."dbt_marts"."dim_position" p
  on s.position = p.position_name
  );
  