-- Auto-generated: views — views v9915
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_9915 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_9915_name
    ON views_—_views_9915(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_9915_created
    ON views_—_views_9915(created_at DESC);

-- Seed data
INSERT INTO views_—_views_9915 (name, description)
VALUES
    ('item_0', 'val_0_9915'),
    ('item_1', 'val_1_9915'),
    ('item_2', 'val_2_9915'),
    ('item_3', 'val_3_9915'),
    ('item_4', 'val_4_9915');

-- View
CREATE OR REPLACE VIEW v_views_—_views_9915_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_9915
GROUP BY name
ORDER BY total DESC;
