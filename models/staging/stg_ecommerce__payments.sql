with source as (
    select * from {{ source('ecommerce_raw', 'raw_payments') }}
),

renamed as (
    select
        id as payment_id,
        order_id,
        payment_method,
        amount as payment_amount_usd,
        status as payment_status,
        ingested_at as created_at
    from source
)

select * from renamed