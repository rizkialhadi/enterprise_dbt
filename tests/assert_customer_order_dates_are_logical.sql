-- Test ini akan gagal jika ada record yang tanggal order pertamanya melampaui tanggal order terakhirnya.
select
    customer_id,
    first_order_date,
    most_recent_order_date
from {{ ref('dim_customers') }}
where first_order_date > most_recent_order_date