-- 1. 스킬에 'Python'을 가진 개발자의 정보 조회
-- 2. 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL
-- 3. ID 기준 오름차순 정렬
-- -------------------------------------------
SELECT id, email, first_name, last_name
FROM developer_infos
WHERE 'Python' IN (skill_1, skill_2, skill_3)
ORDER BY id 