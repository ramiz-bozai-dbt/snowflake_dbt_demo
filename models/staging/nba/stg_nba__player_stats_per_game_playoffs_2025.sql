with 

source as (

    select * from {{ source('nba', 'player_stats_per_game_playoffs_2025') }}

),

renamed as (

    select
        md5(player||pos||age||tm) as id,
        player as player_name,
        pos as position,
        age,
        tm as team,
        g as games_played,
        gs as games_started,
        mp as minutes_played,
        fg as field_goals_made,
        fga as field_goals_attempted,
        fgpct as field_goal_pct,
        threep as three_pointers_made,
        threepa as three_pointers_attempted,
        threep_pct as three_point_pct,
        twop as two_pointers_made,
        twopa as two_pointers_attempted,
        twop_pct as two_point_pct,
        effec_fg_pct as effective_field_goal_pct,
        ft as free_throws_made,
        fta as free_throws_attempted,
        ft_pct as free_throw_pct,
        orb as offensive_rebounds,
        drb as defensive_rebounds,
        trb as total_rebounds,
        ast as assists,
        stl as steals,
        blk as blocks,
        tov as turnovers,
        pf as personal_fouls,
        pts as points,
        loaded_at

    from source

)

select * from renamed
