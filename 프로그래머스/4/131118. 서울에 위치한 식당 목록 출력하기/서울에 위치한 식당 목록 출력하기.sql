-- 코드를 입력하세요
SELECT A.REST_ID,A.REST_NAME,A.FOOD_TYPE,A.FAVORITES,A.ADDRESS,ROUND(AVG(B.REVIEW_SCORE),2) AS SCORE FROM REST_INFO A
JOIN REST_REVIEW B ON A.REST_ID = B.REST_ID
WHERE ADDRESS LIKE ('서울%')
GROUP BY A.REST_ID

ORDER BY SCORE DESC,A.FAVORITES DESC