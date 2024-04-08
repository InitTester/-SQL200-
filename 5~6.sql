-- 005 중복된 데이터를 제거해서 출력하기(DISTINCT)
SELECT DISTINCT job
FROM emp;

SELECT UNIQUE job
FROM emp;

-- 006 데이터를 정렬해서 출력하기(ORDER BY)
-- 오름차순 : ASCENDING(ASC), 내림차순 : DESCENDING(DESC)
SELECT ename,  
       sal
FROM emp
ORDER BY sal asc;

-- 코딩순서 : SELECT -> FROM -> ORDER BY / 실행 순서 : FROM -> SELECT -> ORDER BY 
-- ORDER BY 절은 맨 마지막에 실행되기 때문에 SELECT절에 사용한 컬럼 별칭을
-- ORDER BY 절에 사용이 가능하다.
SELECT ename,
       sal as 월급
FROM emp
ORDER BY 월급 asc;

SELECT ename,
       deptno,
       sal
FROM emp
ORDER BY deptno asc, sal desc;
-- ORDER BY 절에 컬럼명 대신 숫자를 사용가능하다
SELECT ename,
       deptno,
       sal
FROM emp
ORDER BY 2 asc, 3 desc; -- 2 : deptno, 3: sal



