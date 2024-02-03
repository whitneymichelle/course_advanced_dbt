WITH

date_spine AS (

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2019-01-01' as date)",
    end_date="cast('2030-01-01' as date)"
   )
}}
),

final AS (
    SELECT
        date_day AS calendar_date,
        {{ date_trunc_and_cast('week', 'date_day') }},
        {{ date_trunc_and_cast('month', 'date_day') }},
        {{ date_trunc_and_cast('quarter', 'date_day') }},
        {{ date_trunc_and_cast('year', 'date_day') }},
        DAY(date_day) AS day_of_month,
        YEAR(date_day) AS year_num,
        QUARTER(date_day) AS quarter_num,
        MONTH(date_day) AS month_num
    FROM
        date_spine
)

SELECT * FROM final
