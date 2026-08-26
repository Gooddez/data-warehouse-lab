select
    a.customer_code,
    a.start_date,
    a.end_date,
    b.start_date as next_start_date
from {{ ref('dim_customer') }} a
join {{ ref('dim_customer') }} b
  on a.customer_code = b.customer_code
 and a.start_date < b.start_date
where a.end_date > b.start_date