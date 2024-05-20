SELECT 
    year(sales_date), 
    month(sales_date), 
    count(distinct t2.user_id) AS PUCHASED_USERS, 
    round(
        count(distinct t2.user_id) / (
            SELECT count(distinct user_id)
            FROM user_info
            WHERE year(joined) = '2021'
        ), 1) AS PUCHASED_RATIO
FROM user_info t1
    LEFT JOIN online_sale t2
    ON t1.user_id = t2.user_id
WHERE year(joined) = '2021' AND sales_date is not null
GROUP BY 1, 2
ORDER BY 1, 2