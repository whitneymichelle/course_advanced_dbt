{% macro rolling_average_periods(column_name, partition_by, max_time = 2, order_by='created_at') %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ max_time }} PRECEDING AND CURRENT ROW
            ) AS avg_periods_{{ column_name }}
{% endmacro %}
