-- FROM 회원정보를 담은 테이블에서
-- WHERE 1. 2021년에 가입한 회원, 2. 나이가 20세 이상 29세 이하
-- 회원의 수를 조회
SELECT count(user_id)
FROM user_info
WHERE 
    joined BETWEEN '2021-01-01' AND '2021-12-31'
    AND
    age BETWEEN 20 AND 29