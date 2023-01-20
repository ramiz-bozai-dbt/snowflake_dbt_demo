{% macro generate_schema_name_for_env(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    
    {%- if target.name == 'prod' and custom_schema_name is not none -%}

        {{ custom_schema_name | trim }}

    {%- elif target.name == 'sl' -%}

        {{ custom_schema_name | trim }}        

    {%- elif target.name == 'dev' -%}

        {{ default_schema}}        
    
    {%- elif target.name == 'slim_ci' -%}

        {{ 'slim_ci_temp' }}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}