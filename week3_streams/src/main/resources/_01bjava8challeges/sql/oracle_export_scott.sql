--------------------------------------------------------
--  File created - Monday-May-14-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "ISKA"."DEPT" 
   (	"DEPTNO" NUMBER(24,0), 
	"DNAME" VARCHAR2(255 CHAR), 
	"LOC" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "ISKA"."EMP" 
   (	"EMPNO" NUMBER(24,0), 
	"COMM" FLOAT(26), 
	"HIREDATE" DATE, 
	"ENAME" VARCHAR2(255 CHAR), 
	"JOB" VARCHAR2(255 CHAR), 
	"SAL" FLOAT(26), 
	"MGR" NUMBER(24,0), 
	"DEPTNO" NUMBER(24,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALGRADE
--------------------------------------------------------

  CREATE TABLE "ISKA"."SALGRADE" 
   (	"GRADE" FLOAT(26), 
	"HISAL" FLOAT(26), 
	"LOSAL" FLOAT(26)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

REM INSERTING into ISKA.DEPT
SET DEFINE OFF;
Insert into ISKA.DEPT (DEPTNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into ISKA.DEPT (DEPTNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into ISKA.DEPT (DEPTNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into ISKA.DEPT (DEPTNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');
REM INSERTING into ISKA.EMP
SET DEFINE OFF;
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7369,null,to_date('17-DEC-80','DD-MON-RR'),'SMITH','CLERK',800,7902,20);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7499,300,to_date('20-FEB-81','DD-MON-RR'),'ALLEN','SALESMAN',1600,7698,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7521,500,to_date('22-FEB-81','DD-MON-RR'),'WARD','SALESMAN',1250,7698,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7566,null,to_date('02-APR-81','DD-MON-RR'),'JONES','MANAGER',2975,7839,20);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7654,1400,to_date('28-SEP-81','DD-MON-RR'),'MARTIN','SALESMAN',1250,7698,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7698,null,to_date('01-MAY-81','DD-MON-RR'),'BLAKE','MANAGER',2850,7839,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7782,null,to_date('09-JUN-81','DD-MON-RR'),'CLARK','MANAGER',2450,7839,10);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7788,null,to_date('19-APR-87','DD-MON-RR'),'SCOTT','ANALYST',3000,7566,20);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7839,null,to_date('17-NOV-81','DD-MON-RR'),'KING','PRESIDENT',5000,null,10);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7844,0,to_date('08-SEP-81','DD-MON-RR'),'TURNER','SALESMAN',1500,7698,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7876,null,to_date('23-MAY-87','DD-MON-RR'),'ADAMS','CLERK',1100,7788,20);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7900,null,to_date('03-DEC-81','DD-MON-RR'),'JAMES','CLERK',1150,7698,30);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7902,null,to_date('03-DEC-81','DD-MON-RR'),'FORD','ANALYST',3000,7566,20);
Insert into ISKA.EMP (EMPNO,COMM,HIREDATE,ENAME,JOB,SAL,MGR,DEPTNO) values (7934,null,to_date('23-JAN-82','DD-MON-RR'),'MILLER','CLERK',1300,7782,10);
REM INSERTING into ISKA.SALGRADE
SET DEFINE OFF;
Insert into ISKA.SALGRADE (GRADE,HISAL,LOSAL) values (1,1200,700);
Insert into ISKA.SALGRADE (GRADE,HISAL,LOSAL) values (2,1400,1201);
Insert into ISKA.SALGRADE (GRADE,HISAL,LOSAL) values (3,2000,1401);
Insert into ISKA.SALGRADE (GRADE,HISAL,LOSAL) values (4,3000,2001);
Insert into ISKA.SALGRADE (GRADE,HISAL,LOSAL) values (5,9999,3001);
--------------------------------------------------------
--  DDL for Index FK_EMP_DEPTNO
--------------------------------------------------------

  CREATE INDEX "ISKA"."FK_EMP_DEPTNO" ON "ISKA"."EMP" ("DEPTNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FK_EMP_MGR
--------------------------------------------------------

  CREATE INDEX "ISKA"."FK_EMP_MGR" ON "ISKA"."EMP" ("MGR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "ISKA"."DEPT" ADD CONSTRAINT "PK_DEPT" PRIMARY KEY ("DEPTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ISKA"."DEPT" MODIFY ("DEPTNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "ISKA"."EMP" ADD CONSTRAINT "PK_EMP" PRIMARY KEY ("EMPNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ISKA"."EMP" MODIFY ("EMPNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALGRADE
--------------------------------------------------------

  ALTER TABLE "ISKA"."SALGRADE" ADD CONSTRAINT "PK_SALGRADE" PRIMARY KEY ("GRADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ISKA"."SALGRADE" MODIFY ("GRADE" NOT NULL ENABLE);

--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "ISKA"."EMP" ADD CONSTRAINT "FK_EMP_DEPTNO" FOREIGN KEY ("DEPTNO")
	  REFERENCES "ISKA"."DEPT" ("DEPTNO") ENABLE;
  ALTER TABLE "ISKA"."EMP" ADD CONSTRAINT "FK_EMP_MGR" FOREIGN KEY ("MGR")
	  REFERENCES "ISKA"."EMP" ("EMPNO") ENABLE;
