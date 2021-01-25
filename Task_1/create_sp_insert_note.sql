CREATE OR REPLACE FUNCTION insert_note(
    note_id UUID,
    note_header VARCHAR(128),
    note_body VARCHAR(1024),
    note_user_id INTEGER
) RETURNS VOID AS $$
    INSERT INTO notes(id, header, body, is_deleted, user_id)
    VALUES(note_id, note_header, note_body, FALSE, note_user_id);
$$ LANGUAGE SQL;