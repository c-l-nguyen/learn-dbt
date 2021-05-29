with orders as (

    select * from {{ ref('stg_orders') }}

),
payments as (

    select * from {{ ref('stg_payments') }}

)
select 
    o.order_id,
    o.customer_id,
    p.amount
from orders as o
left join payments as p on p.order_id = o.order_id 
where p.status = 'success'
