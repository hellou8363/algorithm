SELECT month(start_date), car_id, count(car_id) AS records
FROM car_rental_company_rental_history
WHERE car_id IN (
    SELECT car_id
    FROM car_rental_company_rental_history
    WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
    GROUP BY 1
    HAVING count(car_id) > 4
) AND month(start_date) IN (8, 9, 10)
GROUP BY 1, 2
ORDER BY 1, 2 DESC
