-- 1. 가장 큰 물고기 10마리
-- 2. ID와 길이 출력
-- 3. 길이 기준 내림차순 ID 기준 오름차순 정렬
-- --------------------------------------
SELECT id, length
FROM fish_info
ORDER BY length DESC, id limit 10