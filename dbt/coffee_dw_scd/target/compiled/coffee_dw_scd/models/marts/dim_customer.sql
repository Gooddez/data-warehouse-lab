select
    dbt_scd_id as customer_key,
    customer_code,
    customer_name,
    gender,
    birth_year,
    province,
    dbt_valid_from::date as start_date,
    coalesce(
        dbt_valid_to::date,
        '9999-12-31'::date
    ) as end_date,
    (dbt_valid_to is null) as is_current
from "coffee_dw_scd"."dbt_snapshots"."dim_customer_snapshot"