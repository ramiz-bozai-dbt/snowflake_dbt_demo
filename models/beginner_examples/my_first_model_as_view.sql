{{
    config(
        materialized='view'
    )
}}

--This is my very first model.

select
    *
    --Let's calculate the completion rate.

from {{ ref('stg_passing_stats') }}
