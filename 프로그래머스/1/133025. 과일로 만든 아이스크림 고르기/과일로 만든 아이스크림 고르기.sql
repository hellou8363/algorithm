-- 1. 상반기 아이스크림 총주문량이 3000보다 높음
-- 2. 아이스크림 주 성분이 과일
-- 3. 총주문량이 큰 순서대로 조회
-- -----------------------------------------
-- 1. 주문 정보를 담은 테이블에서 총주문량(total_order)에 3000 초과라는 조건을 걸고 flavor만 추출한다.
-- 2. 성분에 대한 정보를 담은 테이블에서 ingredient_type이 fruit_base라는 조건과 flavor가 1번에서 추출한 데이터와 같다는 조건을 걸고 flavor를 출력한다.

SELECT flavor
FROM icecream_info
WHERE ingredient_type = "fruit_based"
    AND flavor IN (SELECT flavor
                  FROM first_half
                  WHERE total_order > 3000)
