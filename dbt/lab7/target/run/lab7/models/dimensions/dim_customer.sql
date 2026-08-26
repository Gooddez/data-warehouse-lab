
  create view "lab7"."dbt"."dim_customer__dbt_tmp"
    
    
  as (
    select
    md5(customer_code) as customer_key,
    customer_code,
    max(customer_name) as customer_name

from "lab7"."dbt"."stg_orders_log"
group by customer_code
  );