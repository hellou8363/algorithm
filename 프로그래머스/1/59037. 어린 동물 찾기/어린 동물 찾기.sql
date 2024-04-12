-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 젊은 동물의(INTAKE_CONDITION이 Aged)
-- SELECT 아이디와 이름을 조회
-- ORDER BY 아이디순으로
SELECT animal_id, name
FROM animal_ins
WHERE NOT intake_condition = 'Aged'
ORDER BY animal_id