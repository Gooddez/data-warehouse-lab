select *
from "coffee_dw_scd"."dbt_marts"."dim_product"
where product_code = 'P004'
  and not (
      (
        cast('2031-03-19' as date)
          < date '2027-02-11'
        and current_category = 'Bakery'
        and previous_category is null
      )
      or
      (
        cast('2031-03-19' as date)
          >= date '2027-02-11'
        and current_category = 'Dessert'
        and previous_category = 'Bakery'
      )
  )