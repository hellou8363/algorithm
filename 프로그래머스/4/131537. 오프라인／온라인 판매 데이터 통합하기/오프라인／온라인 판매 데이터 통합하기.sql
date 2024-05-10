SELECT date_format(sales_date, '%Y-%m-%d') AS sales_date, product_id, user_id, sales_amount
FROM ((
    SELECT *
    FROM online_sale
    WHERE sales_date LIKE '2022-03-%'
    )
    UNION
    (
    SELECT offline_sale_id, null, product_id, sales_amount, sales_date
    FROM offline_sale
    WHERE sales_date LIKE '2022-03-%'
    )) t1
ORDER BY 1, 2, 3

