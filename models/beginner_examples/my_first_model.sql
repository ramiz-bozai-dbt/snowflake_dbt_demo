--This is my very first model.

select
    *,
    completions/attempts as completion_pct --Let's calculate the completion rate.

from {{ ref('stg_passing_stats') }}
--
--