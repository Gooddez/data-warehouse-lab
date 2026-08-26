
  create view "lab7"."dbt"."dim_order_status__dbt_tmp"
    
    
  as (
    select
    md5(status) as status_key,
    status

from "lab7"."dbt"."stg_orders_log"
group by status
  );