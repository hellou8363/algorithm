-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 이름이 있는(NULL이 아닌)
-- SELECT 동물의 ID를 검색하여
-- ORDER BY ID순으로 오름차순 정렬
SELECT animal_id
FROM animal_ins
WHERE name IS NOT NULL
ORDER BY animal_id