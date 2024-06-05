
--This is my very first model.

select
    *,
    --
    --Let's calculate the completion rate.
    completions / attempts as completion_pct,
    case
        when age between 20 and 23 then '20-23'
        when age between 24 and 28 then '24-28'
        when age between 29 and 40 then '29-40'
        when age >= 41 then '40+'
    end
        as age_bucket,
    case
        when year(season_year) > 2024 then 'Rookie'
        else 'Seasoned Veteran'
    end
        as vintage

from {{ ref('stg_passing_stats') }}
where position = 'QB'



