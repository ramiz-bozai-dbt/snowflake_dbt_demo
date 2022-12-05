with source as (

    select * from {{ source('mls', 'shooting_stats') }}

),

renamed as (

    select
        player,
        squad,
        age,
        goals,
        shots,
        free_kicks

    from source

)

select * from renamed