-- FROM 동물의 정보를 담은 테이블에서
-- WHERE 중성화가 되어 있다면 'O', 아니라면 'X' 표시로 변경
-- SELECT 동물의 아이디, 이름, 중성화 여부를 조회
-- ORDER BY 아이디 순으로
SELECT animal_id, name,
    CASE
        WHEN sex_upon_intake = 'Neutered Male' then 'O'
        WHEN sex_upon_intake = 'Spayed Female' then 'O'
        ELSE 'X'
    END
FROM animal_ins
ORDER BY animal_id