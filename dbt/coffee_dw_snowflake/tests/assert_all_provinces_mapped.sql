select s.*
from {{ ref('stg_coffee_sales') }} s
left join {{ ref('dim_province') }} p
  on s.province = p.province_name
where p.province_key is null