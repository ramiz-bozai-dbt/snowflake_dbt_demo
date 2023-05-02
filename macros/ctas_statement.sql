{% macro ctas_statement(source_table, destination_table,  columns, format='ORC', type='iceberg', location='') %}

CREATE TABLE {{ destination_table }}
WITH
  (format = '{{ format }}', type = '{{ type }}', location='{{ location }}')
AS SELECT {{ columns }}
FROM {{ source_table }};

{% endmacro %}