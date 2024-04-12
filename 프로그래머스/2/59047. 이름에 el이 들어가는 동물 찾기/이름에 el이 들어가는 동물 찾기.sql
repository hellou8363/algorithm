-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 이름에 'el'이 들어가는 개의(대소문자 구분 X)
-- SELECT 아이디와 이름을 조회
-- ORDER BY 이름순으로
SELECT animal_id, name
FROM animal_ins
WHERE name LIKE '%el%' AND animal_type = 'Dog'
ORDER BY name