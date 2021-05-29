{%- set order_status = ['placed', 'shipped', 'returned', 'completed', 'return_pending'] -%}

with orders as (
    select * from {{ ref('stg_orders') }}
),
pivoted as (
    select
        order_id,
        {% for status in order_status -%}
        sum(case when status = '{{ status }}' then 1 else 0 end) as {{ status }}
        {%- if not loop.last -%}
            ,
        {%- endif %}
        {% endfor -%}

    from orders
    group by order_id
)
select * from pivoted

