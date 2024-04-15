-- 1. 자동차 종류가 '세단'인 자동차
-- 2. 10월에 대여를 시작한 기록이 있는 자동차 ID
-- 3. 자동차 ID는 중복이 없어야 함
-- 4. 자동차 ID를 기준으로 내림차순 정렬
-- -----------------------------------------
-- 1. 자동차 대여 기록 정보를 담은 테이블에서 대여 시작일이 10월인 자동차 ID를 추출(중복제거)
-- 2. 1번에서 추출한 데이터와 자동차 대여 기록 정보를 담은 테이블과 JOIN
-- 3. 자동차 타입이 '세단'이라는 조건을 건다.
-- 4. 자동차 ID를 출력한다.
-- 5. 자동차 ID를 기준으로 내림차순 정렬한다.
with t1 as (
    SELECT DISTINCT car_id
    FROM car_rental_company_rental_history
    WHERE start_date LIKE '____-10%'
)
SELECT t1.car_id
FROM t1
    JOIN car_rental_company_car t2
    ON t1.car_id = t2.car_id
WHERE car_type = '세단'
ORDER BY 1 DESC