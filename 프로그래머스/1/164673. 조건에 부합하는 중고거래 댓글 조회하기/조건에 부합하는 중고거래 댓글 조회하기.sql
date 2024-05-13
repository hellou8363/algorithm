SELECT t1.title, t1.board_id, t2.reply_id, t2.writer_id, t2.contents, DATE_FORMAT(t2.created_date, '%Y-%m-%d') AS created_date
FROM used_goods_board t1,
    used_goods_reply t2
WHERE 
    (t1.board_id = t2.board_id)
    AND
    (t1.created_date BETWEEN '2022-10-01' AND '2022-10-31')

ORDER BY t2.created_date, t1.title