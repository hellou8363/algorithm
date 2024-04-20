-- 1. 2022년 4월 13일 취소되지 않은 CS 진료 예약 내역 조회
-- 2. 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료에약일시 출력
-- 3. 진료예약일시 기준 오름차순 정렬
-- -------------------------------------------------------------------
with t3 as (
    SELECT apnt_no, pt_no, mcdp_cd, mddr_id, apnt_ymd
    FROM appointment
    WHERE apnt_ymd LIKE '2022-04-13%' AND mcdp_cd = 'CS' AND apnt_cncl_yn = 'N'
)

SELECT apnt_no, t1.pt_name, t1.pt_no, mcdp_cd, dr_name, apnt_ymd
FROM patient t1
    JOIN (
        SELECT apnt_no, pt_no, t1.mcdp_cd, dr_name, apnt_ymd
        FROM doctor t1
            JOIN t3
            ON dr_id = mddr_id
    ) t2
    ON t1.pt_no = t2.pt_no
ORDER BY apnt_ymd