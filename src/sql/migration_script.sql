-- Auto-generated: migration script v563
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_563 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_563_name
    ON migration_script_563(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_563_created
    ON migration_script_563(created_at DESC);

-- Seed data
INSERT INTO migration_script_563 (name, priority)
VALUES
    ('item_0', 'val_0_563'),
    ('item_1', 'val_1_563'),
    ('item_2', 'val_2_563'),
    ('item_3', 'val_3_563'),
    ('item_4', 'val_4_563'),
    ('item_5', 'val_5_563');

-- View
CREATE OR REPLACE VIEW v_migration_script_563_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_563
GROUP BY name
ORDER BY total DESC;
