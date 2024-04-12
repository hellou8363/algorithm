-- FROM 식품공장의 정보를 담은 테이블에서
-- WHERE '강원도'에 위치한
-- SELECT 식품공장의 공장 ID, 공장 이름, 주소를 조회
-- ORDER BY 공장ID순으로
SELECT factory_id, factory_name, address
FROM food_factory
WHERE address LIKE '강원도%'
ORDER BY factory_id