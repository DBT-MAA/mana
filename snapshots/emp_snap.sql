{% snapshot employee_snapshot %}

{{
    config(
      target_database='DBT_DB1',
      target_schema='DEV',
      unique_key='employee_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from DEV.STG_EMP01



{% endsnapshot %}