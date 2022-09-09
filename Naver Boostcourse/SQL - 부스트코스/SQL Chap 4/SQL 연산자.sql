USE PRACTICE;

/*****연산자*****/
/*****비교 연산자*****/

/* = : 같음 */
SELECT *
	FROM CUSTOMER
    WHERE GENDER = 'MAN';

/* <> : 같지 않음 */
SELECT * 
	FROM CUSTOMER
    WHERE GENDER <> 'MAN';
    
/* 대소비교 */
SELECT * 
	FROM CUSTOMER 
    WHERE YEAR(JOIN_DATE) > 2019;
    
/******논리 연산자*****/

/* AND */
SELECT *
	FROM CUSTOMER 
    WHERE GENDER = 'MAN'
    AND ADDR = 'Gyeonggi';
    
/* NOT */
SELECT *
	FROM CUSTOMER 
    WHERE NOT GENDER = 'MAN'
    AND ADDR = 'Gyeonggi';
    
/* OR */
SELECT *
	FROM CUSTOMER 
    WHERE GENDER = 'MAN'
    OR ADDR = 'Gyeonggi';
    

/****** 특수 연산자 ******/

/* BETWEEN A AND B */
SELECT *
	FROM CUSTOMER
    WHERE YEAR(BIRTHDAY) BETWEEN 2010 AND 2011;
    
/* NOT BETWEEN A AND B */
SELECT *
	FROM CUSTOMER
    WHERE YEAR(BIRTHDAY) NOT BETWEEN 2010 AND 2011;    
    
/* IN (LIST) : 리스트 값 */
SELECT *
	FROM CUSTOMER
    WHERE YEAR(BIRTHDAY) IN (2010,2011);
    
/* LIKE 비교문자열 */
SELECT *
	FROM CUSTOMER
    WHERE ADDR LIKE 'D%'; /* D로 시작하는 */
  
SELECT *
	FROM CUSTOMER
    WHERE ADDR LIKE '%N'; /* N으로 시작하는 */
    
SELECT *
	FROM CUSTOMER
    WHERE ADDR LIKE '%EO%'; /* ~를 포함하는 */
    
SELECT *
	FROM CUSTOMER
    WHERE ADDR NOT LIKE 'D%'; /* ~로 시작하지 않는 */
    
/* IS NULL */
SELECT *
	FROM CUSTOMER AS A
    LEFT JOIN SALES AS B
    ON A.MEM_NO = B.MEM_NO
    WHERE B.MEM_NO IS NULL;
    
/* IS NOT NULL */
SELECT *
	FROM CUSTOMER AS A
    LEFT JOIN SALES AS B
    ON A.MEM_NO = B.MEM_NO
    WHERE B.MEM_NO IS NOT NULL;
    
    
/**** 산술 연산자 *****/
SELECT *
	   ,A.SALES_QTY * PRICE AS 결제금액
	FROM SALES AS A
    LEFT JOIN PRODUCT AS B
    ON A.PRODUCT_CODE = B.PRODUCT_CODE;