--This is my very first model.

select
    player_name as plyr_name



from {{ ref('stg_passing_stats') }}
