--  테이블에는 7시에서 19시 사이에 대한 내용만 있으나 해당 Query는 0시에서 23시 까지 분석하는 Query이다.
SET @HOUR = -1; 
SELECT (@HOUR := @HOUR + 1) HOUR, (
    SELECT COUNT(*) 
    FROM ANIMAL_OUTS 
    WHERE HOUR(DATETIME) = @HOUR 
) 
COUNT 
FROM ANIMAL_OUTS 
WHERE @HOUR < 23