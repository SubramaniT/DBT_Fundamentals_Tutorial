{% macro limit_data_in_dev(column_name, cut_off_days=3) %}
{% if target.name=='dev' %}
where {{ column_name }} >= dateadd('day',- {{ cut_off_days }},current_timestamp)
{% endif %}
{% endmacro %}