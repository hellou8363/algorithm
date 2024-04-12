-- FROM 동물의 정보를 담은 테이블에서
-- GROUP 시간대 별로 분류하여 -> subquery로 입양일에서 시(hour)만 가져오기
-- HAVING 분류한 시간대에서 9 ~ 19시만 필터링
-- SELECT 시간대와 입양 건수를 조회
-- ORDER BY 시간대 순으로 정렬
SELECT hour, count(hour)
FROM (
    SELECT DATE_FORMAT(datetime, '%H') AS hour
    FROM animal_outs
) t
GROUP BY hour
HAVING hour BETWEEN '09' AND '19'
ORDER BY hour

-- %h : 01 ~ 12 시
-- %H : 01 ~ 24 시

    