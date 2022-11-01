with source as (

    select * from nfl_data.public.passing_stats --We are using jinja here.

),

renamed as (

    select
        to_date(year, 'YYYY') as season_year,
        player as player_name,
        age,
        pos as position,
        cmp as completions,
        att as attempts,
        yds as yards,
        td

    from source

)
--my comment
select * from renamed