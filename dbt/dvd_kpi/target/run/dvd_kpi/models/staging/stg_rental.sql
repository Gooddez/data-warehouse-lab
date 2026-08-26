
  create view "dvdrental"."dbt_staging"."stg_rental__dbt_tmp"
    
    
  as (
    select
    rental_id::integer as rental_id,
    rental_date::timestamp as rental_date,
    inventory_id::integer as inventory_id,
    customer_id::integer as customer_id,
    return_date::timestamp as return_date,
    staff_id::integer as staff_id
from "dvdrental"."public"."rental"
  );