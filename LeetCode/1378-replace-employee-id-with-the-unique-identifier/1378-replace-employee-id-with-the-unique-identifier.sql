SELECT unique_id, name
FROM employees t1
    LEFT JOIN employeeuni t2
    ON t1.id = t2.id
