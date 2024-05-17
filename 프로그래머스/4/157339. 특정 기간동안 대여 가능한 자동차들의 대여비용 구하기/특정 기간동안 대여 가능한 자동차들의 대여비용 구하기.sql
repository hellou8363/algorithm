-- 자동차 종류가 '세단' 또는 'SUV'
-- 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능해야 함
-- 30일간 대여 금액이 50만원 이상, 200만원 미만
-- 자동차 ID, 자동차 종류, 대여 금액(FEE)
-- 대여 금액 기준 내림차순, 자동차 종류 기준 오름차순, 자동차 ID 기준 내림차순
SELECT *
FROM car_rental_company_rental_history
WHERE start_date > '2022-11-01' AND end_date > '2022-11-30'