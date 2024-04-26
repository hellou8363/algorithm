-- 1. 2번 형질을 보유하지 않음
-- 2. 1번이나 3번 형질을 보유
-- 3. 대장균 개체 수 출력(COUNT)
-- ---------------------------
SELECT count(*) AS count
FROM ecoli_data
WHERE 
    NOT genotype & 2 -- 두 번째 비트가 0인 레코드
 -- AND (genotype & 4 OR genotype & 1) -- 네 번째 또는 첫 번쨰 비트가 1인 레코드
    AND genotype & 5 -- 첫 번째, 네 번째 비트가 1인 레코드
 -- 0 0 0 1 = 1
 -- 0 1 0 0 = 4
 -- ------------ OR 연산
 -- 0 1 0 1 = 5