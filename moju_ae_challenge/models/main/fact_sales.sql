-- Staging model for weekly sales data from each customer store.
select
    store_id,
    product_name,
    week,
    units,
    revenue
from {{ ref('seed_store_sales')}}
