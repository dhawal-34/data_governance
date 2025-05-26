{{ config(materialized='table') }}

select *
from {{ ref('sales_data') }}
where quantity > 5
