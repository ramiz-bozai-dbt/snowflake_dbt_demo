{% macro is_it_monday() %}
  {% set today = modules.datetime.datetime.now().strftime('%A') %}
  
  {% if today == 'Monday' %}
    {{ return(True) }}
  {% else %}
    {{ return(False) }}
  {% endif %}

{% endmacro %}