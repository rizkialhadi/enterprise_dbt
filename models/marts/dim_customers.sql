with customers as (
    select * from {{ ref('stg_ecommerce__customers') }}
),

customer_orders as (
    select * from {{ ref('int_customer_orders_agged') }}
),

final as (
    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customers.customer_email,
        customers.signup_at,
        coalesce(customer_orders.total_orders, 0) as total_orders,
        coalesce(customer_orders.lifetime_value_usd, 0) as lifetime_value,
        customer_orders.first_order_date,
        customer_orders.most_recent_order_date
    from customers
    left join customer_orders using (customer_id)
)

select * from final