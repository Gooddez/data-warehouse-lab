
  create view "lab9"."dbt_intermediate"."int_customer_source__dbt_tmp"
    
    
  as (
    with batch as (
  select *
  from "lab9"."dbt_staging"."stg_coffee_sales"
  
  where sale_date >= date '2031-04-15'
  
), ranked as (
  select
    customer_code, customer_name, gender, birth_year,
    sale_date as source_change_date,
    row_number() over (
      partition by customer_code, customer_name
      order by sale_date, sale_id
    ) as rn
  from batch
)
select customer_code, customer_name, gender, birth_year, source_change_date
from ranked
where rn=1
  );