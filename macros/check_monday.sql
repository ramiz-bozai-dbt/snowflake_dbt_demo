{% macro check_monday() %}
    
{% if execute %}
  {% set is_monday = is_it_monday() %}
  {% if not is_monday %}
    {{ log("Today is not Monday. Skipping the rest of the job.", info=True) }}
    {% do raise_compiler_error("Halting job because it's not Monday.") %}
  {% endif %}
{% endif %}


{% endmacro %}