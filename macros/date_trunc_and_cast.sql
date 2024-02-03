{% macro date_trunc_and_cast(date_part, date_or_time) %}
    CAST(DATE_TRUNC({{ date_part }}, {{ date_or_time }}) AS DATE) AS date_{{ date_part }}
{% endmacro %}
