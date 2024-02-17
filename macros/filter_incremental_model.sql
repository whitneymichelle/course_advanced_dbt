{% macro filter_incremental_model(column_name = 'created_at', time_period = 'day', look_back = 3) %}

    where {{ column_name }} > dateadd({{ time_period }}, {{ look_back }}, current_date)

{%- endmacro %}
