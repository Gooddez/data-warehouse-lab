
  
    

  create  table "coffee_dw_scd"."dbt_marts"."dim_date__dbt_tmp"
  
  
    as
  
  (
    select distinct
    cast(to_char(sale_date, 'YYYYMMDD') as integer) as date_key,
    sale_date,
    extract(year from sale_date)::integer as year,
    extract(month from sale_date)::integer as month_number,
    trim(to_char(sale_date, 'Month')) as month_name,
    extract(quarter from sale_date)::integer as quarter,
    extract(day from sale_date)::integer as day_of_month
from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales"
  );
  