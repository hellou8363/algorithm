-- FROM 동물 보호소 정보 테이블과
-- OUTER JOIN 입양 보낸 동물 정보 테이블을 조인하여
-- WHERE 입양 보낸 동물 정보에는 없는 동물 중
-- ORDER BY 가장 오래 보호소에 있었던
-- SELECT 이름과 보호 시작일을 조회
-- LIMIT 3마리만
SELECT t1.name, t1.datetime
FROM animal_ins t1
    LEFT JOIN animal_outs t2
    ON t1.animal_id = t2.animal_id
WHERE t2.animal_id IS NULL
ORDER BY t1.datetime 
limit 3