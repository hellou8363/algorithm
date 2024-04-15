-- 1. 생일이 3월인 여성 회원
-- 2. 회원 ID, 이름, 성별, 성년월일 조회
-- 3. 전화번호가 NULL인경우 출력 제외
-- 4. 회원 ID를 기준으로 오름차순 정렬
-- ----------------------------------
-- FROM 회원 정보 테이블에서
-- WHERE 생일이 3월이고 성별이 여성이고 전화번호가 NULL이 아니라는 조건을 걸고
-- SELECT 회원 ID, 이름, 성별, 생년월일을 출력한다.
-- ORDER BY 회원 ID를 기준으로 오름차순한다.
SELECT member_id, member_name, gender, DATE_FORMAT(date_of_birth, '%Y-%m-%d')
FROM member_profile
WHERE 
    date_of_birth LIKE '____-03%'
    AND
    gender = 'W'
    AND
    tlno IS NOT NULL
ORDER BY 1