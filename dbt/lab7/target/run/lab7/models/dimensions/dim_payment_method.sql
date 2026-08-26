
  create view "lab7"."dbt"."dim_payment_method__dbt_tmp"
    
    
  as (
    select
    md5(payment_method) as payment_method_key,
    payment_method

from "lab7"."dbt"."stg_orders_log"
group by payment_method
  );