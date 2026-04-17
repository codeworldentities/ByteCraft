-- Auto-generated: migration script v3253
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_3253 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    description TEXT,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_3253_name
    ON migration_script_3253(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_3253_created
    ON migration_script_3253(created_at DESC);

-- Seed data
INSERT INTO migration_script_3253 (name, counter)
VALUES
    ('item_0', 'val_0_3253'),
    ('item_1', 'val_1_3253'),
    ('item_2', 'val_2_3253'),
    ('item_3', 'val_3_3253'),
    ('item_4', 'val_4_3253'),
    ('item_5', 'val_5_3253'),
    ('item_6', 'val_6_3253'),
    ('item_7', 'val_7_3253');

-- View
CREATE OR REPLACE VIEW v_migration_script_3253_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_3253
GROUP BY name
ORDER BY total DESC;
