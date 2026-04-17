-- Auto-generated: view creation v783
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_783 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_783_name
    ON view_creation_783(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_783_created
    ON view_creation_783(created_at DESC);

-- Seed data
INSERT INTO view_creation_783 (name, status)
VALUES
    ('item_0', 'val_0_783'),
    ('item_1', 'val_1_783'),
    ('item_2', 'val_2_783'),
    ('item_3', 'val_3_783'),
    ('item_4', 'val_4_783'),
    ('item_5', 'val_5_783'),
    ('item_6', 'val_6_783'),
    ('item_7', 'val_7_783'),

-- View
CREATE OR REPLACE VIEW v_view_creation_783_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_783
GROUP BY name
ORDER BY total DESC;
