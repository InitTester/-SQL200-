-- 011 비교 연산자 배우기 ② (BETWEEN AND)
SELECT ename,
       sal
FROM emp
WHERE sal BETWEEN 1000 AND 3000;

SELECT ename,
       sal
FROM emp
WHERE (sal >= 1000 AND sal <= 3000);

SELECT ename,
       sal
FROM emp
WHERE sal NOT BETWEEN 1000 AND 3000;

SELECT ename,
      sal
FROM emp
WHERE (sal < 1000 OR sal > 3000);

SELECT ename,
       hiredate
FROM emp
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

-- 012 비교 연상자 배우기 ③ (LIKE)
SELECT ename,
       sal
FROM emp
WHERE ename LIKE 'S%';

SELECT ename
FROM emp
WHERE ename LIKE '_M%';

SELECT ename
FROM emp
WHERE ename LIKE '%T';

SELECT ename
FROM emp
WHERE ename LIKE '%A%'; 

