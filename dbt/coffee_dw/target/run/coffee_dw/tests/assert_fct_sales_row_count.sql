select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      with staging as (
    select count(*) as row_count
    from "coffee_dw"."dbt"."stg_coffee_sales"
),
fact as (
    select count(*) as row_count
    from "coffee_dw"."dbt"."fct_sales"
)
select staging.row_count as staging_rows,
       fact.row_count as fact_rows
from staging cross join fact
where staging.row_count <> fact.row_count
      
    ) dbt_internal_test