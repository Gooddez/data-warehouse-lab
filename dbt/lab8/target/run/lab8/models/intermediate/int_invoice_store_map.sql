
  create view "lab8"."dbt_intermediate"."int_invoice_store_map__dbt_tmp"
    
    
  as (
    with generated_stores as (
    select
        store_code,
        row_number() over (order by store_code) as store_num,
        count(*) over () as store_count
    from "lab8"."dbt_marts"."dim_store"
    where is_generated
),

invoices as (
    select distinct invoice_number
    from "lab8"."dbt_staging"."stg_coffee_sales"
)

select
    i.invoice_number,
    g.store_code as target_store_code
from invoices i
join generated_stores g
  on g.store_num = (
      (hashtext(i.invoice_number)::bigint & 2147483647)
      % g.store_count
  ) + 1
  );