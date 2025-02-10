-- Staging model for metadata about each store stocking MOJU products.
select
    store_id,
    store_name,
    store_type,
    customer_name,
    place_name
from {{ ref('seed_stores')}}
