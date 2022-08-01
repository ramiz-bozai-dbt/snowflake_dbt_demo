with source as (

    select * from {{ source('nfl', 'passing_stats') }} --We are using jinja here.

),

renamed as (

    select
        player as player_name,
        age,
        pos as position,
        cmp as completions,
        att as attempts,
        yds as yards,
        td

    from source

)

select * from renamed