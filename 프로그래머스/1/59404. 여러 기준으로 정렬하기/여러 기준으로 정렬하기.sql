-- FROM 동물의 정보를 담은 테이블에서
-- SELECT 아이디와 이름, 보호 시작일을 조회
-- ORDER BY 1. 이름순 정렬, 2. 보호 시작일순 정렬
SELECT animal_id, name, datetime
FROM animal_ins
ORDER BY name, datetime DESC