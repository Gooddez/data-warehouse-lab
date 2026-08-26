
  create view "dvdrental"."dbt_intermediate"."int_payment_by_rental__dbt_tmp"
    
    
  as (
    select
    rental_id,
    sum(amount)::numeric(12, 2) as revenue_amount,
    count(*)::integer as payment_record_count
from "dvdrental"."dbt_staging"."stg_payment"
where rental_id is not null
group by rental_id
  );