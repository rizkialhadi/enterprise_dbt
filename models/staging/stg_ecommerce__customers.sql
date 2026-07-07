with source as (
    select *
    from {{ source('ecommerce_raw', 'raw_customers') }}
),
renamed as (
    select id as customer_id,
        first_name,
        last_name,
        -- Menggunakan custom macro untuk menyamarkan email di Dev
        {{ mask_email('email') }} as customer_email,
        created_at::timestamp as signup_at
    from source
)
select *
from renamed