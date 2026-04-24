--001_query.sql
SELECT *
FROM crime_scene_report
WHERE crime_scene_report.type == 'murder'
    AND crime_scene_report.city == 'SQL City'