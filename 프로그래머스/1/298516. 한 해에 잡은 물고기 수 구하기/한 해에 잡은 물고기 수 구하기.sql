-- 1. 2021년도에 잡은 물고기 수
-- 2. 컬럼명은 fish_count로 지정
-- ---------------------------
SELECT count(id) AS fish_count
FROM fish_info
WHERE time BETWEEN '2021-01-01' AND '2021-12-31'