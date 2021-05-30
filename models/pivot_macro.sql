-- even easier to do than jinja exercise
select
  order_id,
  {{ dbt_utils.pivot(
      'status',
      dbt_utils.get_column_values(ref('stg_orders'), 'status')
  ) }}
from {{ ref('stg_orders') }}
group by order_id