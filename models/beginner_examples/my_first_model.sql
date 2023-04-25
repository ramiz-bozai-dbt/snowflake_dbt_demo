--This is my very first model.

select
    *,
    completions/attempts as completion_pct, --Let's calculate the completion rate.
    case
        when age between 20 and 23 then '20-23'
        when age between 24 and 28 then '24-28'
        when age between 29 and 40 then '29-40'
        when age >=41 then '40+'
        end
    as age_bucket

from {{ ref('stg_passing_stats') }}

