-- 1. 입양 기록에 있는 동물
-- 2. 보호소 기록에는 없는 동물
-- 3. ID와 이름을 ID순으로 조회
-- --------------------------
-- 1. 보호소 기록 테이블과 입양 기록 테이블을 JOIN한다.
-- 2. 보호소 기록의 동물 ID가 NULL인 경우를 조건으로 건다.
-- 3. 입양 기록 테이블의 동물 ID, 이름을 조회한다.
-- 4. ID를 기준으로 오름차순 정렬한다.
SELECT t2.animal_id, t2.name
FROM animal_ins t1
    RIGHT JOIN animal_outs t2
    ON t1.animal_id = t2.animal_id
WHERE t1.animal_id IS NULL
ORDER BY 1