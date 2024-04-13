-- 1. 5월 1일까지는 '출고완료'로 표시
-- 2. 5월 1일 이후는 '출고대기'로 표시
-- 3. 5월 1일 이후 중 '미정'이 있으면 '출고미정'으로 표시(미정 : NULL)
-- 4. 주문 ID, 제품 ID, 출고일자, 출고여부를 조회
-- 5. 주문 ID를 기준으로 오름차순 정렬
-- -------------------------------------------------
-- 1. 주문정보 테이블에서 주문 ID, 제품 ID, 출고일자를 출력하는 서브쿼리를 만든다.
-- 2. 서브쿼리를 테이블로 주문 ID, 제품 ID, 출고일자를 출력한다.
-- 3. 출고일자에서 5월 1일까지는 '출고완료', NULL이면 '출고미정', 그 외는 '출고대기'로 표시하는 컬럼을 추가해서 출력한다.
-- 4. 주문 ID를 기준으로 오름차순 정렬한다.
with t1 as (
    SELECT order_id, product_id, DATE_FORMAT(out_date, '%Y-%m-%d') AS out_date
    FROM food_order
)
SELECT order_id, product_id, out_date,
    CASE 
        WHEN out_date <= '2022-05-01' then '출고완료'
        WHEN out_date IS NULL then '출고미정'
        ELSE '출고대기'
    END AS '출고여부'
FROM t1
ORDER BY 1