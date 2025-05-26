{{ config(materialized='table') }}

select *, case when Gender = 'Male' then 'M' else 'F' end as Gender_new
from {{ ref('stg_orders') }} 