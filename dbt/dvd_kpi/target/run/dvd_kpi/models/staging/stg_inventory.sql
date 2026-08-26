
  create view "dvdrental"."dbt_staging"."stg_inventory__dbt_tmp"
    
    
  as (
    select
    inventory_id::integer as inventory_id,
    film_id::integer as film_id,
    store_id::integer as store_id
from "dvdrental"."public"."inventory"
  );