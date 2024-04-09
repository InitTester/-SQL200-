-- 007 WHERE�� ���� �� (���� ������ �˻�)
-- > ũ��, < �۴�, BETWEEN AND ~���̿� �ִ�, LIKE ��ġ�ϴ� ���� ���� �˻�
SELECT ename,
       sal,
       job
FROM emp
WHERE sal = 3000;
-- >= ũ�ų� ����, <= �۰ų� ����, = ����, != ���� �ʴ�, ^= ���� �ʴ�, <> ���� �ʴ�
-- IS NULL : NULL ������ ����, IN �� ����Ʈ �� ��ġ�ϴ� �� �˻�

SELECT ename as �̸�,
       sal as ����
FROM emp
WHERE sal >= 3000;

-- ORA-00904: "����": �������� �ĺ���
--00904. 00000 -  "%s: invalid identifier"
--*Cause:    
--*Action:
--19��, 15������ ���� �߻�
-- ������ ���� ������ ����ŬSQL ���� ���������̴�.
-- �ڵ����� : SELECT -> FROM -> WHERE
-- ������� : FROM -> WHERE -> SELECT
SELECT ename as �̸�,
       sal as ����
FROM emp
WHERE ���� >= 3000;


-- 008 WHERE�� ���� ��(���ڿ� ��¥ �˻�)
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

-- ���� ������ ���� ��¥ ������ NSL_SESSION_PARAMETERS�� ��ȸ�ؼ� Ȯ��
SELECT *
FROM NLS_SESSION_PARAMETERS
WHERE PARAMETER = 'NLS_DATE_FORMAT';  -- RR/MM/DD

-- YY : ���� 2�ڸ�, MON : ���� ���� ���, DY : ���� ���, D : ������ ����
-- WW : ���� ��, IW : ISO ǥ�ؿ� ���� ���� ��

ALTER SESSION SET NLS_DATE_FORMAT='YY/MM/DD';
ALTER SESSION SET NLS_DATE_FORMAT='RR/MM/DD';