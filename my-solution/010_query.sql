--010_query.sql
SELECT name,
    hair_color,
    height,
    car_model,
    car_make,
    annual_income
FROM person AS p
    INNER JOIN income AS i ON p.ssn = i.ssn
    INNER JOIN drivers_license AS d ON p.license_id = d.id
WHERE hair_color = 'red'
    AND car_make = 'Tesla'
    AND car_model = 'Model S'
    AND height >= 65
    AND height <= 67
ORDER BY annual_income DESC --Found the person who hired the hit