--006_query.sql
SELECT person_id,
    name,
    event_name,
    date
FROM facebook_event_checkin
    LEFT JOIN person ON facebook_event_checkin.person_id = person.id
WHERE person_id IN (67318, 28819) -- well that turned out to be useless