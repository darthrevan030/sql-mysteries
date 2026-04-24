--000_initial_query.sql
--Given Query 1
SELECT name
FROM sqlite_master
WHERE type = 'table' 

--Given Query 2
SELECT sql
FROM sqlite_master
WHERE name = 'crime_scene_report'