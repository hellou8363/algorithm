-- FROM 도서 정보 테이블에서
-- WHERE 2021년 출판된 '인문' 카테고리에 속하는
-- SELECT 도서 ID, 출판일을 출력
-- ORDER BY 출판일 기준으로 오름차순 정렬
SELECT book_id, DATE_FORMAT(published_date, '%Y-%m-%d')
FROM book
WHERE 
    published_date BETWEEN '2021-01-31' AND '2021-12-31'
    AND
    category = '인문'
ORDER BY 2