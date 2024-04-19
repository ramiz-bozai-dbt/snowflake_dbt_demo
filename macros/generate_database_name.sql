{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_schema = target.schema -%}
    
    {%- if target.name == 'prod' and custom_database_name is not none -%}

        {{ custom_database_name | trim }}      

    {%- elif target.name == 'dev' -%}

        {{ default_database}}        
    
    {%- else -%}

        {{ default_database }}

    {%- endif -%}

{%- endmacro %}