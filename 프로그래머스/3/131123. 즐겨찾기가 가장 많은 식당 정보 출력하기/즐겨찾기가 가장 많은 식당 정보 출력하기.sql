-- 1. 음식종류별 즐겨찾기수가 가장 많은 식당
-- 2. 음식 종류, ID, 식당 이름, 즐겨찾기 수 조회
-- 3. 음식 종류를 기준으로 내림차순
-- -----------------------------------------
-- 1. 식당 정보 테이블의 음식 종류를 기준으로 그룹화한다.
-- 2. 음식 종류, 즐겨찾기수를 조회하는 서브쿼리로 만든다.
-- 3. 서브쿼리와 식당 정보 테이블을 self join한다.
-- 4. 서브쿼리의 즐겨찾기 수와 식당 정보 테이블의 즐겨찾기수가 같다는 조건을 건다.
-- 5. 음식 종류, ID, 식당 이름, 즐겨찾기수를 출력한다.
-- 6. 음식 종류를 기준으로 내림차순 정렬한다.
with t1 as (
    SELECT food_type, max(favorites) AS favorites
    FROM rest_info
    GROUP BY food_type
)
SELECT t1.food_type, rest_id, rest_name, t1.favorites
FROM t1
    JOIN rest_info t2
    ON t1.food_type = t2.food_type AND t1.favorites = t2.favorites
ORDER BY 1 DESC