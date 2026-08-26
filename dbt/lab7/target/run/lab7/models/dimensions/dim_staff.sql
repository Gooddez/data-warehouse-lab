
  create view "lab7"."dbt"."dim_staff__dbt_tmp"
    
    
  as (
    select
    md5(staff_code) as staff_key,
    staff_code,
    max(staff_name) as staff_name

from "lab7"."dbt"."stg_orders_log"
group by staff_code
  );