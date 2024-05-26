SELECT customer_id, count(customer_id) AS count_no_trans
FROM visits t1
    LEFT JOIN transactions t2
    ON t1.visit_id = t2.visit_id
WHERE transaction_id IS NUll
GROUP BY 1
