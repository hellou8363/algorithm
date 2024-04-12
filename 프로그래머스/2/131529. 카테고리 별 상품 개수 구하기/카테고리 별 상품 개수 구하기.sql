-- FROM 상품들의 정보를 담은 테이블에서
-- GROUP BY 카테코리 코드 앞 2자리 별 -> subquery로 미리 앞 2자리 필터
-- SELECT 상품의 개수 조회
-- ORDER BY 상품 카테코리 기준으로 오름차순
SELECT t.product_code, count(t.product_code)
FROM (
    SELECT SUBSTRING(product_code, 1, 2) AS product_code
    FROM product
    ) t
GROUP BY t.product_code
ORDER BY t.product_code



    