-- FROM 동물의 정보를 담은 테이블에서
-- ORDER BY 동물 보호소에 가장 먼저 들어온 동물의
--          (보호 시작일을 오름차순 정렬하여 그 중 맨 윗 레코드)
-- SELECT 이름을 조회
SELECT name
FROM animal_ins
ORDER BY datetime limit 1