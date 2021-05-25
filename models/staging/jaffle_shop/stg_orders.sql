select
    id as order_id,
    user_id as customer_id,
    order_date,
    status
from dbt-training-314601.dbt_tutorial.orders
