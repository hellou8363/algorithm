SELECT product_name, year, price
FROM product t1
    JOIN sales t2
    ON t1.product_id = t2.product_id