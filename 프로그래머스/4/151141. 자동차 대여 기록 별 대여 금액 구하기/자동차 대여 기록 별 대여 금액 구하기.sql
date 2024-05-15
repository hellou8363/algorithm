SELECT history_id, IFNULL(ROUND((daily_fee * (1 - (discount_rate * 0.01))) * t1.date), daily_fee * t1.date) AS FEE
FROM (
    SELECT history_id, daily_fee, (DATEDIFF(end_date, start_date) + 1) AS date 
    FROM car_rental_company_rental_history t1
        JOIN (
            SELECT car_id, daily_fee 
            FROM car_rental_company_car
            WHERE car_type = '트럭'
        ) t2
        ON t1.car_id = t2.car_id
    ) t1
    LEFT JOIN (
        SELECT REPLACE(duration_type, '일 이상', '') AS date, discount_rate
        FROM car_rental_company_discount_plan
        WHERE car_type = '트럭'
    ) t2
    ON t1.date >= t2.date
GROUP BY history_id
ORDER BY 2 DESC, 1 DESC