--This is my very first model.

select
    *,
    completions/attempts as completion_pct,
    1 as test,
    2 as test_col --Let's calculate the completion rate.
--
from {{ ref('stg_passing_stats') }}

