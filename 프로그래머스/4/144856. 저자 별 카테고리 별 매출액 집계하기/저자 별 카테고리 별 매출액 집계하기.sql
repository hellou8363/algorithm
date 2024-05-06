-- 1. 2022년 1월의 도서 판매 데이터 v
-- 2. 저자 별, 카테고리 별 매출액(판매량 * 판매가)
-- 3. 저자 ID, 저자명, 카테고리, 매출액 조회
-- 4. 저자 ID 기준 오름차순, 카테고리 기준 내림차순
-- -------------------------------------------
with t1 as (
    SELECT book_id, sales
    FROM book_sales
    WHERE sales_date LIKE '2022-01%'
), t2 as (
    SELECT author_id, category, sales * price AS total_sales
    FROM t1
        JOIN book t2
        ON t1.book_id = t2.book_id
)
SELECT t2.author_id, author_name, category, sum(total_sales) AS sales
FROM t2
    JOIN author t3
    ON t2.author_id = t3.author_id
GROUP BY t2.author_id, category
ORDER BY 1, 3 DESC