--create table

CREATE TABLE BRANCH 
(
    BRANCHNO	INT CONSTRAINT PK_BRANCH_BRANCHNO PRIMARY KEY,
    BRANCHNAME  VARCHAR2(20) NOT NULL,
    LOCATION    VARCHAR2(20) NOT NULL 
);

CREATE TABLE DEPT    
(
    DEPTNO      NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
    DNAME       VARCHAR2(14) NOT NULL UNIQUE, 
    BRANCHNO    INT CONSTRAINT FK_DEPT_BRANCHNO REFERENCES BRANCH
);

CREATE TABLE EMP
(
    EMPNO 		NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
    ENAME 		VARCHAR2(10),
    JOB 		VARCHAR2(9),
    MGR 		NUMBER(4),
    HIREDATE 	DATE,
    SAL 		NUMBER(7,2),
    COMM 		NUMBER(7,2),
    DEPTNO 		NUMBER(2) CONSTRAINT FK_EMP_DEPTNO REFERENCES DEPT,
    BRANCHNO 	INT CONSTRAINT FK_EMP_BRANCHNO REFERENCES BRANCH
);  