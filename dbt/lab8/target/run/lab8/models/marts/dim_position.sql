
  
    

  create  table "lab8"."dbt_marts"."dim_position__dbt_tmp"
  
  
    as
  
  (
    select distinct
    md5(position) as position_key,
    position as position_name
from "lab8"."dbt_staging"."stg_coffee_sales"
  );
  