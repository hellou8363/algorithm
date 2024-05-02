-- 1. 7월 아이스크림 총 주문량 + 상반기 아이스크림 총 주문량
-- 2. 더한 값이 큰 순서대로 상위 3개의 맛 출력
-- ---------------------------------------------------
with t1 as (
    SELECT flavor, sum(total_order) AS total_order
    FROM july
    GROUP BY flavor
)
SELECT t1.flavor
FROM t1
    JOIN first_half t2
    ON t1.flavor = t2.flavor
ORDER BY t1.total_order + t2.total_order DESC limit 3