--This is my very first model.

select
    *,
    1 as test,
    div0(goals, shots) as goals_per_shot --Let's calculate the completion rate.

from {{ ref('stg_shooting_stats') }}
