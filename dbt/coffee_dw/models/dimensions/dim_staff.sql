select distinct
    md5(coalesce(staff_code, '__NULL__')) as staff_key,
    staff_code,
    staff_name,
    position
from {{ ref('stg_coffee_sales') }}