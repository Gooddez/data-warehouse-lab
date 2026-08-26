select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select *
from "coffee_dw_scd"."dbt_marts"."dim_product"
where product_code = 'P002'
  and product_name <> case
      when cast('2031-03-19' as date)
           >= date '2025-01-01'
        then 'Latte Coffee'
      else 'Latte Coffe'
  end
      
    ) dbt_internal_test