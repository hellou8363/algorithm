-- FROM 환자 정보 테이블에서
-- WHERE 12세 이하인 여자환자의
-- SELECT 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회(번호가 없으면 'NONE')
-- ORDER BY 1. 나이를 기준으로 내림차순, 2. 환자이름을 기준으로 오름차순 정렬
SELECT pt_name, pt_no, gend_cd, age, IFNULL(tlno, 'NONE')
FROM patient
WHERE age < 13 AND gend_cd = 'W'
ORDER BY age DESC, pt_name 