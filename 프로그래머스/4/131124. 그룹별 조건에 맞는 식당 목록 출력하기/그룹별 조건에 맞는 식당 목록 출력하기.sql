SELECT member_name, review_text, DATE_FORMAT(review_date, '%Y-%m-%d')
FROM rest_review t1
    JOIN member_profile t2
    ON t1.member_id = t2.member_id
WHERE t1.member_id IN (
    SELECT member_id -- 리뷰를 가장 많이 작성한 회원 ID
    FROM rest_review
    GROUP BY member_id
    HAVING count(member_id) = (
        SELECT max(count) -- 회원 별 가장 많이 작성된 리뷰의 개수
        FROM (
            SELECT count(member_id) AS count
            FROM rest_review
            GROUP BY member_id
        ) t1
    )
)
ORDER BY 3, 2