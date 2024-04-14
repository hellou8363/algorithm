-- FROM 자동차들의 정보를 담은 테이블에서
-- WHERE 자동차 종류가 'SUV'인 자동차들의
-- SELECT 평균 일일 대여 요금 출력(평균 -> avg)
--        소수 첫 번째 자리에서 반올림(반올림 -> round)
--        컬럼명은 AVERAGE_FEE
SELECT round(avg(daily_fee), 0) AS AVERAGE_FEE
FROM car_rental_company_car
WHERE car_type = 'SUV'
