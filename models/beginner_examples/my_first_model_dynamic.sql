{% set var = env_var('DBT_TEAM_ENV_VARIABLE') %}

{{
    config(
        materialized='table',
        alias=var~"__my_first_model"
    )
}}

{% if var == 'PIT' %}
    {{ build_pit_first_model(var) }}
{% else %}
        {{ build_kan_first_model(var) }}
{% endif %}