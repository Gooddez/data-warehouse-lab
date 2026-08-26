select count(*) as actual_rows
from "lab8"."dbt_marts"."fct_sales"
having count(*) <> 27000