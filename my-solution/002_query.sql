--002_query.sql
SELECT person_id,
    name,
    transcript,
    address_street_name
FROM person
    LEFT JOIN interview on person.id = interview.person_id
WHERE interview.transcript LIKE "%murder%"