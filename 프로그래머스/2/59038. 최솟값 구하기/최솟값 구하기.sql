-- FROM 동물의 정보를 담은 테이블에서
-- SELECT 보호 시작일을 조회한다.
-- ORDER BY 보호소에 가장 먼저 들어온 동물의
SELECT datetime
FROM animal_ins
ORDER BY datetime limit 1