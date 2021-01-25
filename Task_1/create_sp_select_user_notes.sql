CREATE OR REPLACE FUNCTION select_user_notes(INTEGER) RETURNS TABLE(
    id UUID,
    header VARCHAR(128),
    body VARCHAR(1024),
    is_deleted BOOLEAN,
    modified_at TIMESTAMP WITH TIME ZONE,
    user_id INTEGER
) AS $$
    SELECT * FROM notes
    WHERE user_id = $1 and is_deleted = FALSE;
$$ LANGUAGE SQL;