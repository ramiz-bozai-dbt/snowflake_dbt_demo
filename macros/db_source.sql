{% macro db_source(source_name, table_name) %}

{% if target.name == 'prod' %} 
{{ source(source_name + '_prod', table_name)}}

{% else %}
{{ source(source_name + '_dev', table_name)}}
{% endif %}

{% endmacro %}