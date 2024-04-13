-- 1. 2020년 1월의 카테고리 별 도서 판매량 합산
-- 2. 카테고리, 총 판매량을 출력
-- 3. 카테고리명을 기준으로 오름차순 정렬
-- ----------------------------------------
-- 1. book 테이블과 book_sales 테이블을 INNER JOIN한다.
-- 2. book_sales 테이블의 sales_date가 '2022년 1월'의 범위라는 조건으로 건다.
-- 3. book 테이블의 category를 기준으로 그룹화한다.
-- 4. book 테이블의 category와 book_sales 테이블의 sales(판매량 합산이므로 sum)를 조회한다.
-- 5. 조회된 데이터를 카테고리를 기준으로 오름차순 정렬한다.
SELECT t1.category, sum(sales)
FROM book t1
    INNER JOIN book_sales t2
    ON t1.book_id = t2.book_id
WHERE t2.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY t1.category
ORDER BY category