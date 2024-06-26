-- 1. 식품분류별 가격이 제일 비싼 식품
-- 2. 분류, 가격, 이름을 조회
-- 3. 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
-- 4. 결과는 식품 가격 기준 내림차순 정렬
-- -----------------------------------------------------
-- 1. 식품 정보 테이블의 식품분류 중 '과자', '국', '김치', '식용유'만 추출
-- 1. 식품 정보 테이블의 식품분류를 기준으로 그룹화
-- 2. 식품분류, 식품 가격(식품분류별 최대 가격)을 출력하는 서브쿼리로 만듦(WHERE절에 사용)
-- 3. 식품 정보 테이블에서 식품분류와 가격이 서브쿼리의 컬럼의 데이터와 일치하는 데이터만 추출
-- 4. 식품분류, 가격, 이름을 출력
-- 5. 가격을 기준으로 내림차순 정렬
SELECT category, price, product_name
FROM food_product
WHERE (category, price) IN (
    SELECT category, max(price)
    FROM food_product
    WHERE category IN ('과자', '국', '김치', '식용유')
    GROUP BY category    
)
ORDER BY price DESC
