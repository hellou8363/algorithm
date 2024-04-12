-- FROM 식품의 정보를 담은 테이블에서
-- WHERE 가격이 제일 비싼 식품의
-- SELECT ID, 이름, 코드, 분류, 가격을 조회
SELECT *
FROM food_product
ORDER BY price DESC limit 1

-- 두 번째 방법으로도 조회 가능
-- SELECT *
-- FROM food_product
-- WHERE price = (SELECT max(price) FROM food_product)