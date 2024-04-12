-- FROM 진료 에약정보 테이블에서
-- WHERE 2022년 5월에 예약 환자들의
-- SELECT 진료과 코드와 수를 컬럼명을 '진료과 코드', '5월예약건수'로 지정하여 조회
-- ORDER BY 1. 환자 수, 2. 진료과 코드 기준 오름차순 정렬
SELECT mcdp_cd AS '진료과 코드', count(pt_no) AS '5월예약건수'
FROM appointment
WHERE apnt_ymd BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY mcdp_cd
ORDER BY 2, 1
