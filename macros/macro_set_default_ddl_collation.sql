{% macro set_snowflake_ddl_collation(db_name, collation_type) %}

    {% set query %}
        alter database {{db_name}} set default_ddl_collation = '{{collation_type}}'
    {% endset %}

    {% do run_query(query) %}    

{% endmacro %}