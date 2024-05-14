WITH RECURSIVE hour AS (
    SELECT 0 AS h 
    UNION ALL 
    SELECT h + 1
    from hour 
    where h < 23
)

SELECT t1.h AS HOUR, IFNULL(count, 0) AS COUNT
FROM hour t1
    LEFT JOIN (
        SELECT HOUR(datetime) AS hour, COUNT(animal_id) AS count
        FROM animal_outs
        GROUP BY hour
        ORDER BY hour
    ) t2
    ON t1.h = t2.hour
