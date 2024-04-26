-- 1. 잡은 물고기 중 가장 큰 물고기의 길이
-- 2. 'cm'을 붙여 출력
-- 3. 컬럼명은 'max_length'로 지정
-- -----------------------------------
SELECT CONCAT(MAX(length), 'cm') AS max_length
FROM fish_info