
  create view "lab8"."dbt_reporting"."rpt_sales_staff_year_cube__dbt_tmp"
    
    
  as (
    select
    d.year,
    f.staff_key,
    grouping(d.year) as is_all_years,
    grouping(f.staff_key) as is_all_staff,
    sum(f.revenue) as total_revenue,
    sum(f.quantity) as total_quantity
from "lab8"."dbt_marts"."fct_sales" f
join "lab8"."dbt_marts"."dim_date" d
  on f.date_key = d.date_key
group by cube(d.year, f.staff_key)
  );