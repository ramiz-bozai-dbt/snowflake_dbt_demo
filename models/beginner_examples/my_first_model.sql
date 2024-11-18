--This is my very first model.

select
    *,
    1 as test


from {{ ref('stg_passing_stats') }}
