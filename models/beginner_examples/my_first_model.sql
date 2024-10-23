

--This is my very first model.

select
    *,
    1 as test,
    2 as another_test

from {{ ref('stg_passing_stats') }}
