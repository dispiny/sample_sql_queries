SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog' 
AND UPPER(NAME) REGEXP ('el|eL|El|EL')
ORDER BY NAME