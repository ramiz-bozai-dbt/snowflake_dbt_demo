--This is my very first model.

select
    *,
    completions/attempts as completion_pct --Let's calculate the completion rate.

from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_passing_stats
--
--
--