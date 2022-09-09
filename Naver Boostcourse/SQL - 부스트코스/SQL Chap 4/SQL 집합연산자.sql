/******* 집합 연산자 ********/
USE PRACTICE;

CREATE TEMPORARY TABLE SALES_2019
SELECT *
	FROM SALES
    WHERE YEAR(ORDER_DATE) = '2019';
    
/* 1235행 */
SELECT *
	FROM SALES_2019;
    
/* 3115행 */
SELECT *
	FROM SALES;

/* UNION : 2개 이상 테이블 중복된 행 제거하여 집합 (열 개수와 데이터 타입 일치) */
SELECT *
	FROM SALES_2019
UNION
SELECT *
	FROM SALES;
    
/* UNION ALL : 2개 이상 테이블 중복된 행 제거하여 집합 (열 개수와 데이터 타입 일치) */
SELECT *
	FROM SALES_2019
UNION ALL
SELECT *
	FROM SALES;
    
