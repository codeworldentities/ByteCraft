-- Auto-generated: stored procedure v3370
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_3370 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3370_name
    ON stored_procedure_3370(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_3370_created
    ON stored_procedure_3370(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_3370 (name, status)
VALUES
    ('item_0', 'val_0_3370'),
    ('item_1', 'val_1_3370'),
    ('item_2', 'val_2_3370'),
    ('item_3', 'val_3_3370'),
    ('item_4', 'val_4_3370'),
    ('item_5', 'val_5_3370'),
    ('item_6', 'val_6_3370'),
    ('item_7', 'val_7_3370'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_3370_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_3370
GROUP BY name
ORDER BY total DESC;
