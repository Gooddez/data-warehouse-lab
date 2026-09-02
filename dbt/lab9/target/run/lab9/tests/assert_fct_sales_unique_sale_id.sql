select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Incremental Load ต้องไม่ทำให้เกิด sale_id ซ้ำหลังโหลด Batch 2
select
    sale_id,
    count(*) as row_count
from "lab9"."dbt_marts"."fct_sales"
group by sale_id
having count(*) > 1
      
    ) dbt_internal_test