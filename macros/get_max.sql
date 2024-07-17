{% macro get_max() %}
    {% set res = run_query('select max(loaded_at) as v from nfl_data.public.passing_stats') %}
    
    {% if execute %}
        {% set v = res[0][0] %}
    {% else %}
        {% set v = 0 %}
    {% endif %}
    
    {{ return(v) }}

{% endmacro %}