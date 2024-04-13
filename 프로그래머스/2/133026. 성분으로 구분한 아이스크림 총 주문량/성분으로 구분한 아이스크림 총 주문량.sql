-- 1. 아이스크림 성분 타입 별 총주문량
-- 2. 총주문량이 작은 순서대로 출력
-- 3. 총주문량을 나타내는 컬럼명은 'TOTAL_ORDER'로 지정
-- ------------------------------------------------
-- 1. first_half 테이블을 기준으로 icecream_info 테이블과 JOIN한다.
-- 2. 아이스크림 성분 타입 별로 그룹화한다.
-- 3. 아이스크립 성분 타입, 총주문량을 출력한다.
-- 4. 총주문량을 기준으로 오름차순한다.
SELECT ingredient_type, sum(total_order)
FROM first_half t1
    JOIN icecream_info t2
    ON t1.flavor = t2.flavor
GROUP BY ingredient_type
ORDER BY 2
