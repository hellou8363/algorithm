-- FROM 동물의 정보를 담은 테이블에서
-- SELECT 동물의 이름의 개수를 조회(NULL 제외, 중복 제외)
SELECT count(DISTINCT name)
FROM animal_ins

-- SELECT DISTINCT count(name)으로 조회해서 틀렸었음