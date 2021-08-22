SELECT
    OUTS.ANIMAL_ID, OUTS.NAME
FROM
    ANIMAL_OUTS AS OUTS
RIGHT JOIN
    ANIMAL_INS AS INS
ON 
    INS.ANIMAL_ID = OUTS.ANIMAL_ID
ORDER BY
    DATEDIFF(OUTS.DATETIME, INS.DATETIME) DESC
LIMIT
    2;