-- Create a virtual FTS table
CREATE VIRTUAL TABLE interview_fts USING fts5(person_id, transcript);

-- Populate it from your real table
INSERT INTO interview_fts
SELECT person_id,
    transcript
FROM interview;

-- Query it
SELECT person_id,
    transcript
FROM interview_fts
WHERE interview_fts MATCH 'murder';