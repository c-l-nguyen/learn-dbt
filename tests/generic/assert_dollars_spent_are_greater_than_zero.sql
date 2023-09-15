{% test dollars_spent_are_greater_than_zero( model, column_name ) %}

select 

    {{ column_name }} as average_amount

from {{ model }}
where {{ column_name }} < 0

{% endtest %}