--This is my very first model.

select
    *,
    2 as another_columns
        


from {{ ref('stg_passing_stats') }}
