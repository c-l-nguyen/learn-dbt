-- All the order dates in the stg_orders table should come from 2018
select
    order_date
from {{ ref('stg_orders') }}
where extract(YEAR from order_date) != 2018