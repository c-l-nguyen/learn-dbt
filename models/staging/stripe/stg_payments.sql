select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents so convert to dollars
    amount / 100 as amount,
    created as created_at
from dbt-training-314601.dbt_tutorial.stripe_payment
