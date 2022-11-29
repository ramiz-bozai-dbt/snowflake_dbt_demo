--This is my very first model.

select
    *,
    completions/attempts as completion_pct,
    1 as sample_col,
    1 as sample_cols  --Let's calculate the completion rate.

from {{ ref('stg_passing_stats') }}
--
--
--
--
--
--
--