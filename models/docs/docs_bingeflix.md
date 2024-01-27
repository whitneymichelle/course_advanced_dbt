# Bingeflix Docs
This file contains doumentation for Bingeflix data sources.

## Events
This section contains documentation from the Bingeflix `fct_events` table.

{% docs fct_events %}
**Table Description**
This table contains information about the behavioral events of users while they interact with the Bingeflix platform. It includes events such as logins, logouts, videos watched, and CTA/button clicks.
{% enddocs %}

{% docs event_id %}
The unique identifier of the event.
{% enddocs %}

{% docs event_name %}
The name of the event.
{% enddocs %}

{% docs bingeflix_column_user_id %}
The unique identifier of the Bingeflix user. 
{% enddocs %}

{% docs session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}

{% docs created_at %}
Timestamp in utc record created at
{% enddocs %}
