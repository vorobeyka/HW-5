CREATE OR REPLACE FUNCTION update_note_mark_deleted(note_id uuid) RETURNS VOID
AS $$
    UPDATE notes
    SET is_deleted = TRUE, modified_at = CURRENT_TIMESTAMP
    WHERE id = note_id;
$$ LANGUAGE SQL;