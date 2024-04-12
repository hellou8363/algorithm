-- FROM 동물의 정보를 담은 테이블에서
-- GROUP BY 동물 별로 분류하여
-- SELECT 고양이와 개가 각각 몇 마리인지 조회
-- ORDER BY 고양이를 개보다 먼저
SELECT animal_type, count(animal_type)
FROM animal_ins
GROUP BY animal_type
HAVING animal_type IN ('Cat', 'Dog')
ORDER BY animal_type