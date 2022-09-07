--This is my very first model.

select
    *,
    completions/attempts as completion_pct,
    1/1 as easy_math --Let's calculate the completion rate.

from {{ ref('stg_passing_stats') }}
--
--