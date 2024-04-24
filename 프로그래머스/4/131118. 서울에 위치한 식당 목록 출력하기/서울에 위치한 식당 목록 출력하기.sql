-- 1. 서울에 위치한 식당
-- 2. 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수 조회
-- 3. 평균 점수는 소수점 세 번째 자리에서 반올림
-- 4. 평균 점수 기준 내림차순, 즐겨찾기수 기준 내림차순 정렬
-- ----------------------------------------------------------------
-- 1. rest_review 테이블에서 식당 ID, 점수를 추출한다.
-- 2. rest_info와 rest_review에서 추출한 데이터를 조인한다.
-- 3. address에서 '서울'과 일치하는 주소만 필터링한다.
-- 4. 식당 ID를 기준으로 그룹화 한다.
-- 4. 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 점수(ROUND(AVG))를 추출한다.
-- 5. 점수를 기준 내림차순, 즐겨찾기수 기준 내림차순 한다.

SELECT t1.rest_id, rest_name, food_type, favorites, address, ROUND(AVG(review_score), 2) AS score
FROM rest_info t1
    JOIN (
        SELECT rest_id, review_score
        FROM rest_review
    ) t2
    ON t1.rest_id = t2.rest_id
WHERE address LIKE '서울%'
GROUP BY rest_id
ORDER BY score DESC, favorites DESC
