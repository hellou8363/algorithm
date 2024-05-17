SELECT car_id, car_type, fee
FROM (
    SELECT car_id, t1.car_type, ROUND((daily_fee * (1 - (discount_rate * 0.01))) * 30) AS FEE
    FROM car_rental_company_car t1
        LEFT JOIN (
            SELECT car_type, discount_rate
            FROM car_rental_company_discount_plan
            WHERE (car_type = '세단' OR car_type = 'SUV') AND duration_type = '30일 이상'
        ) t2
        ON t1.car_type = t2.car_type
    WHERE car_id NOT IN (
        SELECT car_id
        FROM car_rental_company_rental_history
        WHERE '2022-11-01' BETWEEN start_date AND end_date
            OR '2022-11-31' BETWEEN start_date AND end_date
        )
    ) t1
WHERE fee >= 500000 AND fee < 2000000  
ORDER BY 3 DESC, 2, 1 DESC