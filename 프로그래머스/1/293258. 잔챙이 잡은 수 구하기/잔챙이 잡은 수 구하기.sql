-- 1. 잡은 물고기 중 길이가 10cm 이하인 물고기 수 출력
-- 2. 컬럼명은 'fish_count'로 지정
-- ----------------------------------------------
-- 길이가 10cm 이하힐 경우 length가 null, null의 개수를 반환
SELECT COUNT(id) AS fish_count
FROM fish_info
WHERE length IS NULL