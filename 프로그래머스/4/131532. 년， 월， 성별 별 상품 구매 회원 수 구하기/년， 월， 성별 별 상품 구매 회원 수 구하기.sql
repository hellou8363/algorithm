-- 1. 년, 월, 성별 별로 상품을 구매한 회원수를 집계
-- 2. 결과는 년, 월, 성별을 기준으로 오름차순 정렬
-- 3. 성별 정보가 없는 경우 결과에서 제외(남자 = 0, 여자 = 1)
-- -------------------------------------------
-- t2 : 성별이 남, 여인 데이터
with t2 as (
    SELECT user_id, gender
    FROM user_info
    WHERE gender IN (0, 1)
)
SELECT year(sales_date), month(sales_date), gender, count(DISTINCT t1.user_id)
FROM online_sale t1
    JOIN t2
    ON t1.user_id = t2.user_id
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3