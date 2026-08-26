{% snapshot dim_customer_snapshot %}

{{
  config(
    target_database=target.database,
    target_schema='dbt_snapshots',
    unique_key='customer_code',
    strategy='timestamp',
    updated_at='state_start_date'
  )
}}

with one_row_per_day as (
    select
        *,
        row_number() over (
            partition by customer_code, sale_date
            order by sale_id desc
        ) as row_num
    from {{ ref('stg_coffee_sales') }}
),

ordered as (
    select
        customer_code,
        customer_name,
        gender,
        birth_year,
        province,
        sale_date,
        lag(province) over (
            partition by customer_code
            order by sale_date
        ) as previous_province
    from one_row_per_day
    where row_num = 1
),

change_events as (
    select
        customer_code,
        customer_name,
        gender,
        birth_year,
        province,
        sale_date as state_start_date
    from ordered
    where previous_province is null
       or province is distinct from previous_province
),

current_state as (
    select
        *,
        row_number() over (
            partition by customer_code
            order by state_start_date desc
        ) as state_rank
    from change_events
)

select
    customer_code,
    customer_name,
    gender,
    birth_year,
    province,
    state_start_date
from current_state
where state_rank = 1

{% endsnapshot %}