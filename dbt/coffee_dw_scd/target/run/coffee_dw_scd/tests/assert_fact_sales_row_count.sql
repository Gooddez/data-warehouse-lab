select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with row_counts as (
    select
        (select count(*) from "coffee_dw_scd"."dbt_staging"."stg_coffee_sales")
            as staging_rows,
        (select count(*) from "coffee_dw_scd"."dbt_marts"."fct_sales")
            as fact_rows
)

select *
from row_counts
where staging_rows <> fact_rows
      
    ) dbt_internal_test