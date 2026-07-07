{{
    config(
        materialized='incremental',
        unique_key='order_id'
    )
}}

with src_orders as (
    -- Me-refer ke model staging (view)
    select * from {{ ref('stg_ecommerce__orders') }}
)

select
    order_id,
    customer_id,
    order_placed_at,
    order_status,
    order_amount_usd
from src_orders

-- Jantung dari Incremental Model:
{% if is_incremental() %}
  -- Query ini HANYA akan dieksekusi pada run kedua dan seterusnya.
  -- dbt hanya mengambil data yang tanggalnya lebih baru dari data terakhir di tabel ini.
  where order_placed_at >= (select max(order_placed_at) from {{ this }})
{% endif %}