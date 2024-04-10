-- 009 산술 연산자 배우기 (*, /, +, -)
SELECT ename,
       sal *12 as 연봉
FROM emp
WHERE sal*12 >= 36000;

-- NULL : 데이터가 없는상ㅌ, 데이터가 할당되지 않은 상태 또는 알 수 없는 값
-- 그렇기 때문에 null + sal = null 이다, 이 경우 null을 NVL(comm,0)로 변경해야
-- 산술 연산자가 null이 아닌 값으로 출력이 가능하다.
SELECT ename,
       sal,
       comm,
       sal + NVL(comm,0)
FROM emp
WHERE deptno = 10;

-- 010 비교 연산자 배우기 ① (>, <, >=, <=, =, !=, <>, ^=)
SELECT ename,
       sal, 
       job,
       deptno
FROM emp
WHERE sal <= 1200;
