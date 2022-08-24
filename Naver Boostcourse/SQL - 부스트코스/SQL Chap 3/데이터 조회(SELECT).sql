USE Practice;

/*************FROM***************/

/* Customer 테이블 모든 열 조회 */
SELECT *
	FROM CUSTOMER;
    
/***********WHERE***************/

/* 성별이 남성 조건으로 필터링 */
SELECT *
	FROM CUSTOMER
    WHERE GENDER = 'MAN';
    
/************GROUPBY***********/

/* 지역별로 회원수 집계 */
SELECT ADDR
		,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    WHERE GENDER = 'MAN'
    GROUP BY ADDR;
    
/* COUNT: 행들의 개수를 구하는 집계함수 */

/************HAVING*************/

/* 집계 회원수 100명 미만 조건으로 필터링 */
SELECT ADDR
		,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    WHERE GENDER ='MAN'
    GROUP BY ADDR
    HAVING COUNT(MEM_NO) < 100;
    
/**********ORDER BY************/

/* 집계 회원수가 높은 순으로 정렬 */
SELECT ADDR
		,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    WHERE GENDER ='MAN'
    GROUP BY ADDR
    HAVING COUNT(MEM_NO) < 100
    ORDER BY COUNT(MEM_NO) DESC;   /* ASC 오름차순 */
    
/******* FROM -> (WHERE) -> GROUP BY **********/

/* FROM -> GROUP BY 순으로 작성해도 괜찮음 */
SELECT ADDR
		,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    /* WHERE GENDER = 'MAN' */
    GROUP BY ADDR;
    
/**********GROUP BY + 집계함수**************/
/* 거주지역을 서울, 인천 조건으로 필터링 -> WHERE */
/* 거주지역 및 성별로 회원수 집계 -> GROUP BY */

SELECT ADDR
		,GENDER
		,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    WHERE ADDR IN ('SEOUL', 'INCHEON')   /* IN : 특수 연산자 / IN (LIST) / 리스트 값만 입력 받음*/
    GROUP BY ADDR, GENDER;
    


/************SQL 명령어 작성 실습**************/
/* CUSTOMER 이용 */
/* 성별이 남성 조건으로 필터링하여 -> WHERE */
/* 거주지역별로 회원수 집계 -> GROUP BY */
/* 집계 회원수 100명 미만 조건으로 필터링 -> HAVING */
/* 모든 열 조회 */
/* 집계 회원수가 높은 순으로 정렬 -> ORDER BY */

SELECT ADDR
	   ,COUNT(MEM_NO) AS 회원수
	FROM CUSTOMER
    WHERE GENDER = 'MAN'
    GROUP BY ADDR
    HAVING 회원수  < 100
    ORDER BY 회원수 DESC;
  /* INDENTATION 이게 나음? /
SELECT  ADDR
		,COUNT(MEM_NO) AS 회원수
  FROM  CUSTOMER
 WHERE  GENDER = 'MAN'
 GROUP
    BY  ADDR
HAVING  회원수 < 100
 ORDER
    BY  회원수 DESC;