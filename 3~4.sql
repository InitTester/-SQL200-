-- 003 컬럼 별칭을 사용하여 출력되는 컬럼명 변경하기
--   컬럼 별칭 양쪽에 더블 쿼테이션 마크로 감싸주는 경우
--    1. 대소문자를 구분하여 출력
--    2. 공백문자를 출력
--    3. 특수문자를 출력($, _, #만 가능) 
SELECT empno as 사원번호,
       ename as 사원이름,
       sal   as "Salary"
FROM emp;

-- 004 연결 연산자 사용하기(II)
SELECT ename || sal
FROM emp;

SELECT ename || '의 월급은 ' || sal || '입니다 ' as 월급정보
FROM emp;

SELECT ename || '의 직업은 ' || job || '입니다 ' as 직업정보
FROM emp;