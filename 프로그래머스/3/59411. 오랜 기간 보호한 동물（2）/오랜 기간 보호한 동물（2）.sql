-- 1. 입양을 간 동물
-- 2. 보호 기간이 가장 긴 두 마리
-- 4. 아이디와 이름 조회
-- 5. 보호 기간이 긴 순으로 출력
-- ---------------------------
-- 1. animla_outs를 기준으로 animal_ins 테이블을 JOIN한다.
-- 2. 아이디, 이름, 시간차(입양일 - 보호 시작일)를 출력하는 서브쿼리로 만든다.
-- 3. 위 서브쿼리의 데이터에서 아이디, 이름을 출력한다.
-- 4. 정렬은 시간차(time_diff)를 기준으로 내림차순한다.
-- 5. 레코드 수를 2개로 제한한다.
with t1 as (
    SELECT t1.animal_id, t1.name, t1.datetime - t2.datetime AS time_diff
    FROM animal_outs t1
        JOIN animal_ins t2
        ON t1.animal_id = t2.animal_id
)
SELECT animal_id, name
FROM t1
ORDER BY time_diff DESC
LIMIT 2
