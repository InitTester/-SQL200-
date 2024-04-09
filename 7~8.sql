-- 007 WHERE절 배우기 ① (숫자 데이터 검색)
-- > 크다, < 작다, BETWEEN AND ~사이에 있는, LIKE 일치하는 문자 패턴 검색
SELECT ename,
       sal,
       job
FROM emp
WHERE sal = 3000;
-- >= 크거나 같다, <= 작거나 같다, = 같다, != 같지 않다, ^= 같지 않다, <> 같지 않다
-- IS NULL : NULL 값인지 여부, IN 값 리스트 중 일치하는 값 검색

SELECT ename as 이름,
       sal as 월급
FROM emp
WHERE sal >= 3000;

-- ORA-00904: "월급": 부적합한 식별자
--00904. 00000 -  "%s: invalid identifier"
--*Cause:    
--*Action:
--19행, 15열에서 오류 발생
-- 에러가 나는 이유는 오라클SQL 실행 순서때문이다.
-- 코딩순서 : SELECT -> FROM -> WHERE
-- 실행순서 : FROM -> WHERE -> SELECT
SELECT ename as 이름,
       sal as 월급
FROM emp
WHERE 월급 >= 3000;


-- 008 WHERE절 배우기 ②(문자와 날짜 검색)
SELECT ename,
       sal,
       job,
       hiredate,
       deptno
FROM emp
WHERE ename = 'SCOTT';

SELECT ename,
       hiredate
FROM emp
WHERE hiredate = '81/11/17';

-- 현재 접속한 세션 날짜 형식은 NSL_SESSION_PARAMETERS로 조회해서 확인
SELECT *
FROM NLS_SESSION_PARAMETERS
WHERE PARAMETER = 'NLS_DATE_FORMAT';  -- RR/MM/DD

-- YY : 연도 2자리, MON : 월의 영문 약어, DY : 요일 약어, D : 요일의 숫자
-- WW : 연의 주, IW : ISO 표준에 따른 년의 주

ALTER SESSION SET NLS_DATE_FORMAT='YY/MM/DD';
ALTER SESSION SET NLS_DATE_FORMAT='RR/MM/DD';