-- FROM 의사 정보를 담은 테이블에서
-- WHERE 진료과가 'CS'이거나 'GS'인
-- SELECT 의사의 이름, 의사ID, 진료과, 고용일자를 조회
-- ORDER BY 1. 고용일자를 기준으로 내림차순, 2. 이름을 기준으로 오름차순 정렬
SELECT dr_name, dr_id, mcdp_cd, DATE_FORMAT(hire_ymd, '%Y-%m-%d')
FROM doctor
WHERE mcdp_cd = 'CS' OR mcdp_cd = 'GS'
ORDER BY hire_ymd DESC, dr_name