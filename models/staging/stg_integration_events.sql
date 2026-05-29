select
    event_id,
    client_id,
    event_type,
    event_status,
    payload_schema,
    created_at
from {{ source('raw','integration_events') }}