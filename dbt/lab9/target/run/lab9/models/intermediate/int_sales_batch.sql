
  create view "lab9"."dbt_intermediate"."int_sales_batch__dbt_tmp"
    
    
  as (
    select *
from "lab9"."dbt_staging"."stg_coffee_sales"

where sale_date >= date '2031-04-15'

  );