with orders as (
    select * from {{ ref('stg_ecommerce__orders') }}
),

aggregated as (
    select
        customer_id,
        min(order_placed_at) as first_order_date,
        max(order_placed_at) as most_recent_order_date,
        count(order_id) as total_orders,
        sum(order_amount_usd) as lifetime_value_usd
    from orders
    where order_status = 'completed' -- Filter logika bisnis
    group by 1
)

select * from aggregated