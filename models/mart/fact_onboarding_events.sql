select
    e.event_id,
    e.client_id,
    c.client_name,
    c.onboarding_status,
    e.event_type,
    e.event_status,
    e.payload_schema,
    e.created_at
from {{ ref('stg_integration_events') }} e
left join {{ ref('stg_clients') }} c
    on e.client_id = c.client_id