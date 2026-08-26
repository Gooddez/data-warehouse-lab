
    
    

with child as (
    select staff_key as from_field
    from "coffee_dw_snowflake"."dbt_marts"."fct_sales"
    where staff_key is not null
),

parent as (
    select staff_key as to_field
    from "coffee_dw_snowflake"."dbt_marts"."dim_staff"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


