

--This transformed model will only load newly added rows.

with raw_account_usage as (
    select * from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_account_usage
),

final as (
    select
        query_id,
        query_text,
        end_time,
        credits_used_cloud_services

    from 
        raw_account_usage

    

    -- this filter will only be applied on an incremental run
    where end_time > (select max(end_time) from ramiz_bozai_sandbox_dev.dbt_rbozai.incremental_sample)

       
)

select *
from final