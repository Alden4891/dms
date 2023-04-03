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

/*Table structure for table `tbl_communications` */

CREATE TABLE `tbl_communications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORIGIN` int(11) DEFAULT NULL,
  `HANDLER` varchar(50) DEFAULT NULL,
  `ROUTE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_communications` */

/*Table structure for table `tbl_drns` */

CREATE TABLE `tbl_drns` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DRN` varchar(30) DEFAULT NULL,
  `SUBJECT` varchar(50) DEFAULT NULL,
  `STATUS` int(50) DEFAULT NULL,
  `REMARKS` varchar(500) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL,
  `tags` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_drns` */

/*Table structure for table `tbl_es` */

CREATE TABLE `tbl_es` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPONENT_ID` int(11) DEFAULT NULL,
  `SIGNED_BY` varchar(50) DEFAULT NULL,
  `ATTACHMENTS` varbinary(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_es` */

/*Table structure for table `tbl_meetings` */

CREATE TABLE `tbl_meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `END_USER` varchar(50) DEFAULT NULL,
  `RECEIVED_BY` varbinary(50) DEFAULT NULL,
  `RECEIVED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_meetings` */

/*Table structure for table `tbl_memos` */

CREATE TABLE `tbl_memos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPONENT_ID` int(11) DEFAULT NULL,
  `SIGNED_BY` varchar(50) DEFAULT NULL,
  `ROUTE_ID` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_memos` */

/*Table structure for table `tbl_proposals` */

CREATE TABLE `tbl_proposals` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TARGET_DATE` datetime DEFAULT NULL,
  `TARGTE_PARTICIPANTS` varchar(100) DEFAULT NULL,
  `TARGET_VENUE` varchar(100) DEFAULT NULL,
  `EXPENDITURE_EST` varchar(200) DEFAULT NULL,
  `ST_AMOUNT` decimal(10,0) DEFAULT NULL,
  `PROPONENT` varchar(100) DEFAULT NULL,
  `DATE_REVIEWED` datetime DEFAULT NULL,
  `DATE_INITIALED` datetime DEFAULT NULL,
  `DATE_RECEIVED` datetime DEFAULT NULL,
  `PROPOSAL_TITLE` varchar(200) DEFAULT NULL,
  `ROUTE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_proposals` */

/*Table structure for table `tbl_routes` */

CREATE TABLE `tbl_routes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORIGIN` varchar(50) DEFAULT NULL,
  `HANDLER` varchar(50) DEFAULT NULL,
  `ROUTE_TO` int(11) DEFAULT NULL COMMENT 'LINK TO META DATA',
  `ROUTE_DATE` datetime DEFAULT NULL,
  `DOUTE_DUE` datetime DEFAULT NULL,
  `MESSAGE_ID` int(11) DEFAULT NULL,
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

/*Table structure for table `tbl_travels` */

CREATE TABLE `tbl_travels` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORIGIN` varchar(50) DEFAULT NULL,
  `SIGNED_BY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_travels` */

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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (1,'Superuser',NULL,NULL,'admin','Superuser','ICTMS','aaquinones.fo12@dswd.gov.ph',NULL,'$2y$10$uq1zkRFEzHZuPBdmKqX3vOaND9pFFRZxCWIeVux.NzWpln3cRtVXW',1,'Active',NULL,NULL,NULL);
insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (115,'alden','a','quinones','aaquinones',NULL,NULL,'aaquinones.fo12@dswd.gov.ph',NULL,'4e61f127944a99c695ccd19b725704e250e81303b5d2329f522bec37cf9e3588a16b576ca5e424db23f382c95944b1182a915a3d3960172db097a6275817e756DeugJCOXNpNIptfHzIBi67DbZZrk1sPINEaVQYyBvGazCJf4nhHfn5cWVXiYaMHW',NULL,'Active',NULL,NULL,NULL);
insert  into `users`(`user_id`,`firstname`,`middlename`,`lastname`,`username`,`position`,`assignment`,`email`,`contact`,`password`,`role_id`,`status`,`picture`,`picture_size`,`picture_type`) values (160,'a','a','a','etraining',NULL,NULL,'aaa@aaa.com','09509396109','6cce103d85f18e18d4df57156b3e4e9e2c1e477330a48085aea66cd4f2b8b7f390ebf32029d457296ff70d3bea750d759cbe936acdcbaf587c46fec581cfb339/vPKJGE/NjwuWSOV3HeBpUq1hUncmVIXecWCkDp3igo=',NULL,'Active',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
