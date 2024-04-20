-- 1. 중고 거래 게시물을 3건 이상 등록한 사용자
-- 2. 사용자 ID, 닉네임, 전체주소, 전화번호를 조회
-- 3. 전체 주소는 시, 도로명 주소, 상세 주소 함께 출력
-- 4. 전화번호는 xxx-xxxx-xxxx형태로 -를 삽입하여 출력
-- 5. 결과는 회원 ID를 기준으로 내림차순 정렬
-- -----------------------------------------------
SELECT user_id, nickname, CONCAT(city, ' ', street_address1, ' ', street_address2), 
       CONCAT(LEFT(tlno, 3), '-', MID(tlno, 4, 4), '-', RIGHT(tlno, 4))
FROM used_goods_user
WHERE user_id IN (
    SELECT writer_id
    FROM used_goods_board
    GROUP BY writer_id
    HAVING count(board_id) > 2
)
ORDER BY user_id DESC