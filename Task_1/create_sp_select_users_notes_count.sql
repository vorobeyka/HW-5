CREATE OR REPLACE FUNCTION select_users_notes_count() RETURNS TABLE(
    id INTEGER,
    first_name VARCHAR(128),
    last_name VARCHAR(128),
    notes_count BIGINT
) AS $$
    SELECT u.*, COUNT(n.is_deleted) FROM users u
    LEFT JOIN notes n ON u.id = n.user_id
    WHERE n.is_deleted = FALSE
    GROUP BY u.id;
$$ LANGUAGE SQL;