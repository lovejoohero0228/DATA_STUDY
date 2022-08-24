/* Practice 데이터베이스 사용 */
USE Practice;

/**********테이블 생성 (CREATE)*********/
/* 회원테이블 생성 */
CREATE TABLE 회원테이블 (
회원번호 INT PRIMARY KEY,
이름 VARCHAR(20),
가입일자 DATE NOT NULL,
수신동의 BIT
);


/*************데이터 삽입**************/
INSERT 
	INTO 회원테이블 
    VALUES (1001,'홍길동','2020-01-02',1);
INSERT 
	INTO 회원테이블 
    VALUES (1002,'이순신','2020-01-03',0);
INSERT 
	INTO 회원테이블 
    VALUES (1003,'장영실','2020-01-04',1);
INSERT 	
	INTO 회원테이블 
    VALUES (1004,'유관순','2020-01-05',0);

SELECT * FROM 회원테이블;


/***********데이터 조회************/
/* 모든 열 조회 */
SELECT * FROM 회원테이블;

/*특정 열 조회 */
SELECT 회원번호, 이름 FROM 회원테이블;

/*특정 열 이름 바꿔서 조회 (원본 열 이름은 변경되지 않고, 일시적으로 이름이 변경되어 호출)*/
SELECT 회원번호, 이름 AS 성명 FROM 회원테이블;
SELECT * FROM 회원테이블;


/************데이터 수정************/
/* 모든 데이터 수정 */
UPDATE 회원테이블 
	SET 수신동의 = 0;

SELECT * FROM 회원테이블;

/* 특정 조건 데이터 수정 */
UPDATE 회원테이블
	SET 수신동의 =1
    WHERE 이름= '홍길동';

SELECT * FROM 회원테이블;


/**********데이터 삭제***********/
/* 특정 데이터 삭제 */
DELETE
	FROM 회원테이블
    WHERE 이름 = '홍길동';

SELECT * FROM 회원테이블;

/* 모든 데이터 삭제 */
DELETE
	FROM 회원테이블;
    
SELECT * FROM 회원테이블;

