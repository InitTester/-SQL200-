-- 003 �÷� ��Ī�� ����Ͽ� ��µǴ� �÷��� �����ϱ�
--   �÷� ��Ī ���ʿ� ���� �����̼� ��ũ�� �����ִ� ���
--    1. ��ҹ��ڸ� �����Ͽ� ���
--    2. ���鹮�ڸ� ���
--    3. Ư�����ڸ� ���($, _, #�� ����) 
SELECT empno as �����ȣ,
       ename as ����̸�,
       sal   as "Salary"
FROM emp;

-- 004 ���� ������ ����ϱ�(II)
SELECT ename || sal
FROM emp;

SELECT ename || '�� ������ ' || sal || '�Դϴ� ' as ��������
FROM emp;

SELECT ename || '�� ������ ' || job || '�Դϴ� ' as ��������
FROM emp;