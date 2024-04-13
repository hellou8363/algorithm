-- 1. 보호소에 들어올 당시 중성화 X
-- 2. 보호소를 나갈 당시(입양 보낸 정보에서) 중성화 O
-- 3. 1, 2 조건에 해당하는 동물의 아이디, 생물 종, 이름 조회
-- 4. 아이디 순으로 정렬
-- ----------------------------------------------------
-- 1. animal_outs 테이블을 기준으로 animal_ins 테이블과 JOIN한다.
-- 2. animal_outs 테이블의 sex_upon_outcome 컬럼에 'Intact'가 포함되지 않아야 한다는 조건을 건다.
-- 3. animal_ins 테이블의 sex_upon_intake 컬럼에 'Intact'가 포함되어야 한다는 조건을 건다.
-- 4. 동물의 아이디, 생물 종, 이름을 출력한다.
-- 5. 아이디 순으로 오름차순한다.
SELECT t1.animal_id, t1.animal_type, t1.name
FROM animal_outs t1
    JOIN animal_ins t2
    ON t1.animal_id = t2.animal_id
WHERE
    t1.sex_upon_outcome NOT LIKE 'Intact%'
    AND
    t2.sex_upon_intake LIKE 'Intact%'
ORDER BY 1