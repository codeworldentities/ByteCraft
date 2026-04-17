-- Auto-generated: schema — database schema definition v3266
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_3266 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    description TEXT,
    email VARCHAR(255),
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_3266_name
    ON schema_—_database_schema_definition_3266(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_3266_created
    ON schema_—_database_schema_definition_3266(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_3266 (name, priority)
VALUES
    ('item_0', 'val_0_3266'),
    ('item_1', 'val_1_3266'),
    ('item_2', 'val_2_3266'),
    ('item_3', 'val_3_3266'),
    ('item_4', 'val_4_3266'),
    ('item_5', 'val_5_3266'),
    ('item_6', 'val_6_3266'),
    ('item_7', 'val_7_3266');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_3266_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_3266
GROUP BY name
ORDER BY total DESC;
