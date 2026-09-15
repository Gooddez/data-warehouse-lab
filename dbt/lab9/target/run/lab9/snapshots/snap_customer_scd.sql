
      update "lab9"."snapshots"."snap_customer_scd"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "snap_customer_scd__dbt_tmp023606924437" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "lab9"."snapshots"."snap_customer_scd".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and "lab9"."snapshots"."snap_customer_scd".dbt_valid_to is null;
      


    insert into "lab9"."snapshots"."snap_customer_scd" ("customer_code", "customer_name", "gender", "birth_year", "source_change_date", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."customer_code",DBT_INTERNAL_SOURCE."customer_name",DBT_INTERNAL_SOURCE."gender",DBT_INTERNAL_SOURCE."birth_year",DBT_INTERNAL_SOURCE."source_change_date",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "snap_customer_scd__dbt_tmp023606924437" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  