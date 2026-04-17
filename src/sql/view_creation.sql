-- Auto-generated: view creation v5940
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_5940 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_5940_name
    ON view_creation_5940(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_5940_created
    ON view_creation_5940(created_at DESC);

-- Seed data
INSERT INTO view_creation_5940 (name, score)
VALUES
    ('item_0', 'val_0_5940'),
    ('item_1', 'val_1_5940'),
    ('item_2', 'val_2_5940');

-- View
CREATE OR REPLACE VIEW v_view_creation_5940_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_5940
GROUP BY name
ORDER BY total DESC;
