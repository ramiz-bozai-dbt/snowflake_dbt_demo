{% snapshot my_first_snapshot %}

{{
    config(
      target_database='ramiz_bozai_sandbox',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}