-- Staging model for products
select
    product_name,
    product_type,
    recipe
from {{ ref('seed_products')}}
