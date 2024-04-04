-- 001 테이블에서 특정 열(COLUMN) 선택하기
--   sql 문장은 대,소문자 구분없이 수행 
--   가독성을 위해서 sql은 대문자로 작성, 컬럼명과 테이블명은 소문자로 작성하기를 권장
--   sql을 작성할때는 코딩순서를 지키는 것이 중요하다 (select ~ from)
SELECT empno, ename, sal
FROM emp;

-- 002 테이블에서 모든 열(COLUMN) 출력하기
--   모든 열을 조회할때는 "*"를 사용
--   모든 컬럼을 출력하고 마지막에 한번 특정 컬럼을 한번 더 출력하는 경우는 "*" 앞에 '테이블명.' 을 붙여주고 한번 더 출력할 컬럼을 작성
--   (select dept.*, deptno from dept;
SELECT *
FROM emp;