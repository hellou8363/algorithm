-- 1. 'Python'이나 'C#' 스킬을 가진 개발자의 정보
-- 2. ID, 이메일, 이름, 성을 조회
-- 3. ID 기준 오름차순 정렬
-- -------------------------------------------
SELECT id, email, first_name, last_name
FROM developers
WHERE skill_code & (
    SELECT sum(code)
    FROM skillcodes
    WHERE name IN ('Python', 'C#')
)
ORDER BY id

