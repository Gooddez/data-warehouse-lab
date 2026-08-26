select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        metric_key as value_field,
        count(*) as n_records

    from "coffee_dw"."dbt"."metric_m001_total_revenue"
    group by metric_key

)

select *
from all_values
where value_field not in (
    'M001'
)



      
    ) dbt_internal_test