select *
from {{ ref('dim_product') }}
where product_code = 'P002'
  and product_name <> case
      when cast('{{ var("load_as_of", "2031-03-19") }}' as date)
           >= date '2025-01-01'
        then 'Latte Coffee'
      else 'Latte Coffe'
  end