{% macro fecth_latest_data(updated_date, no_of_days = 10 ) %}

where {{ updated_date }} >= dateadd('d',-{{no_of_days}},current_timestamp())

{% endmacro %}