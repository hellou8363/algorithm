-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 이름이 없는 동물의
-- SELECT ID를 조회
SELECT animal_id
FROM animal_ins
WHERE name IS NULL