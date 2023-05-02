{% macro yusuf_raw_query(destination_table) %}

  {% set query %}
    select 1 as {{destination_table}}
  {% endset %}

  {% do run_query(query) %}

{% endmacro %}