--003_query.sql
SELECT id,
    event_name,
    date
FROM facebook_event_checkin
    LEFT JOIN person on facebook_event_checkin.person_id = person.id
WHERE person_id = 16371