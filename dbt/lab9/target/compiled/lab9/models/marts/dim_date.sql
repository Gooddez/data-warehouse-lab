
select distinct
  to_char(sale_date,'YYYYMMDD')::int as date_key,
  sale_date,
  extract(year from sale_date)::int as year,
  extract(month from sale_date)::int as month,
  extract(quarter from sale_date)::int as quarter
from "lab9"."dbt_staging"."stg_coffee_sales"