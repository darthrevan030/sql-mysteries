--007_query.sql
SELECT drivers_license.id,
    drivers_license.plate_number,
    person.name
FROM drivers_license
    LEFT JOIN person ON drivers_license.id = person.license_id
WHERE person.id IN (67318, 28819) -- found the killer, 67318-Jeremy Bowers