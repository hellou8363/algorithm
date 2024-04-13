-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 이름이 'Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty'인
-- SELECT 동물의 아이디와 이름, 성별 및 중성화 여부를 조회
-- ORDER BY 아이디 순으로 정렬
SELECT animal_id, name, sex_upon_intake
FROM animal_ins
WHERE name IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY 1