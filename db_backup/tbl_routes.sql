/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.28-MariaDB : Database - db_dms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_dms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_dms`;

/*Table structure for table `tbl_routes` */

DROP TABLE IF EXISTS `tbl_routes`;

CREATE TABLE `tbl_routes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_ID` int(11) NOT NULL,
  `DATE_ROUTE` datetime NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `MESSAGE` text NOT NULL,
  `RECEPIENT_EMAIL` varchar(50) NOT NULL,
  `GMAIL_MESSAGE_ID` varchar(20) NOT NULL DEFAULT '0',
  `RSTATUS` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbl_routes` */

insert  into `tbl_routes`(`ID`,`DOC_ID`,`DATE_ROUTE`,`SUBJECT`,`MESSAGE`,`RECEPIENT_EMAIL`,`GMAIL_MESSAGE_ID`,`RSTATUS`) values (2,566,'2023-08-26 08:52:05','THIS IS A TEST 4','                                Good day, <br><br>\n                                Please provide feedback on the attached document within 7 days to comply with our agency\'s policy.\n                                <br><br>\n                                Thank you.\n                                <br><br>\n                                <br><br>\n                                <br><br>\n                                <br><br>\n                                <br>\n                              ','alden.roxy@gmail.com','18a2f53a3780aa57',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
