
  
    

  create  table "coffee_dw"."dbt"."dim_date__dbt_tmp"
  
  
    as
  
  (
    select distinct
    to_char(sale_date, 'YYYYMMDD')::integer as date_key,
    sale_date                              as full_date,
    extract(day from sale_date)::integer   as day,
    extract(month from sale_date)::integer as month,
    trim(to_char(sale_date, 'Month'))       as month_name,
    extract(quarter from sale_date)::integer as quarter,
    extract(year from sale_date)::integer  as year
from "coffee_dw"."dbt"."stg_coffee_sales"
  );
  