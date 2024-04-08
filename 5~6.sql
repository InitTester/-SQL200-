-- 005 �ߺ��� �����͸� �����ؼ� ����ϱ�(DISTINCT)
SELECT DISTINCT job
FROM emp;

SELECT UNIQUE job
FROM emp;

-- 006 �����͸� �����ؼ� ����ϱ�(ORDER BY)
-- �������� : ASCENDING(ASC), �������� : DESCENDING(DESC)
SELECT ename,  
       sal
FROM emp
ORDER BY sal asc;

-- �ڵ����� : SELECT -> FROM -> ORDER BY / ���� ���� : FROM -> SELECT -> ORDER BY 
-- ORDER BY ���� �� �������� ����Ǳ� ������ SELECT���� ����� �÷� ��Ī��
-- ORDER BY ���� ����� �����ϴ�.
SELECT ename,
       sal as ����
FROM emp
ORDER BY ���� asc;

SELECT ename,
       deptno,
       sal
FROM emp
ORDER BY deptno asc, sal desc;
-- ORDER BY ���� �÷��� ��� ���ڸ� ��밡���ϴ�
SELECT ename,
       deptno,
       sal
FROM emp
ORDER BY 2 asc, 3 desc; -- 2 : deptno, 3: sal



