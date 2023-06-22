/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.27 : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student`;

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `SID` decimal(3,0) NOT NULL,
  `SNAME` varchar(25) NOT NULL,
  `DEPT` varchar(40) NOT NULL,
  `PERC` decimal(6,3) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `registration` */

insert  into `registration`(`SID`,`SNAME`,`DEPT`,`PERC`) values ('1','Ayan','MCA','84.000'),('2','Sunny','MCA','86.000'),('3','Subho','BCA','78.000'),('4','Rohan','BBA','80.000'),('5','Rahul','MBA','82.000'),('40','ratna','mca','95.000'),('48','ayaan','mca','84.000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
