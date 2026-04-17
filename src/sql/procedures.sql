-- Auto-generated: procedures — procedures v2704
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_2704 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2704_name
    ON procedures_—_procedures_2704(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_2704_created
    ON procedures_—_procedures_2704(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_2704 (name, description)
VALUES
    ('item_0', 'val_0_2704'),
    ('item_1', 'val_1_2704'),
    ('item_2', 'val_2_2704'),
    ('item_3', 'val_3_2704'),
    ('item_4', 'val_4_2704'),
    ('item_5', 'val_5_2704');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_2704_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_2704
GROUP BY name
ORDER BY total DESC;
