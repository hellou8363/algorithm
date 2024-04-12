-- FROM 대여중인 자동차들의 정보를 담은 테이블에서
-- WHERE '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된
-- GROUP BY 자동차 종류 별
-- SELECT 차량 수를 'CARS'로 지정하여 조회
-- ORDER BY 자동차 종류를 기준으로 오름차순
SELECT car_type, count(car_type) AS 'CARS'
FROM car_rental_company_car
WHERE 
    options LIKE '%통풍시트%' OR 
    options LIKE '%열선시트%' OR 
    options LIKE '%가죽시트%' 
GROUP BY car_type
ORDER BY car_type