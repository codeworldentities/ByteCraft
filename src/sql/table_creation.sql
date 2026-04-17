-- Auto-generated: table creation v6617
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_6617 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_6617_name
    ON table_creation_6617(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_6617_created
    ON table_creation_6617(created_at DESC);

-- Seed data
INSERT INTO table_creation_6617 (name, status)
VALUES
    ('item_0', 'val_0_6617'),
    ('item_1', 'val_1_6617'),
    ('item_2', 'val_2_6617'),
    ('item_3', 'val_3_6617'),
    ('item_4', 'val_4_6617'),
    ('item_5', 'val_5_6617'),
    ('item_6', 'val_6_6617'),
    ('item_7', 'val_7_6617'),

-- View
CREATE OR REPLACE VIEW v_table_creation_6617_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_6617
GROUP BY name
ORDER BY total DESC;
