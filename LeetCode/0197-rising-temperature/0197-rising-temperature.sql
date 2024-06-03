SELECT id
FROM (
    SELECT 
        id, 
        temperature AS today_temp, 
        recordDate AS today,
        LAG(temperature, 1) OVER (ORDER BY recordDate) AS yesterday_temp,
        LAG(recordDate, 1) OVER (ORDER BY recordDate) AS yesterday

    FROM weather
    ORDER BY recordDate
) t
WHERE DATEDIFF(today, yesterday) = 1 AND today_temp > yesterday_temp
