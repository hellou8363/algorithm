-- FROM 동물의 정보를 담은 테이블에서
-- SELECT 동물의 아이디와 이름, 들어온 날짜를 조회
-- ORDER BY 아이디순으로
SELECT animal_id, name, DATE_FORMAT(datetime, '%Y-%m-%d')
FROM animal_ins
ORDER BY animal_id

-- DATE_FORMAT에서 년도 표시
-- Y -> 2015, y -> 15
-- M -> January, -> 01
-- D -> 29th, d -> 29