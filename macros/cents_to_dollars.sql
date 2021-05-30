{% macro cents_to_dollars(amount_column, decimal_values=2 ) %}

round(( {{ amount_column }} /100), {{ decimal_values }} )

{% endmacro %}