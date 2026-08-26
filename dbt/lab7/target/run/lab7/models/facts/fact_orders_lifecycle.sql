
      
  
    

  create  table "lab7"."dbt"."fact_orders_lifecycle"
  
  
    as
  
  (
    

select
    s.order_id,
    od.date_key as order_date_key,
    sd.date_key as shipped_date_key,
    dd.date_key as delivered_date_key,

    case
        when s.shipped_date is not null
            then s.shipped_date - s.order_date
    end as days_to_ship,
    case
        when s.delivered_date is not null
            then s.delivered_date - s.order_date
    end as days_to_deliver,
    case
        when s.shipped_date is not null
            and s.delivered_date is not null
            then s.delivered_date - s.shipped_date
    end as days_ship_to_deliver,

    os.status_key as current_status_key,
    cast('2026-08-26 03:33:10.495355+00:00' as timestamptz) as load_datetime,
    '2d2613ef-f5a4-4892-bd52-35dbe2bb35d5' as batch_id
from "lab7"."dbt"."stg_orders_log" as s
left join "lab7"."dbt"."dim_date" as od
    on s.order_date = od.full_date
left join "lab7"."dbt"."dim_date" as sd
    on s.shipped_date = sd.full_date
left join "lab7"."dbt"."dim_date" as dd
    on s.delivered_date = dd.full_date
join "lab7"."dbt"."dim_order_status" as os
    on s.status = os.status
  );
  
  