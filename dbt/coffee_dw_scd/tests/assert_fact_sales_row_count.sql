with row_counts as (
    select
        (select count(*) from {{ ref('stg_coffee_sales') }})
            as staging_rows,
        (select count(*) from {{ ref('fct_sales') }})
            as fact_rows
)

select *
from row_counts
where staging_rows <> fact_rows