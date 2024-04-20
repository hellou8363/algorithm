-- 1. 동일한 회원이 동일한 상품을 재구매한 데이터
-- 2. 재구매한 회원 ID와 재구매한 상품 ID를 출력
-- 3. 결과는 회원 ID를 기준으로 오름차순 정렬, 상품 ID를 기준으로 내림차순 정렬
-- -------------------------------------------------------------------
SELECT user_id, product_id
FROM (
    SELECT user_id, product_id, count(online_sale_id) as total_count
    FROM online_sale
    GROUP BY user_id, product_id
) t1
WHERE total_count > 1
ORDER BY user_id, product_id DESC