USE PRACTICE;

/***********SELECT SUB-QUERY*********/
/* SELECT 명령문 안에 SELECT 명령문 */

SELECT *
	   , (SELECT GENDER FROM CUSTOMER WHERE A.MEM_NO = MEM_NO) AS GENDER
	FROM SALES AS A;
    
/* 확인 */
SELECT *
	FROM CUSTOMER
    WHERE MEM_NO = '1000970';
    

/***********FROM SUB-QUERY*********/
/* FROM 명령문 안에 SELECT 명령문 */

SELECT *
	FROM (
		  SELECT MEM_NO
                 ,COUNT(ORDER_NO) AS 주문횟수
                 FROM SALES
                 GROUP BY MEM_NO
		  )AS A;
          
/* 열 및 테이블 명 지정 */

SELECT MEM_NO
        ,COUNT(ORDER_NO) AS 주문횟수
	FROM SALES
	GROUP BY MEM_NO;
    
/***********WHERE SUB-QUERY*********/
/* WHERE 명령문 안에 SELECT 명령문 */

SELECT COUNT(ORDER_NO) AS 주문횟수
	FROM SALES
    WHERE MEM_NO IN (SELECT MEM_NO FROM CUSTOMER WHERE YEAR(JOIN_DATE) = 2019);  /* IN 뒤에는 LIST 형태 ONLY */
    
/* YEAR : 날짜형 데이터의 연도만 반환 */

/*LIST 형태인지 확인 */
SELECT MEM_NO FROM CUSTOMER WHERE YEAR(JOIN_DATE) = 2019;  


/*****************SUB QUERY * JOIN ***************/
/* 임시테이블 생성 */

CREATE TEMPORARY TABLE SALES_SUB_QUERY
SELECT A.구매횟수, B.*
	FROM (
          SELECT MEM_NO,
                 COUNT(ORDER_NO) AS 구매횟수
			FROM SALES
            GROUP BY MEM_NO
		  )AS A
	INNER JOIN CUSTOMER AS B
    ON A.MEM_NO = B.MEM_NO;
    
/* 임시 테이블 확인 및 정리 */
SELECT ADDR
       ,SUM(구매횟수) AS 구매횟수
	FROM SALES_SUB_QUERY
    WHERE GENDER = 'MAN'
    GROUP BY ADDR
    HAVING 구매횟수 < 100
    ORDER BY 구매횟수 ASC;
	

