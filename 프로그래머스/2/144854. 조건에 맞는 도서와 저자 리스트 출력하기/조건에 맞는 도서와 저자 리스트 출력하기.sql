-- 1. '경제' 카테고리에 속하는 도서
-- 2. 도서ID, 저자명, 출판일 출력
-- 3. 출판일 기준 오름차순
-- ------------------------------
-- 1. book 테이블을 기준으로 author 테이블을 JOIN한다.
-- 2. category 컬럼의 데이터가 '경제'여야 한다는 조건을 건다.
-- 3. 도서ID, 저자명, 출판일(년-월-일)을 출력한다.
-- 4. 출판일을 기준으로 오름차순한다.
SELECT book_id, author_name, DATE_FORMAT(published_date, '%Y-%m-%d') AS published_date
FROM book t1
    JOIN author t2
    ON t1.author_id = t2.author_id
WHERE category = '경제'
ORDER BY 3