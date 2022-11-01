--This is my very first model, but I didn't follow best practices using the ref function.

select
    *,
    completions/attempts as completion_pct --Let's calculate the completion rate.

from ramiz_bozai_sandbox_dev.dbt_rbozai.stg_passing_stats --Not portable!
--Add a comment