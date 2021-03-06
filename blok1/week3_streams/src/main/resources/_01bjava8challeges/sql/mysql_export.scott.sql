-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema iska
--

CREATE DATABASE IF NOT EXISTS iska;
USE iska;

--
-- Definition of table `iska`.`dept`
--

DROP TABLE IF EXISTS `iska`.`dept`;
CREATE TABLE  `iska`.`dept` (
  `DEPTNO` bigint(20) NOT NULL,
  `DNAME` varchar(255) default NULL,
  `LOC` varchar(255) default NULL,
  PRIMARY KEY  (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iska`.`dept`
--
INSERT INTO `iska`.`dept` (`DEPTNO`,`DNAME`,`LOC`) VALUES 
 (10,'ACCOUNTING','NEW YORK'),
 (20,'RESEARCH','DALLAS'),
 (30,'SALES','CHICAGO'),
 (40,'OPERATIONS','BOSTON');

--
-- Definition of table `iska`.`emp`
--

DROP TABLE IF EXISTS `iska`.`emp`;
CREATE TABLE  `iska`.`emp` (
  `EMPNO` bigint(20) NOT NULL,
  `COMM` decimal(38,0) default NULL,
  `HIREDATE` date default NULL,
  `ENAME` varchar(255) default NULL,
  `JOB` varchar(255) default NULL,
  `SAL` decimal(38,0) default NULL,
  `MGR` bigint(20) default NULL,
  `DEPTNO` bigint(20) default NULL,
  PRIMARY KEY  (`EMPNO`),
  KEY `FK_EMP_DEPTNO` (`DEPTNO`),
  KEY `FK_EMP_MGR` (`MGR`),
  CONSTRAINT `FK_EMP_MGR` FOREIGN KEY (`MGR`) REFERENCES `emp` (`EMPNO`),
  CONSTRAINT `FK_EMP_DEPTNO` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iska`.`emp`
--
INSERT INTO `iska`.`emp` (`EMPNO`,`COMM`,`HIREDATE`,`ENAME`,`JOB`,`SAL`,`MGR`,`DEPTNO`) VALUES 
 (7369,NULL,'1980-12-17','SMITH','CLERK','800',7902,20),
 (7499,'300','1981-02-20','ALLEN','SALESMAN','1600',7698,30),
 (7521,'500','1981-02-22','WARD','SALESMAN','1250',7698,30),
 (7566,NULL,'1981-04-02','JONES','MANAGER','2975',7839,20),
 (7654,'1400','1981-09-28','MARTIN','SALESMAN','1250',7698,30),
 (7698,NULL,'1981-05-01','BLAKE','MANAGER','2850',7839,30),
 (7782,NULL,'1981-06-09','CLARK','MANAGER','2450',7839,10),
 (7788,NULL,'1987-04-19','SCOTT','ANALYST','3000',7566,20),
 (7839,NULL,'1981-11-17','KING','PRESIDENT','5000',NULL,10),
 (7844,'0','1981-09-08','TURNER','SALESMAN','1500',7698,30),
 (7876,NULL,'1987-05-23','ADAMS','CLERK','1100',7788,20),
 (7900,NULL,'1981-12-03','JAMES','CLERK','950',7698,30),
 (7902,NULL,'1981-12-03','FORD','ANALYST','3000',7566,20),
 (7934,NULL,'1982-01-23','MILLER','CLERK','1300',7782,10);

--
-- Definition of table `iska`.`salgrade`
--

DROP TABLE IF EXISTS `iska`.`salgrade`;
CREATE TABLE  `iska`.`salgrade` (
  `GRADE` decimal(38,0) NOT NULL,
  `HISAL` decimal(38,0) default NULL,
  `LOSAL` decimal(38,0) default NULL,
  PRIMARY KEY  (`GRADE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iska`.`salgrade`
--
INSERT INTO `iska`.`salgrade` (`GRADE`,`HISAL`,`LOSAL`) VALUES 
 ('1','1200','700'),
 ('2','1400','1201'),
 ('3','2000','1401'),
 ('4','3000','2001'),
 ('5','9999','3001');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
