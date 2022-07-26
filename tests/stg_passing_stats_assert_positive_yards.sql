{{
    config(
        severity='warn'
    )
}}

with passing_stats as ( select * from {{ ref('stg_passing_stats') }} )

select *
from passing_stats 
where yards < 0