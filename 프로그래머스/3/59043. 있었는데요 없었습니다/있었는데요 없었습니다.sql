-- 1. 보호 시작일 보다 입양일이 빠른 동물의 아이디와 이름 조회
-- 2. 보호 시작일이 빠른 순으로 정렬
-- ----------------------------------------------------
-- 1. animal_outs 테이블과 animal_ins 테이블을 JOIN한다.
-- 2. 입양일(animal_outs의 datetime)보다 보호 시작일(animal_ins의 datetime)이 늦다(크다)는 조건을 건다.
-- 3. 동물의 아이디와 이름을 출력한다.
-- 4. 보호 시작일기준 오름차순으로 정렬한다.
SELECT t1.animal_id, t1.name
FROM animal_outs t1
    JOIN animal_ins t2
    ON t1.animal_id = t2.animal_id
WHERE t1.datetime < t2.datetime
ORDER BY t2.datetime