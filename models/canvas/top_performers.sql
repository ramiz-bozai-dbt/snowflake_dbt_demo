WITH stg_nba__player_stats_per_game_playoffs_2025 AS (
  SELECT
    *
  FROM {{ ref('stg_nba__player_stats_per_game_playoffs_2025') }}
), filter_1 AS (
  SELECT
    *
  FROM stg_nba__player_stats_per_game_playoffs_2025
  WHERE
    POINTS > 15
), top_performers AS (
  SELECT
    *
  FROM filter_1
)
SELECT
  *
FROM top_performers