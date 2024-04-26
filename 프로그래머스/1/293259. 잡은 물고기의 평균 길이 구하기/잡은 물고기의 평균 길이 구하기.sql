-- 1. 잡은 물고기의 평균 길이 출력
-- 2. 컬럼명을 'average_length'로 지정
-- 3. 평균 길이는 소수점 3째자리에서 반올림
-- 4. 10cm 이하의 물고기들은 10cm로 취급하여 평균 길이를 구함
-- ----------------------------------------------------
-- 길이가 10cm 이하일 경우 length가 null, 10으로 지정 후 계산해야 함
SELECT ROUND(AVG(IFNULL(length, 10)), 2) AS average_length
FROM fish_info