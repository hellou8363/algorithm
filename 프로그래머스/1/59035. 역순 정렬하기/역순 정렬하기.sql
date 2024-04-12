-- FROM 동물의 정보를 담은 테이블에서
-- SELECT 이름과 보호 시작일 조회하여
-- ORDER BY ID를 역순(내림차순)으로
SELECT name, datetime
FROM animal_ins
ORDER BY animal_id DESC