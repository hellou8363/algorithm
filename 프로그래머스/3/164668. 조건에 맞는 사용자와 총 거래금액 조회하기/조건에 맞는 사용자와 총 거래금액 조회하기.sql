-- 1. 완료된 중고 거래
-- 2. 중고 거래 총금액이 70만원 이상
-- 3. 회원 ID, 닉네임, 총거래금액 조회
-- --------------------------------
-- 1. used_goods_board 테이블에서 거래상태(status)가 'DONE'인 거래만 추출
-- 2. 작성자(writer_id)를 기준으로 그룹화
-- 3. 작성자(writer_id), 작성자 별 총 거래금액(sum(price))을 서브쿼리로 만듦
-- 4. 3번의 결과를 테이블(t1)로 used_goods_user 테이블(t2)과 JOIN한다.
-- 5. 총 거래금액(price)이 70만원 이상이라는 조건을 건다.
-- 6. 회원 ID(user_id), 닉네임(nickname), 총 거래금액을 출력한다.
-- 7. 총 거래금액을 기준으로 오름차순 정렬한다.
with t1 as (
    SELECT writer_id, sum(price) AS price
    FROM used_goods_board
    WHERE status = 'DONE'
    GROUP BY writer_id
)
SELECT user_id, nickname, price
FROM t1
    JOIN used_goods_user t2
    ON t1.writer_id = t2.user_id
WHERE price >= 700000
ORDER BY 3
