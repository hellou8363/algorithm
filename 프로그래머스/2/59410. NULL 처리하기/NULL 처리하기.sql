-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 동물의 이름이 없으면 'No name'으로 -> IFNULL 사용
-- SELECT 생물 종, 이름, 성별 및 중성화 여부를
-- ORDER BY 아이디순으로 조회
SELECT animal_type, IFNULL(name, 'No name'), sex_upon_intake
FROM animal_ins
ORDER BY animal_id