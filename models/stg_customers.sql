with customers as (
    
    select 
        id as customer_id,
        first_name,
        last_name

    from dbt-training-314601.dbt_tutorial.customers
)

select * from customers