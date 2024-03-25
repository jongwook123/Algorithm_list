-- 코드를 작성해주세요
SELECT A.ID,B.FISH_NAME,A.LENGTH FROM FISH_INFO A
JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE
WHERE A.FISH_TYPE IN (SELECT FISH_TYPE FROM FISH_INFO GROUP BY FISH_TYPE HAVING LENGTH=MAX(LENGTH))
ORDER BY A.ID





