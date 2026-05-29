select
    client_id,
    client_name,
    onboarding_status,
    created_at
from {{ source('raw', 'clients') }}