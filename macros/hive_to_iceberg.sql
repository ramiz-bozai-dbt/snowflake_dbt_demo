{% macro hive_to_iceberg(source_table) %}

{% set query %}
    SELECT column_name, data_type
    FROM   information_schema.columns
    WHERE table_name = '{{ source_table }}' 
{% endset %}

{% set columns = run_query(query) %}
{% set column_defs = [] %}

{% for column in columns %}
  {% if column['data_type']== 'timestamp(3)' %}
    {% set column_def = 'cast ' ~ column['column_name'] ~ ' as timestamp(6)) as ' ~ column['column_name'] %}
  {% else %}
    {% set column_def = column['column_name'] %}
  {% endif %}
  {% set column_defs = column_defs + [column_def]%}
{% endfor %}

{% set columns_list = column_defs | join(', ') %}

{% do log('Column list for table "' ~ source_table ~ '": ' ~ columns_list) %}

{% set output = {
    'column_list': columns_list
} %}


{{ output }}

{% endmacro %}