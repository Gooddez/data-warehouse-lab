
  create view "dvdrental"."dbt_staging"."stg_film__dbt_tmp"
    
    
  as (
    select
    film_id::integer as film_id,
    title::varchar as film_title,
    rental_duration::integer as rental_duration,
    rating::varchar as rating
from "dvdrental"."public"."film"
  );