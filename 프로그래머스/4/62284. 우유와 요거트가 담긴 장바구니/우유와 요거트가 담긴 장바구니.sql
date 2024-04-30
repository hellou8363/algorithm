-- 1. 우유와 요거트를 동시에 구입한 장바구니
-- 2. 아이디를 조회
-- 3. 아이디순 정렬
-- ------------------------------------
SELECT cart_id
FROM (
    SELECT DISTINCT cart_id, name
    FROM cart_products
    WHERE name IN ('Milk', 'Yogurt')
) t1
GROUP BY 1
HAVING COUNT(cart_id) > 1
ORDER BY 1