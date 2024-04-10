-- 009 ��� ������ ���� (*, /, +, -)
SELECT ename,
       sal *12 as ����
FROM emp
WHERE sal*12 >= 36000;

-- NULL : �����Ͱ� ���»�, �����Ͱ� �Ҵ���� ���� ���� �Ǵ� �� �� ���� ��
-- �׷��� ������ null + sal = null �̴�, �� ��� null�� NVL(comm,0)�� �����ؾ�
-- ��� �����ڰ� null�� �ƴ� ������ ����� �����ϴ�.
SELECT ename,
       sal,
       comm,
       sal + NVL(comm,0)
FROM emp
WHERE deptno = 10;

-- 010 �� ������ ���� �� (>, <, >=, <=, =, !=, <>, ^=)
SELECT ename,
       sal, 
       job,
       deptno
FROM emp
WHERE sal <= 1200;
