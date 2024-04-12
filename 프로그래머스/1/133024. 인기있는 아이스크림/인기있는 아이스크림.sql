-- FROM 주문 정보를 담은 테이블에서
-- SELECT 아이스크림 맛을 조회
-- ORDER BY 1. 총주문량 기준 내림차순, 2. 출하 번호 기준 오름차순
SELECT flavor
FROM first_half
ORDER BY total_order DESC, shipment_id