--This is my very first model.

select
    *,
    completions/attempts as completion_pct,
    3 as test_col,
    4 as test_cols --Let's calculate the completion rate.
--
from {{ ref('stg_passing_stats') }}

