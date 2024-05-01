-- 1. 조회수가 가장 높은 중고 거래 게시물의
-- 2. 첨부파일 경로 조회
-- 3. file id 기준 내림차순 정렬
-- 4. /home/grep/src/ + board_id + file_id + file_name + file_ext로 출력
-- -----------------------------------------------------------
SELECT CONCAT('/home/grep/src/', board_id, '/',  file_ID, file_name, file_ext) AS file_path
FROM used_goods_file
WHERE board_id = (
    SELECT board_id
    FROM used_goods_board
    ORDER BY views DESC limit 1
)
ORDER BY file_id DESC