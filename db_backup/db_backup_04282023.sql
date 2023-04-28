/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.24-MariaDB : Database - db_dms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_dms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_dms`;

/*Table structure for table `lib_components` */

CREATE TABLE `lib_components` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPONENT` varchar(30) DEFAULT NULL,
  `PROGRAM` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lib_components` */

/*Table structure for table `lib_metadata` */

CREATE TABLE `lib_metadata` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `SIGNATORIES` varchar(50) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

/*Data for the table `lib_metadata` */

insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (1,'CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (2,'BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (3,'SYSTEMS COORDINATOR',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (4,'RITO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (5,'CMT II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (6,'MCCT BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (7,'SWO III / MCCT FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (8,'TS II / ISO FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (9,'TS I',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (10,'FINANCIAL ANALYST III',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (11,'CASE MANAGEMENT',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (12,'DIVISION CHIEF',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (13,'RGO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (14,'GRS',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (15,'FINANCIAL ANALYST II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (16,'IPDO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (17,'GAD FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (18,'MCCT CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (19,'PARTNERSHIP FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (20,'PCOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (21,'RPMOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (22,'Naifah S. Balindong',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (23,'Jadidah B. Rasuman-Alangca',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (24,'Yasmin Mantawil',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (25,'Loreto Jr. V. Cabaya',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (26,'NPMO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (27,'RMEO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (28,'CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (29,'BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (30,'SYSTEMS COORDINATOR',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (31,'RITO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (32,'CMT II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (33,'MCCT BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (34,'SWO III / MCCT FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (35,'TS II / ISO FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (36,'TS I',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (37,'FINANCIAL ANALYST III',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (38,'CASE MANAGEMENT',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (39,'DIVISION CHIEF',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (40,'RGO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (41,'GRS',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (42,'FINANCIAL ANALYST II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (43,'IPDO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (44,'GAD FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (45,'MCCT CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (46,'PARTNERSHIP FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (47,'PCOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (48,'RPMOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (49,'REGIONAL DIRECTOR',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (50,'Aisah Aguam',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (51,'Norhaniya Basir',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (52,'Roxanne Eve Quinones',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (53,'Ryan Roy Gaquing',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (54,'SHEILA MAE SORABIA',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (55,'DIR GEMMA GABUYA',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (56,'NPMO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (57,'REGIONAL DIRECTOR',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (58,'ARDO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (59,'DC NAIFAH BALINDONG',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (60,'PLANNING AND POLICY DEPT',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (61,'OTHER DIVISION',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (62,'RD FROM OTHER REGION(S)',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (63,'RMEO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (64,'CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (65,'BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (66,'SYSTEMS COORDINATOR',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (67,'RITO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (68,'CMT II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (69,'MCCT BDM FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (70,'SWO III / MCCT FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (71,'TS II / ISO FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (72,'TS I',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (73,'FINANCIAL ANALYST III',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (74,'CASE MANAGEMENT',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (75,'DIVISION CHIEF',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (76,'RGO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (77,'GRS',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (78,'FINANCIAL ANALYST II',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (79,'IPDO',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (80,'GAD FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (81,'MCCT CV FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (82,'PARTNERSHIP FOCAL',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (83,'PCOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (84,'RPMOs',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (85,'FDS Focal',NULL);
insert  into `lib_metadata`(`ID`,`SIGNATORIES`,`EMAIL_ADDRESS`) values (86,'CASH GRANTS UNIT',NULL);

/*Table structure for table `roles` */

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) NOT NULL,
  `desciption` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`role_id`,`role`,`desciption`) values (1,'Superuser','Sysdev');
insert  into `roles`(`role_id`,`role`,`desciption`) values (2,'User','user');

/*Table structure for table `tbl_documents` */

CREATE TABLE `tbl_documents` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRN` varchar(30) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `ORIGIN` int(11) DEFAULT NULL COMMENT 'OFFICE OF ORIGIN',
  `SIGNED_BY` int(11) DEFAULT NULL,
  `RECEIVED_BY` int(11) DEFAULT NULL,
  `HANDLER` int(11) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  `END_USERS` varchar(50) DEFAULT NULL,
  `VENUE` varchar(100) DEFAULT NULL,
  `EXP_COMPUTATION` text DEFAULT NULL,
  `DATE_TARGET` datetime DEFAULT NULL,
  `DATE_ENDORSED` datetime DEFAULT NULL,
  `DATE_REVIEWED` datetime DEFAULT NULL,
  `DATE_INITIALED` datetime DEFAULT NULL,
  `DATE_RECEIVED_COPY` datetime DEFAULT NULL,
  `DATE_RELEASED` datetime DEFAULT NULL,
  `PARTICIPANTS` varchar(200) DEFAULT NULL,
  `RELEASED_BY` int(11) DEFAULT NULL,
  `DATE_CSMS_RECEIVED` datetime DEFAULT NULL,
  `TIME_TURNAROUND` datetime DEFAULT NULL,
  `ATTACHMENT_ID` int(11) DEFAULT 0,
  `REMARKS` text DEFAULT NULL,
  `TAGS` text DEFAULT NULL,
  `USER_ID` int(11) NOT NULL COMMENT 'TRACKER ID',
  `DATE_POSTED` datetime NOT NULL,
  `DOC_TYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`DRN`,`SUBJECT`,`STATUS`,`USER_ID`,`DATE_POSTED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_documents` */

/*Table structure for table `tbl_routes` */

CREATE TABLE `tbl_routes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_ID` int(11) NOT NULL,
  `DATE_ROUTE` datetime NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `MESSAGE` text NOT NULL,
  `RECEPIENT_EMAIL` varchar(50) NOT NULL,
  `GMAIL_MESSAGE_ID` int(11) NOT NULL DEFAULT 0,
  `RSTATUS` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_routes` */

/*Table structure for table `tbl_status` */

CREATE TABLE `tbl_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_status` */

insert  into `tbl_status`(`ID`,`STATUS`) values (1,'In Progress');
insert  into `tbl_status`(`ID`,`STATUS`) values (2,'Pending');
insert  into `tbl_status`(`ID`,`STATUS`) values (3,'Forwarded');
insert  into `tbl_status`(`ID`,`STATUS`) values (4,'Approved');
insert  into `tbl_status`(`ID`,`STATUS`) values (5,'Accomplished');
insert  into `tbl_status`(`ID`,`STATUS`) values (6,'On-hold');
insert  into `tbl_status`(`ID`,`STATUS`) values (7,'Cancelled');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) DEFAULT NULL,
  `middlename` varchar(80) DEFAULT NULL,
  `lastname` varchar(80) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `assignment` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `picture` longblob DEFAULT NULL,
  `picture_size` varchar(40) DEFAULT NULL,
  `picture_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (1,'Superuser',NULL,NULL,'admin','Superuser','ICTMS','aaquinones.fo12@dswd.gov.ph',NULL,'$2y$10$uq1zkRFEzHZuPBdmKqX3vOaND9pFFRZxCWIeVux.NzWpln3cRtVXW',1,'Active',NULL,NULL,NULL);
insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (115,'alden','a','quinones','aaquinones',NULL,NULL,'aaquinones.fo12@dswd.gov.ph',NULL,'4e61f127944a99c695ccd19b725704e250e81303b5d2329f522bec37cf9e3588a16b576ca5e424db23f382c95944b1182a915a3d3960172db097a6275817e756DeugJCOXNpNIptfHzIBi67DbZZrk1sPINEaVQYyBvGazCJf4nhHfn5cWVXiYaMHW',NULL,'Active',NULL,NULL,NULL);
insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (160,'a','a','a','etraining',NULL,NULL,'aaa@aaa.com','09509396109','6cce103d85f18e18d4df57156b3e4e9e2c1e477330a48085aea66cd4f2b8b7f390ebf32029d457296ff70d3bea750d759cbe936acdcbaf587c46fec581cfb339/vPKJGE/NjwuWSOV3HeBpUq1hUncmVIXecWCkDp3igo=',NULL,'Active',NULL,NULL,NULL);

/*Table structure for table `v_doc_comms` */

DROP TABLE IF EXISTS `v_doc_comms`;

/*!50001 CREATE TABLE  `v_doc_comms`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `ORIGIN` int(11) ,
 `HANDLER` int(11) ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_es` */

DROP TABLE IF EXISTS `v_doc_es`;

/*!50001 CREATE TABLE  `v_doc_es`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `ORIGIN` int(11) ,
 `SIGNED_BY` int(11) ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_meetings` */

DROP TABLE IF EXISTS `v_doc_meetings`;

/*!50001 CREATE TABLE  `v_doc_meetings`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `RECEIVED_BY` int(11) ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_memos` */

DROP TABLE IF EXISTS `v_doc_memos`;

/*!50001 CREATE TABLE  `v_doc_memos`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `ORIGIN` int(11) ,
 `SIGNED_BY` int(11) ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_proposals` */

DROP TABLE IF EXISTS `v_doc_proposals`;

/*!50001 CREATE TABLE  `v_doc_proposals`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `ORIGIN` int(11) ,
 `DATE_TARGET` datetime ,
 `AMOUNT` double ,
 `END_USERS` varchar(50) ,
 `VENUE` varchar(100) ,
 `EXP_COMPUTATION` text ,
 `DATE_ENDORSED` datetime ,
 `DATE_REVIEWED` datetime ,
 `DATE_INITIALED` datetime ,
 `DATE_RECEIVED_COPY` datetime ,
 `PARTICIPANTS` varchar(200) ,
 `DATE_RELEASED` datetime ,
 `RECEIVED_BY` int(11) ,
 `DATE_CSMS_RECEIVED` datetime ,
 `TIME_TURNAROUND` datetime ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_requests` */

DROP TABLE IF EXISTS `v_doc_requests`;

/*!50001 CREATE TABLE  `v_doc_requests`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `REQUESTER` int(11) ,
 `RECEIVED_BY` int(11) ,
 `DATE_ENDORSED` datetime ,
 `DATE_RELEASED` datetime ,
 `RELEASED_BY` int(11) ,
 `DATE_CSMS_RECEIVED` datetime ,
 `TIME_TURNAROUND` datetime ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*Table structure for table `v_doc_travels` */

DROP TABLE IF EXISTS `v_doc_travels`;

/*!50001 CREATE TABLE  `v_doc_travels`(
 `ID` int(11) ,
 `DRN` varchar(30) ,
 `SUBJECT` varchar(50) ,
 `STATUS` varchar(50) ,
 `SIGNED_BY` int(11) ,
 `REMARKS` text ,
 `TAGS` text ,
 `USER_ID` int(11) ,
 `DATE_POSTED` datetime ,
 `ATTACHMENT_ID` int(11) 
)*/;

/*View structure for view v_doc_comms */

/*!50001 DROP TABLE IF EXISTS `v_doc_comms` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_comms` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`ORIGIN` AS `ORIGIN`,`tbl_documents`.`HANDLER` AS `HANDLER`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_es */

/*!50001 DROP TABLE IF EXISTS `v_doc_es` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_es` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`ORIGIN` AS `ORIGIN`,`tbl_documents`.`SIGNED_BY` AS `SIGNED_BY`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_meetings */

/*!50001 DROP TABLE IF EXISTS `v_doc_meetings` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_meetings` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`RECEIVED_BY` AS `RECEIVED_BY`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_memos */

/*!50001 DROP TABLE IF EXISTS `v_doc_memos` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_memos` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`ORIGIN` AS `ORIGIN`,`tbl_documents`.`SIGNED_BY` AS `SIGNED_BY`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_proposals */

/*!50001 DROP TABLE IF EXISTS `v_doc_proposals` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_proposals` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`ORIGIN` AS `ORIGIN`,`tbl_documents`.`DATE_TARGET` AS `DATE_TARGET`,`tbl_documents`.`AMOUNT` AS `AMOUNT`,`tbl_documents`.`END_USERS` AS `END_USERS`,`tbl_documents`.`VENUE` AS `VENUE`,`tbl_documents`.`EXP_COMPUTATION` AS `EXP_COMPUTATION`,`tbl_documents`.`DATE_ENDORSED` AS `DATE_ENDORSED`,`tbl_documents`.`DATE_REVIEWED` AS `DATE_REVIEWED`,`tbl_documents`.`DATE_INITIALED` AS `DATE_INITIALED`,`tbl_documents`.`DATE_RECEIVED_COPY` AS `DATE_RECEIVED_COPY`,`tbl_documents`.`PARTICIPANTS` AS `PARTICIPANTS`,`tbl_documents`.`DATE_RELEASED` AS `DATE_RELEASED`,`tbl_documents`.`RECEIVED_BY` AS `RECEIVED_BY`,`tbl_documents`.`DATE_CSMS_RECEIVED` AS `DATE_CSMS_RECEIVED`,`tbl_documents`.`TIME_TURNAROUND` AS `TIME_TURNAROUND`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_requests */

/*!50001 DROP TABLE IF EXISTS `v_doc_requests` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_requests` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`HANDLER` AS `REQUESTER`,`tbl_documents`.`RECEIVED_BY` AS `RECEIVED_BY`,`tbl_documents`.`DATE_ENDORSED` AS `DATE_ENDORSED`,`tbl_documents`.`DATE_RELEASED` AS `DATE_RELEASED`,`tbl_documents`.`RELEASED_BY` AS `RELEASED_BY`,`tbl_documents`.`DATE_CSMS_RECEIVED` AS `DATE_CSMS_RECEIVED`,`tbl_documents`.`TIME_TURNAROUND` AS `TIME_TURNAROUND`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*View structure for view v_doc_travels */

/*!50001 DROP TABLE IF EXISTS `v_doc_travels` */;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_doc_travels` AS (select `tbl_documents`.`ID` AS `ID`,`tbl_documents`.`DRN` AS `DRN`,`tbl_documents`.`SUBJECT` AS `SUBJECT`,`tbl_documents`.`STATUS` AS `STATUS`,`tbl_documents`.`SIGNED_BY` AS `SIGNED_BY`,`tbl_documents`.`REMARKS` AS `REMARKS`,`tbl_documents`.`TAGS` AS `TAGS`,`tbl_documents`.`USER_ID` AS `USER_ID`,`tbl_documents`.`DATE_POSTED` AS `DATE_POSTED`,`tbl_documents`.`ATTACHMENT_ID` AS `ATTACHMENT_ID` from `tbl_documents`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
