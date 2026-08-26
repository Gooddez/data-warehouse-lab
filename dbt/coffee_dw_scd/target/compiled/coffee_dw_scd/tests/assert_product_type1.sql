select *
from "coffee_dw_scd"."dbt_marts"."dim_product"
where product_code = 'P002'
  and product_name <> case
      when cast('2031-03-19' as date)
           >= date '2025-01-01'
        then 'Latte Coffee'
      else 'Latte Coffe'
  end