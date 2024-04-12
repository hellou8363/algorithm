-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 아픈 동물의(INTAKE_CONDITION이 Sick인)
-- SELECT 아이디와 이름을
-- ORDER BY 아이디 순으로 조회
SELECT animal_id, name
FROM animal_ins
WHERE intake_condition = 'Sick'
ORDER BY animal_id