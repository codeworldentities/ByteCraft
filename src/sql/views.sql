-- Auto-generated: views — views v2920
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_2920 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2920_name
    ON views_—_views_2920(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_2920_created
    ON views_—_views_2920(created_at DESC);

-- Seed data
INSERT INTO views_—_views_2920 (name, description)
VALUES
    ('item_0', 'val_0_2920'),
    ('item_1', 'val_1_2920'),
    ('item_2', 'val_2_2920'),
    ('item_3', 'val_3_2920'),
    ('item_4', 'val_4_2920'),
    ('item_5', 'val_5_2920'),
    ('item_6', 'val_6_2920'),
    ('item_7', 'val_7_2920'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_2920_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_2920
GROUP BY name
ORDER BY total DESC;
