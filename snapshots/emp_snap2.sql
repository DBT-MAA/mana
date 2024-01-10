{% snapshot employee_snapshot2 %}

{{
    config(
      target_database='DBT_DB1',
      target_schema='DEV',
      unique_key='employee_id',

      strategy='check',
      check_cols=['employee_name','State'],
    )
}}

select * from DEV.STG_EMP02



{% endsnapshot %}