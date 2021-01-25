CREATE OR REPLACE FUNCTION select_note(note_id UUID) RETURNS TABLE(
    id UUID,
    header VARCHAR(128),
    body VARCHAR(1024),
    is_deleted BOOLEAN,
    modified_at TIMESTAMP WITH TIME ZONE,
    user_id INTEGER,
    first_name VARCHAR(128),
    last_name VARCHAR(128)
) AS $$
    SELECT n.*, u.first_name, u.last_name FROM notes n
    LEFT JOIN users u ON u.id = n.user_id
    WHERE n.id = note_id;
$$ LANGUAGE SQL;