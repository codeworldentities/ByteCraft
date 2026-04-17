-- Auto-generated: stored procedure v8077
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_8077 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8077_name
    ON stored_procedure_8077(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8077_created
    ON stored_procedure_8077(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_8077 (name, counter)
VALUES
    ('item_0', 'val_0_8077'),
    ('item_1', 'val_1_8077'),
    ('item_2', 'val_2_8077'),
    ('item_3', 'val_3_8077'),
    ('item_4', 'val_4_8077'),
    ('item_5', 'val_5_8077'),
    ('item_6', 'val_6_8077'),
    ('item_7', 'val_7_8077'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_8077_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_8077
GROUP BY name
ORDER BY total DESC;
