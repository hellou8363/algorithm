-- 1. 평균 대여 기간이 7일 이상인 자동차 v
-- 2. 자동차 ID, 평균 대여 기간 출력 v
-- 3. 평균 대여 기간의 컬럼명 : average_duration v
-- 4. 평균 대여 기간을 소수점 두 번째 자리에서 반올림 v
-- 5. 평균 대여 기간 기준 내림차순, 자동차 ID 기준 내림차순 v
-- --------------------------------------------------
-- 당일 대여/반납에 대한 날짜도 고려해야 함(당일 대여/반납의 경우 0일이 되기 때문에 날짜에 +1 필요)
SELECT car_id, ROUND(AVG(ABS(DATEDIFF(start_date, end_date)) + 1), 1) AS average_duration
FROM car_rental_company_rental_history
GROUP BY car_id
HAVING average_duration >= 7
ORDER BY average_duration DESC, car_id DESC