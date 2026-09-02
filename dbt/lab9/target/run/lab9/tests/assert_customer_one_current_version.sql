select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- SCD Type 2: ลูกค้าหนึ่งคนต้องมีเวอร์ชันปัจจุบันเพียงหนึ่งเดียว
select
    customer_code,
    count(*) as current_versions
from "lab9"."dbt_marts"."dim_customer"
where is_current
group by customer_code
having count(*) <> 1
      
    ) dbt_internal_test