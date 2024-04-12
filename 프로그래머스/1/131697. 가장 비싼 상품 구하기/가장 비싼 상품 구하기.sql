-- FROM 판매 중인 상품들의 정보를 담은 테이블에서
-- WHERE 가장 높은 판매가를
-- SELECT 컬럼명을 MAX_PRICE로 하여 조회
SELECT price AS MAX_PRICE
FROM product
ORDER BY price DESC limit 1