with source as (
    select * from {{ source('ecommerce_raw', 'raw_orders') }}
),

renamed as (
    select
        id as order_id,
        user_id as customer_id,
        order_date::date as order_placed_at,
        status as order_status,
        amount as order_amount_usd
    from source
)

select * from renamed