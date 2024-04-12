-- FROM 식품창고의 정보를 담은 테이블에서
-- WHERE 1. '경기도'에 위치, 2. 냉동실 여부가 NULL이면 'N'으로 대체
-- SELECT 창고의 ID, 이름, 주소, 냉동시설 여부를 조회
SELECT warehouse_id, warehouse_name, address, IFNULL(freezer_yn, 'N')
FROM food_warehouse
WHERE address LIKE '경기도%'