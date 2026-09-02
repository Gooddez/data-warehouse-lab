
  
    

  create  table "lab9"."dbt_marts"."dim_staff__dbt_tmp"
  
  
    as
  
  (
    
select distinct
  md5(s.staff_code) as staff_key,
  s.staff_code, s.staff_name, p.position_key
from "lab9"."dbt_staging"."stg_coffee_sales" s
join "lab9"."dbt_marts"."dim_position" p on p.position=s.position
  );
  