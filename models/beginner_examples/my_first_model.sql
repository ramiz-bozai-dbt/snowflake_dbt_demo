--This is my very first model.

select
    *


from {{ ref('stg_passing_stats') }}
