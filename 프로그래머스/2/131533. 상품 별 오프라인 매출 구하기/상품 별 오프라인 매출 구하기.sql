-- 1. PRODUCT, OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계 출력
-- 2. 매출액 기준 내림차순, 상품코드 기준 오름차순 정렬
-- ----------------------------------------------
-- 1. product 테이블과 offline_sale 테이블을 JOIN한다.
-- 2. 상품코드(product_code)로 그룹화한다.
-- 3. 상품코드(product_code)와 매출액(price * sales_amount)의 합계 출력한다.
-- 4. 1. 매출액 기준 내림차순, 2. 상품코드 기준 오름차순으로 정렬한다.
SELECT product_code, price * sum(sales_amount) AS sales
FROM product t1
    JOIN offline_sale t2
    ON t1.product_id = t2.product_id
GROUP BY product_code
ORDER BY sales DESC, product_code