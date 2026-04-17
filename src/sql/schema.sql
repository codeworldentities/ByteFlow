-- Auto-generated: schema — database schema definition v2512
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2512 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2512_name
    ON schema_—_database_schema_definition_2512(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2512_created
    ON schema_—_database_schema_definition_2512(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2512 (name, email)
VALUES
    ('item_0', 'val_0_2512'),
    ('item_1', 'val_1_2512'),
    ('item_2', 'val_2_2512'),
    ('item_3', 'val_3_2512'),
    ('item_4', 'val_4_2512'),
    ('item_5', 'val_5_2512'),
    ('item_6', 'val_6_2512'),
    ('item_7', 'val_7_2512'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2512_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2512
GROUP BY name
ORDER BY total DESC;
