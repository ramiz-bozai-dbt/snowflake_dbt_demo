{{
    config(
        materialized='table'
    )
}}

select *
from nfl_data.public.passing_stats
where loaded_at >= '{{ get_max() }}'
--