-- FROM 회원정보를 담은 테이블에서
-- WHERE 나이 정보가 없는 회원의
-- SELECT 인원 수를 조회
SELECT count(user_id)
FROM user_info
WHERE age IS NULL