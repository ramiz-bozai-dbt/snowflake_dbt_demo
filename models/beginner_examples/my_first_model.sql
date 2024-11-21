

--This is my very first model.

select
    *,
    
    case
        when team in ('KC', 'BUF', 'SF') then 'Contender'
        else 'No'
    end
        as team_category



from {{ ref('stg_passing_stats') }}
