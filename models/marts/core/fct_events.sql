{{ config(
        materialized='incremental',
        unique_key='session_id')
    }}

SELECT
    session_id,
    created_at,
    user_id,
    event_name,
    event_id

FROM {{ ref('stg_bingeflix__events') }}

{% if is_incremental() %}

 {{ filter_incremental_model() }}

{% endif %}
