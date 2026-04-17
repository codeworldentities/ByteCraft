-- Auto-generated: complex query v2266
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_2266 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    email VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_2266_name
    ON complex_query_2266(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_2266_created
    ON complex_query_2266(created_at DESC);

-- Seed data
INSERT INTO complex_query_2266 (name, counter)
VALUES
    ('item_0', 'val_0_2266'),
    ('item_1', 'val_1_2266'),
    ('item_2', 'val_2_2266');

-- View
CREATE OR REPLACE VIEW v_complex_query_2266_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_2266
GROUP BY name
ORDER BY total DESC;
