-- add users
select insert_user('Andrey', 'Basystyi');
select insert_user('Vasya', 'Pupkin');
select insert_user('Maksim', 'Maksimov');
select insert_user('Gosha', 'Rubchinskyi');
-- end add user

-- add notes
select insert_note('ac68e40a-7741-35d4-85ef-01c755494c74'::UUID, 'Homeworks', 'Programming, programming', 1);
select insert_note('561b8e78-2f08-c916-0de9-9e12c237efc3'::UUID, 'DailyTasks', 'Do something', 3);
select insert_note('4a6f2862-5a39-4aed-6090-67b4e14af890'::UUID, 'Header', 'It just third insert, but i dont know what i need to write)', 3);
select insert_note('f3489232-9dfe-943b-cd5d-0761dc6246e8'::UUID, 'Note', '12 left', 1);
select insert_note('66ba1ea6-1077-200d-1cf0-b616a883d1c2'::UUID, 'OriginalHeader', 'I need to write more original notes:)', 2);
select insert_note('9c9323c4-5a24-b9c0-bbcc-db74bc109760'::UUID, 'ItIsNote', 'Some text for note', 4);
select insert_note('3283c2e1-438b-3a21-303e-ee7dc2c91003'::UUID, 'NewNote', 'More original notes', 2);
select insert_note('a7abc0cb-b4f3-2d66-c591-cf45db686e3b'::UUID, '1st Line', 'If youre happy and you know it, clap your hands', 1);
select insert_note('11dd6b0d-f75b-8429-d47b-82851ef22294'::UUID, '2nd Line', '*Clap-clap*', 4);
select insert_note('54efd0f2-0dfe-5e8a-477f-52d95ea5cf38'::UUID, '3rd Line', 'If youre happy and you know it, clap your hands x2', 1);
select insert_note('b2774d96-fe08-aa6a-6df9-21a76a0fbf14'::UUID, '4th Line', '*Clap-clap*x2', 3);
select insert_note('c7d7e82a-b092-56ce-25e6-adab8391e018'::UUID, '5th Line', 'If youre happy and you know it, then your face will surely show it', 2);
select insert_note('81699495-4c64-7b6f-eab4-64b7f79cd155'::UUID, '6th Line', 'If youre happy and you know it, clap your hands. x3', 2);
select insert_note('210f9b1b-072b-189c-dd82-2a378ba2f601'::UUID, 'Last header', 'Thx for reading this poem)', 1);
-- end add notes

-- select users notes count
select * from select_users_notes_count();
-- end select users notes count

-- select note
select * from select_note('210f9b1b-072b-189c-dd82-2a378ba2f601'::UUID);
select * from select_note('b2774d96-fe08-aa6a-6df9-21a76a0fbf14'::UUID);
select * from select_note('66ba1ea6-1077-200d-1cf0-b616a883d1c2'::UUID);
select * from select_note('3283c2e1-438b-3a21-303e-ee7dc2c91003'::UUID);
select * from select_note('81699495-4c64-7b6f-eab4-64b7f79cd155'::UUID);
-- end select note

-- update note mark deleted
select update_note_mark_deleted('210f9b1b-072b-189c-dd82-2a378ba2f601'::UUID);
select update_note_mark_deleted('b2774d96-fe08-aa6a-6df9-21a76a0fbf14'::UUID);
select update_note_mark_deleted('66ba1ea6-1077-200d-1cf0-b616a883d1c2'::UUID);
select update_note_mark_deleted('3283c2e1-438b-3a21-303e-ee7dc2c91003'::UUID);
select update_note_mark_deleted('81699495-4c64-7b6f-eab4-64b7f79cd155'::UUID);
-- end update note mark deleted

-- select users notes count
select * from select_users_notes_count();
select update_note_mark_deleted('4a6f2862-5a39-4aed-6090-67b4e14af890'::UUID);
select update_note_mark_deleted('a7abc0cb-b4f3-2d66-c591-cf45db686e3b'::UUID);
select * from select_users_notes_count();
-- end select users notes count

-- select user notes
select * from select_user_notes(1);
select * from select_user_notes(2);
select * from select_user_notes(3);
select * from select_user_notes(4);
-- end select user notes

-- id's for notes
-- 'ac68e40a-7741-35d4-85ef-01c755494c74'
-- '561b8e78-2f08-c916-0de9-9e12c237efc3'
-- '4a6f2862-5a39-4aed-6090-67b4e14af890'
-- 'f3489232-9dfe-943b-cd5d-0761dc6246e8'
-- '66ba1ea6-1077-200d-1cf0-b616a883d1c2'
-- '9c9323c4-5a24-b9c0-bbcc-db74bc109760'
-- '3283c2e1-438b-3a21-303e-ee7dc2c91003'
-- 'a7abc0cb-b4f3-2d66-c591-cf45db686e3b'
-- '11dd6b0d-f75b-8429-d47b-82851ef22294'
-- '54efd0f2-0dfe-5e8a-477f-52d95ea5cf38'
-- 'b2774d96-fe08-aa6a-6df9-21a76a0fbf14'
-- 'c7d7e82a-b092-56ce-25e6-adab8391e018'
-- '81699495-4c64-7b6f-eab4-64b7f79cd155'
-- '210f9b1b-072b-189c-dd82-2a378ba2f601'
-- end id's for notes
