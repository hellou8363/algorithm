-- 1. 생산일자가 2022년 5월인 식품
-- 2. 식품 ID, 식품 이름, 총매출 조회
-- 3. 총매출을 기준으로 내림차순 정렬, 식품 ID기준으로 오름차순 정렬
-- ---------------------------------------------------------
-- 1. food_order 테이블에서 생산일자가 2022년 5월인 식품만 추출한다.
-- 2. 1번 데이터와 food_product 테이블을 JOIN한다.
-- 3. 식품 ID별로 그룹화 한다.
-- 4. 식품 ID, 식품 이름, 총매출(price * amount)을 출력한다.
-- 5. 총매출 기준 내림차순, 식품 ID기준 오름차순 정렬한다.
with t2 as (
    SELECT product_id, amount
    FROM food_order
    WHERE produce_date BETWEEN '2022-05-01' AND '2022-05-31'
)
SELECT t1.product_id, product_name, sum(price * amount) AS TOTAL_SALES
FROM food_product t1
    JOIN t2
    ON t1.product_id = t2.product_id
GROUP BY t1.product_id
ORDER BY 3 DESC, 1
