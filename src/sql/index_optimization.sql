-- Auto-generated: index optimization v965
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_965 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_965_name
    ON index_optimization_965(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_965_created
    ON index_optimization_965(created_at DESC);

-- Seed data
INSERT INTO index_optimization_965 (name, metadata)
VALUES
    ('item_0', 'val_0_965'),
    ('item_1', 'val_1_965'),
    ('item_2', 'val_2_965'),
    ('item_3', 'val_3_965'),
    ('item_4', 'val_4_965'),
    ('item_5', 'val_5_965'),
    ('item_6', 'val_6_965'),
    ('item_7', 'val_7_965'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_965_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_965
GROUP BY name
ORDER BY total DESC;
