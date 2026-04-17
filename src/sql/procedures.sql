-- Auto-generated: procedures — procedures v8687
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_8687 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8687_name
    ON procedures_—_procedures_8687(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8687_created
    ON procedures_—_procedures_8687(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_8687 (name, email)
VALUES
    ('item_0', 'val_0_8687'),
    ('item_1', 'val_1_8687'),
    ('item_2', 'val_2_8687'),
    ('item_3', 'val_3_8687'),
    ('item_4', 'val_4_8687'),
    ('item_5', 'val_5_8687'),
    ('item_6', 'val_6_8687'),
    ('item_7', 'val_7_8687'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_8687_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_8687
GROUP BY name
ORDER BY total DESC;
