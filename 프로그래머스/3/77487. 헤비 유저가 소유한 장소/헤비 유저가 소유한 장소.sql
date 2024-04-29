-- 1. 공간을 둘 이상 등록한 사람
-- 2. 등록한 공간의 정보를 아이디순으로 조회
-- -------------------------------------
SELECT *
FROM places
WHERE host_id IN (
    SELECT host_id
    FROM places
    GROUP BY host_id
    HAVING COUNT(host_id) > 1
)
ORDER BY id
