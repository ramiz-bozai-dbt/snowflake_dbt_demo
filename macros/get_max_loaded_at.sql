{% macro get_max_loaded_at(raw_table_name) %}

{% if execute %}

  {% set query %}
    select max(loaded_at) as max_loaded_at
    from {{ raw_table_name }}
  {% endset %}

  {% do log("Running query: " ~ query, info=True) %}
  {% set result = run_query(query) %}

  {% set max_timestamp = result.columns[0]['max_loaded_at'] %}

  {% do log("Max timestamp: " ~ max_timestamp, info=True) %}

    {# Save the value as a variable #}
  {% do return({'max_timestamp': max_timestamp}) %}
  
  {{ print("This is the stamp" ~ max_timestamp) }}

  {% set max_timestamp = result.columns[0]['max_loaded_at'] %}

{% endif %}

select 1 -- dummy SQL for parsing stage

{% endmacro %}