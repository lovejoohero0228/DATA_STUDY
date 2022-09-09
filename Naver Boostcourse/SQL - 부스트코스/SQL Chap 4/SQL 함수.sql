/******* 단일 행 함수 *******/

/***** 숫자형 함수 ******/
/* ABS(숫자) */
SELECT ABS(-200);

/* ROUND(숫자, n) */
SELECT ROUND(2.18,1);

/* SQRT(숫자) */
SELECT SQRT(200);


/**** 문자형 함수 *****/
/* LOWER UPPER */
SELECT LOWER('AB');

/* LEFT(문자,N) : 왼쪽으로부터 N만큼 반환 */
SELECT LEFT('AB',1);
SELECT RIGHT('ABCDE',3);

/* LENGTH(문자) */
SELECT LENGTH('AB');

/******* 날짜형 함수 *********/
SELECT YEAR('2022-12-31');
SELECT MONTH('2022-12-31');
SELECT DAY('2022-12-31');

/*DATE_ADD(날짜, INTERVAL) : INTERVAL 만큼 더한 날짜 반환 */
SELECT DATE_ADD('2022-12-31', INTERVAL -1 MONTH);

/* DATEDIFF(날짜A, 날짜B) : 날짜간 차이 반환 */
SELECT DATEDIFF('2022-12-31','2022-12-1');

/******* 형변환 함수********/

/* DATE_FORMAT(날짜, 형식) : 날짜 형식으로 변환 */
SELECT DATE_FORMAT('2022-12-31', '%M-%D-%Y');
SELECT DATE_FORMAT('2022-12-31', '%m-%d-%y');

/* CAST(형식A, 형식B) : 형식 A를 형식B로 변환 */
SELECT CAST('2022-12-31 12:00:00' AS DATE);

/****** 일반 함수 *******/

/* IFNULL(A,B) : A가 NULL이면 B를 반환, 아니면, A 반환 */
SELECT IFNULL(NULL,0);
SELECT IFNULL('NULL이 아님',0);
SELECT IFNULL('NULL',0);  /* 가짜 NULL */

/* 
CASE WHEN [조건 1] THEN [반환 1]
	 WHEN [조건 2] THEN [반환 2]
	 ELSE [나머지] END
: 여러 조건별로 반환값 지정
*/

USE PRACTICE;

SELECT *
	  , CASE WHEN GENDER = 'MAN' THEN '남성'
			 ELSE '여성' END AS 성별
	FROM CUSTOMER;
    
/***** 함수 중첩 사용 *******/
SELECT *
	   , YEAR(JOIN_DATE) AS 가입연도
       , LENGTH(YEAR(JOIN_DATE)) AS 가입연도_문자수
	FROM CUSTOMER;


/************** 복수 행 함수 ****************/
/****** 집계 함수 *******/

SELECT COUNT(ORDER_NO) AS 구매횟수 /* 행수 */
	  , COUNT(DISTINCT MEM_NO) AS 구매자수 /* 중복 제거된 행수 */
      , SUM(SALES_QTY) AS 구매수량 /* 합계 */
      , AVG(SALES_QTY) AS 평균구매수량 /* 평균 */
      , MAX(ORDER_DATE) AS 최근구매일자 /* 최대 */
      , MIN(ORDER_DATE) AS 최초구매일자 /* 최소 */
	FROM SALES;
    

/****** 그룹 함수 ******/
/* WITH ROLLIP : GROUP BY 열들의 소계 및 합계를 확인 할 수 있음! */
SELECT YEAR(JOIN_DATE) AS 가입연도
	  ,ADDR
      ,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    GROUP BY 
		YEAR(JOIN_DATE), ADDR
	WITH ROLLUP;
    
/******* 집계함수 + GROUP BY *******/
SELECT MEM_NO
	   ,SUM(SALES_QTY) AS 구매수량
	FROM SALES
    GROUP BY MEM_NO;


/************ 윈도우 함수 ************/
/***** 순위 함수 *****/
/* ROW_NUMBER : 동일한 값이라도 고유한 순위 반환 (1,2,3,4,5...) */
/* RANK: 동일한 값이면 동일한 순위 반환 (1,2,3,3,5...) */
/* DENSE_RANK: 동일한 값이면 동일한 순위 반환 (+ 하나의 등수로 취급) (1,2,3,3,4...) */

SELECT ORDER_DATE
	   , ROW_NUMBER() OVER (ORDER BY ORDER_DATE ASC) AS 고유한_순위_반환
       , RANK() OVER (ORDER BY ORDER_DATE ASC) AS 동일한_순위_반환
       , DENSE_RANK() OVER (ORDER BY ORDER_DATE ASC) AS 동일한_순위_반환_하나의등수
	FROM SALES;
    
    
/* 순위함수 + PARTITION BY : 그룹별 순위 */
SELECT MEM_NO
	  , ORDER_DATE
      , ROW_NUMBER() OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 고유한_순위_반환
      , RANK() OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 동일한_순위_반환
      , DENSE_RANK() OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 동일한_순위_반환_하나의_등수
	FROM SALES;
    

 /******** 집계 함수 (누적) *********/
 
 SELECT ORDER_DATE
		,SALES_QTY
        , '-' AS 구분
        , COUNT(ORDER_NO) OVER (ORDER BY ORDER_DATE ASC) AS 누적_구매횟수
        , SUM(SALES_QTY) OVER (ORDER BY ORDER_DATE ASC) AS 누적_구매수량
        , AVG(SALES_QTY) OVER (ORDER BY ORDER_DATE ASC) AS 누적_평균구매수량
        , MAX(SALES_QTY) OVER (ORDER BY ORDER_DATE ASC) AS 누적_가장높은구매수량
        , MIN(SALES_QTY) OVER (ORDER BY ORDER_DATE ASC) AS 누적_가장낮은구매수량
	FROM SALES;
    
    
/******* 집계 함수 + PARTITION BY: 그룹별 집계 함수(누적) *********/
SELECT MEM_NO
	   ,ORDER_DATE
       ,SALES_QTY
       ,'-' AS 구분
       ,COUNT(ORDER_NO) OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 누적_구매횟수
       ,SUM(SALES_QTY) OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 누적_구매수량
       ,AVG(SALES_QTY) OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 누적_평균구매수량
       ,MAX(SALES_QTY) OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 누적_가장높은구매수량
       ,MIN(SALES_QTY) OVER (PARTITION BY MEM_NO ORDER BY ORDER_DATE ASC) AS 누적_가장낮은구매수량
	FROM SALES;