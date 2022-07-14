{{ config(materialized='incremental') }}

--This transformed model will only load newly added rows.

with raw_account_usage as (
    select * from {{ ref('stg_account_usage') }}
),

final as (
    select
        query_id,
        query_text,
        end_time,
        credits_used_cloud_services

    from 
        raw_account_usage

    {% if is_incremental() %}

    -- this filter will only be applied on an incremental run
    where end_time > (select max(end_time) from {{ this }})

    {% endif %}   
)

select *
from final

