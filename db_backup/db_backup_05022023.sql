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

/*Table structure for table `lib_doctype` */

CREATE TABLE `lib_doctype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lib_doctype` */

insert  into `lib_doctype`(`ID`,`TYPE`) values (0,'unknowns');
insert  into `lib_doctype`(`ID`,`TYPE`) values (1,'memo');
insert  into `lib_doctype`(`ID`,`TYPE`) values (2,'es');
insert  into `lib_doctype`(`ID`,`TYPE`) values (3,'travels');
insert  into `lib_doctype`(`ID`,`TYPE`) values (4,'commu');
insert  into `lib_doctype`(`ID`,`TYPE`) values (5,'proposals');
insert  into `lib_doctype`(`ID`,`TYPE`) values (6,'meetings');
insert  into `lib_doctype`(`ID`,`TYPE`) values (7,'data requests');

/*Table structure for table `lib_employees` */

CREATE TABLE `lib_employees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESIGNATION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `EMP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;

/*Data for the table `lib_employees` */

insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1,'REGIONAL PROGRAM COORDINATOR','NAIFAH S. BALINDONG',1);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (2,'REGIONAL DIRECTOR','Loreto Jr. V. Cabaya',NULL);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (3,'MCCT Regional Coordinator','JADIDAH B. RASUMAN-ALANGCA',598);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (4,'MONITORING AND EVALUATION OFFICER','DIVINE GRACE P. PEDRAJAS',29);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (5,'MUNICIPAL/CITY LINK','DYLENE P. PAMULARCO',334);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (6,'MUNICIPAL/CITY LINK','JOHARA D. PAYLA',341);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (7,'MUNICIPAL/CITY LINK','RHEA A. CRUZ',196);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (8,'MUNICIPAL/CITY LINK','CHELIZA D. CO',192);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (9,'MUNICIPAL/CITY LINK','DARLENE G. DOHINOG',235);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (10,'MUNICIPAL/CITY LINK','HERIA D. PANALANDANG',335);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (11,'MUNICIPAL/CITY LINK','NARISSA G. SACOP',360);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (12,'MUNICIPAL/CITY LINK','RONAMAE L. ESPINOSA',214);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (13,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','Aslima A. ALI',688);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (14,'COMMUNITY FACILITATOR/ CASE WORKER','MITCHELLE C. OLID',606);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (15,'MUNICIPAL/CITY LINK','Arlene S. Casan',181);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (16,'MUNICIPAL/CITY LINK','DONESA T. TABLASO',377);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (17,'MUNICIPAL/CITY LINK','ANIESA S. GUIALO',238);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (18,'MUNICIPAL/CITY LINK','FLORDELIZA C. SAMSON',363);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (19,'MUNICIPAL/CITY LINK','HELEN L. CASTILLON',184);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (20,'MUNICIPAL/CITY LINK','LIZA F. MEMORIAL',310);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (21,'MUNICIPAL/CITY LINK','DENIA L. DIEZON',207);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (22,'MUNICIPAL/CITY LINK','GRACE C. CASTRO',185);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (23,'MUNICIPAL/CITY LINK','JERGEN V. DEMAVIVAS',206);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (24,'MUNICIPAL/CITY LINK','VIVIAN T. VICENTE',393);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (25,'MUNICIPAL/CITY LINK','HANIFA S. HASSAN',418);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (26,'MUNICIPAL/CITY LINK','HAJIARA S. DIAMROD',390);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (27,'MUNICIPAL/CITY LINK','Norhuda M. Dinas',210);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (28,'MUNICIPAL/CITY LINK','NORMA H. DAGUMBEL',198);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (29,'MUNICIPAL/CITY LINK','BABYLIN G. MAMANTAL',292);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (30,'MUNICIPAL/CITY LINK','JOAIMA M. DIMAPORO',342);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (31,'MUNICIPAL/CITY LINK','SITTIE FAMILA P. H.ALI',417);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (32,'MUNICIPAL/CITY LINK','EMILY L. ALAPAN',132);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (33,'MUNICIPAL/CITY LINK','FAYERUZ I. LIWALUG',422);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (34,'MUNICIPAL/CITY LINK','MAYBEL JOY F. ARAGONA',146);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (35,'MUNICIPAL/CITY LINK','NORMINA D. BUTUAN',169);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (36,'MUNICIPAL/CITY LINK','NORSEHA A. KUSAIN',258);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (37,'MUNICIPAL/CITY LINK','ROHAIDA D. ALI-LANTO',137);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (38,'MUNICIPAL/CITY LINK','SAHIDA U. ABDULLAH',124);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (39,'MUNICIPAL/CITY LINK','WENNIE S. MILLAN',314);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (40,'MUNICIPAL/CITY LINK','ZIKRULLAH M. LAUBAN',265);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (41,'SOCIAL WELFARE ASSISTANT','NORDY U. ABDULLAH',446);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (42,'SOCIAL WELFARE ASSISTANT','ZUKRA D. PANALANDANG',526);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (43,'MUNICIPAL/CITY LINK','CHERYL A. GASPAR',233);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (44,'MUNICIPAL/CITY LINK','MARY MERCY ANNE C. CLARO',190);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (45,'MUNICIPAL/CITY LINK','REGEL A. NARSICO',320);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (46,'MUNICIPAL/CITY LINK','ROVELYN G. LOSBAÑEZ',278);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (47,'MUNICIPAL/CITY LINK','DARYL C. RABANILLO',347);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (48,'MUNICIPAL/CITY LINK','DOVIE J. PULIDO',345);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (49,'MUNICIPAL/CITY LINK','GENEVIVE G. BITO-ON',164);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (50,'MUNICIPAL/CITY LINK','INSANAH D. H. RACMAN',240);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (51,'MUNICIPAL/CITY LINK','LEONARDA R. EXMUNDO',223);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (52,'MUNICIPAL/CITY LINK','LESLY P. MOLINA',318);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (53,'MUNICIPAL/CITY LINK','MECHELLE M. RONDINA',354);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (54,'MUNICIPAL/CITY LINK','NELYN B. MILITANTE',313);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (55,'MUNICIPAL/CITY LINK','NORALYN S. LANTO',263);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (56,'MUNICIPAL/CITY LINK','NUR-FATMINAH A. MOHAMAD',317);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (57,'MUNICIPAL/CITY LINK','ROSE T. BELGIRA',162);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (58,'MUNICIPAL/CITY LINK','SARISSA V. NIÑO',321);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (59,'SOCIAL WELFARE ASSISTANT','JESSE S. MAGHINAY',507);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (60,'SOCIAL WELFARE ASSISTANT','MARICEL B. ABALLE',517);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (61,'MUNICIPAL/CITY LINK','ABJUHARY H. AMER',142);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (62,'MUNICIPAL/CITY LINK','GERALDINE C. NIONES',322);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (63,'MUNICIPAL/CITY LINK','HAMIDAH A. CAMIM',177);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (64,'MUNICIPAL/CITY LINK','JOEY P. OCHAVILLO',324);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (65,'MUNICIPAL/CITY LINK','NAILA D. LIDASAN',273);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (66,'MUNICIPAL/CITY LINK','RICHELLE V. DUYAG',216);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (67,'MUNICIPAL/CITY LINK','ESNAIDAH M. SARIPADA',368);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (68,'MUNICIPAL/CITY LINK','SHERYLL C. LAYAWON',267);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (69,'MUNICIPAL/CITY LINK','BAI JASMINE D. LUNDA',201);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (70,'MUNICIPAL/CITY LINK','BAIPHATI A. LUAY',279);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (71,'MUNICIPAL/CITY LINK','GRETCHEN A. MAGALLON',285);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (72,'MUNICIPAL/CITY LINK','JUDITH A. YAP',398);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (73,'MUNICIPAL/CITY LINK','MERIAM B. CASANGUAN',182);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (74,'MUNICIPAL/CITY LINK','AIZA T. SULTAN',374);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (75,'MUNICIPAL/CITY LINK','maricel B. Galido',230);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (76,'MUNICIPAL/CITY LINK','MILANIE O. MANDIA',297);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (77,'MUNICIPAL/CITY LINK','AMINA A. NURUDDIN-RAZIK',323);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (78,'MUNICIPAL/CITY LINK','CHERRYL L. ALASAGAS',133);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (79,'MUNICIPAL/CITY LINK','KATHLEEN L. HOFER',243);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (80,'MUNICIPAL/CITY LINK','caterin T. cruz',195);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (81,'MUNICIPAL/CITY LINK','ESTRELLITA A. SINAJONAN',372);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (82,'MUNICIPAL/CITY LINK','ADA S. MASUKAT',308);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (83,'MUNICIPAL/CITY LINK','AYNODIN S. MAROHOM',303);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (84,'MUNICIPAL/CITY LINK','DEBBIE M. Parreño',340);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (85,'MUNICIPAL/CITY LINK','JOHAIRAH M. Rascal',351);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (86,'MUNICIPAL/CITY LINK','ROFAIDA B. CODARANGAN',193);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (87,'MUNICIPAL/CITY LINK','AMPARO U. MANUDAL',301);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (88,'MUNICIPAL/CITY LINK','ARIENDA P. LEMON',270);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (89,'MUNICIPAL/CITY LINK','NANETTE B. FABALE',224);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (90,'MUNICIPAL/CITY LINK','SHARON T. ONG',326);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (91,'MUNICIPAL/CITY LINK','ELMAR O. PAGARIGAN',327);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (92,'MUNICIPAL/CITY LINK','ANALIE L. ABUTAZIL',268);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (93,'MUNICIPAL/CITY LINK','CHARLOTTE MAY E. EXAMEN',222);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (94,'MUNICIPAL/CITY LINK','CHERRYL D. BATINO',160);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (95,'MUNICIPAL/CITY LINK','JONAIMA B. ESMAIL',219);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (96,'MUNICIPAL/CITY LINK','RAMADAYNA D. TAN',382);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (97,'MUNICIPAL/CITY LINK','ZAINUDIN O. PENDONG',343);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (98,'MUNICIPAL/CITY LINK','NORALYN S. MASUKAT',309);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (99,'MUNICIPAL/CITY LINK','Omyrah K. ALI',135);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (100,'MUNICIPAL/CITY LINK','YASSER S. PANALANDANG',336);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (101,'MUNICIPAL/CITY LINK','ABDUL JABBAR T. DARI',200);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (102,'MUNICIPAL/CITY LINK','HASMIAH B. COSAIN',194);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (103,'MUNICIPAL/CITY LINK','JENELYN C. LIBONA',272);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (104,'MUNICIPAL/CITY LINK','JUNAIDA H. INDAR',247);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (105,'MUNICIPAL/CITY LINK','PILAR M. LIGO',275);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (106,'MUNICIPAL/CITY LINK','CRISTINA O. SUCLAN',373);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (107,'MUNICIPAL/CITY LINK','JAYSIE B. RAYMUNDO',352);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (108,'MUNICIPAL/CITY LINK','MARYCHU L. RADIN',348);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (109,'MUNICIPAL/CITY LINK','CORAZON S. SARDEDO',366);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (110,'MUNICIPAL/CITY LINK','FYRON G. SALILAGUIA',361);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (111,'MUNICIPAL/CITY LINK','KRISNA A. MANABAT',295);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (112,'MUNICIPAL/CITY LINK','MOHAMMAD M. MAROHOM',304);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (113,'MUNICIPAL/CITY LINK','NAIRA JADE A. MOHAMAD',315);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (114,'MUNICIPAL/CITY LINK','ELFA N. LEONCITO',271);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (115,'MUNICIPAL/CITY LINK','FAYEJARAH S. INTERINO',299);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (116,'MUNICIPAL/CITY LINK','OMAIDA A. DUMATO',213);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (117,'COMMUNITY FACILITATOR/ CASE WORKER','HALIMA S. ABDUL SALAM',605);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (118,'MUNICIPAL/CITY LINK','CHRISTIEN R. ALCALA',134);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (119,'MUNICIPAL/CITY LINK','EMARGELEN W. LUPINA',280);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (120,'MUNICIPAL/CITY LINK','HANNAH MAE B. DE LAS ALAS',204);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (121,'MUNICIPAL/CITY LINK','JENEROSE M. BALUNTO',157);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (122,'MUNICIPAL/CITY LINK','JOY G. ALBA',402);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (123,'MUNICIPAL/CITY LINK','MELANIE A. CATAYAS',188);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (124,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JOSE T. BLOGO',696);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (125,'MUNICIPAL/CITY LINK','CARENA A. AVILA',151);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (126,'MUNICIPAL/CITY LINK','CHIRADEE M. FLORES',228);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (127,'MUNICIPAL/CITY LINK','EDISON M. AMBRAD',141);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (128,'MUNICIPAL/CITY LINK','JANETTE I. ABRAHAM',126);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (129,'MUNICIPAL/CITY LINK','NORHIDA D. SOLAIMAN',180);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (130,'SOCIAL WELFARE ASSISTANT','ABDULWAHID D. PALAO',568);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (131,'MUNICIPAL/CITY LINK','AISA P. MACAWADIB',282);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (132,'MUNICIPAL/CITY LINK','AMALIYA A. TANGGOTE',384);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (133,'MUNICIPAL/CITY LINK','AMERAH H. LAUT',266);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (134,'MUNICIPAL/CITY LINK','LILYBETH O. SULUTAN',375);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (135,'MUNICIPAL/CITY LINK','MONAWARA U. KALIS',255);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (136,'MUNICIPAL/CITY LINK','ROSALIE M. CLAVE',191);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (137,'SOCIAL WELFARE ASSISTANT','ESTER FE C. LORENZO',561);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (138,'SENIOR BOOKKEEPER','MICHELE C. CAJUTOL',579);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (139,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','ARIES RINSIE A. CAGAYAO',586);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (140,'MUNICIPAL/CITY LINK','ARLYN M. MAHAWAN',289);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (141,'MUNICIPAL/CITY LINK','ELIZABETH M. SABANDO',358);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (142,'MUNICIPAL/CITY LINK','MARISSA S. MOMONGAN',362);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (143,'MUNICIPAL/CITY LINK','PEPING A. BADAL',153);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (144,'MUNICIPAL/CITY LINK','RADIYA P. MANTORINO',427);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (145,'MUNICIPAL/CITY LINK','RASMIA K. SANTURING',237);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (146,'MUNICIPAL/CITY LINK','TARAHATA D. ABDULLAH',125);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (147,'MUNICIPAL/CITY LINK','CHUCHIE F. ESTAMPADOR',220);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (148,'MUNICIPAL/CITY LINK','LENDY D. HILARIO',215);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (149,'MUNICIPAL/CITY LINK','REA C. LEGASPI',178);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (150,'SOCIAL WELFARE ASSISTANT','MARIE JENNYLYN C. SILVESTRE',538);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (151,'MUNICIPAL/CITY LINK','CARIN L. CABAOBAO',171);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (152,'MUNICIPAL/CITY LINK','MARY GRACE M. EMBOLTORIO',218);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (153,'MUNICIPAL/CITY LINK','NORZAHRA G. DIMATINGKAL',208);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (154,'MUNICIPAL/CITY LINK','REY C. MASORONG',307);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (155,'MUNICIPAL/CITY LINK','RIHAM B. CODARANGAN',401);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (156,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','HANIF A. TANGGOL',596);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (157,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','MOHAMMAD A. MAROHOMBSAR',581);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (158,'MUNICIPAL/CITY LINK','AN-AN E. GANI',232);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (159,'MUNICIPAL/CITY LINK','KRISTINA B. AKOP',130);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (160,'MUNICIPAL/CITY LINK','MANILYN L. LIDOT',274);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (161,'MUNICIPAL/CITY LINK','SHIELA MAE G. MARGATE',302);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (162,'MUNICIPAL/CITY LINK','VIENNA V. DIMSON',209);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (163,'MUNICIPAL/CITY LINK','AILEEN G. TALAPAS',379);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (164,'MUNICIPAL/CITY LINK','ARCHER M. FERNANDEZ',227);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (165,'MUNICIPAL/CITY LINK','BAIKUNOT A. PAGLALA',329);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (166,'MUNICIPAL/CITY LINK','Haifa M. Tuanadatu',388);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (167,'MUNICIPAL/CITY LINK','HALIMA G. ALIM',138);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (168,'MUNICIPAL/CITY LINK','MIERAJ B. IBRAHIM',246);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (169,'MUNICIPAL/CITY LINK','NEBIEN G. MALANG',290);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (170,'MUNICIPAL/CITY LINK','NORHANIE S. ASI',150);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (171,'MUNICIPAL/CITY LINK','NORHAYNIE A. MOHAMAD',316);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (172,'SOCIAL WELFARE ASSISTANT','AIZA S. MAHMUD',508);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (173,'SOCIAL WELFARE ASSISTANT','NORLAINIE D. DISAMBURUN',567);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (174,'MUNICIPAL/CITY LINK','ABDUL RAHMAN G. MACASUNDIG',281);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (175,'MUNICIPAL/CITY LINK','irish c. angca',143);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (176,'MUNICIPAL/CITY LINK','NORHAIDA M. MADALI',283);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (177,'MUNICIPAL/CITY LINK','SAHIDAH S. BALINDONG',156);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (178,'ADMINISTRATIVE ASSISTANT II *Province','JANET L. ALEJO',88);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (179,'MUNICIPAL/CITY LINK','Charlyn C. Arevalo',148);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (180,'MUNICIPAL/CITY LINK','ESNERAH K. UTTO',392);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (181,'MUNICIPAL/CITY LINK','NORODIN H. KABUGATAN',253);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (182,'MUNICIPAL/CITY LINK','emelia d. vildosola',395);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (183,'MUNICIPAL/CITY LINK','LELIBETH D. GAUPO',234);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (184,'ENCODER','RAMON CHRISTOPHER S. CUANSING',59);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (185,'MUNICIPAL/CITY LINK','HERMELYN C. DUMAGAT',212);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (186,'MUNICIPAL/CITY LINK','Renalyn B. De guzman',202);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (187,'SOCIAL WELFARE ASSISTANT','TAHANIE S. PAMALOY',553);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (188,'SENIOR BOOKKEEPER','MARILYN T. JAVIER',44);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (189,'MUNICIPAL/CITY LINK','MICHELLE C. HOVINA',244);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (190,'MUNICIPAL/CITY LINK','ROSEMARIE T. SILORIO',370);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (191,'MUNICIPAL/CITY LINK','AARON S. CATALAN',187);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (192,'MUNICIPAL/CITY LINK','SHEILA MAY B. PAULINO',159);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (193,'COMMUNITY FACILITATOR/ CASE WORKER','ZALIKA D. BUTUAN',613);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (194,'MUNICIPAL/CITY LINK','JUNY C. DULONG',211);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (195,'MUNICIPAL/CITY LINK','BADRODIN S. PAMALOY',333);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (196,'MUNICIPAL/CITY LINK','GRACE S. TO-ONG',386);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (197,'MUNICIPAL/CITY LINK','MARICEL S. GOCON',236);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (198,'MUNICIPAL/CITY LINK','HANIYA M. ABDUL',217);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (199,'MUNICIPAL/CITY LINK','JAYSON R. BACALING',152);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (200,'MUNICIPAL/CITY LINK','LOURENCE BELLE R. DEVELOS',330);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (201,'MUNICIPAL/CITY LINK','MARICAR B. PAGHARION',328);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (202,'MUNICIPAL/CITY LINK','NENETTE M. SUMONSOL',376);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (203,'MUNICIPAL/CITY LINK','NOILA D. FADERON',225);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (204,'MUNICIPAL/CITY LINK','NYVEE L. GALVE',231);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (205,'MUNICIPAL/CITY LINK','SALVADOR R. PALOMA II',332);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (206,'MUNICIPAL/CITY LINK','JONAH R. BOLENCIS',165);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (207,'MUNICIPAL/CITY LINK','Maebelane S. Canto',179);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (208,'MUNICIPAL/CITY LINK','MARIECEL B. JAGORIN',249);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (209,'MUNICIPAL/CITY LINK','NORHAIMA L. ALVAREZ',261);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (210,'MUNICIPAL/CITY LINK','ABDULAZIS C. INEDAL',248);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (211,'MUNICIPAL/CITY LINK','JANESE L. LACO',260);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (212,'MUNICIPAL/CITY LINK','NORMELAH T. SARIPADA',369);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (213,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JALALEAH M. ELIAS',743);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (214,'SOCIAL WELFARE ASSISTANT','JAYZEL A. GOMEZ',485);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (215,'SOCIAL WELFARE ASSISTANT','Liezl a. Adizas',472);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (216,'MUNICIPAL/CITY LINK','NORHANA P. UMBALAN',412);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (217,'MUNICIPAL/CITY LINK','NORHANIFAH D. DISIMBAN',424);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (218,'SOCIAL WELFARE ASSISTANT','JAMAL M. DAKSLA',471);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (219,'COMMUNITY FACILITATOR/ CASE WORKER','ODYSSA ESTHER K. MATAS',651);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (220,'MUNICIPAL/CITY LINK','LESTER J. SULPOT',431);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (221,'MUNICIPAL/CITY LINK','NOR-ZHAINAB S. ALAWI',381);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (222,'SOCIAL WELFARE ASSISTANT','NORJAN A. ALAUYA',549);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (223,'SOCIAL WELFARE ASSISTANT','CHESTER KING F. IDECA',490);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (224,'SOCIAL WELFARE ASSISTANT','RICHARD S. DAINAL',470);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (225,'SOCIAL WELFARE ASSISTANT','SOFIA S. BACARAT',458);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (226,'SOCIAL WELFARE ASSISTANT','GENLY B. CARBON',464);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (227,'MUNICIPAL/CITY LINK','JAHRE ZEN O. BARRON',432);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (228,'MUNICIPAL/CITY LINK','JAYSON V. VEGO',420);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (229,'MUNICIPAL/CITY LINK','MICHELLE S. FUERTE',123);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (230,'SOCIAL WELFARE ASSISTANT','RHEO JADE C. SUGAN',482);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (231,'MUNICIPAL/CITY LINK','HERNA LIZA G. OGATIS',411);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (232,'MUNICIPAL/CITY LINK','FATIMA A. DAMANG',404);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (233,'SOCIAL WELFARE ASSISTANT','ROHANNA S. PIANG',531);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (234,'SOCIAL WELFARE ASSISTANT','LIZA S. DIVINAGRACIA',477);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (235,'SOCIAL WELFARE ASSISTANT','CARMELA A. HADONG',488);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (236,'SOCIAL WELFARE ASSISTANT','CHARMAINE P. BULOD',463);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (237,'SOCIAL WELFARE ASSISTANT','AJIB D. MAROHOM',571);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (238,'SOCIAL WELFARE ASSISTANT','ROHANA S. AMERODIN',480);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (239,'MUNICIPAL/CITY LINK','SAIRAH M. SULTAN',437);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (240,'MUNICIPAL/CITY LINK','ARLAN M. SANICO',426);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (241,'MUNICIPAL/CITY LINK','JAY L. ZUYCO',399);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (242,'SOCIAL WELFARE ASSISTANT','MICHELLE B. CARBONEL',465);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (243,'SOCIAL WELFARE ASSISTANT','SAPIA A. DIANGKA',474);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (244,'SOCIAL WELFARE ASSISTANT','ALTAF D. MAROHOM',449);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (245,'SOCIAL WELFARE ASSISTANT','SAIDAMEN P. GURO',487);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (246,'MUNICIPAL/CITY LINK','HANNAH FAITH P. GABAC',359);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (247,'MUNICIPAL/CITY LINK','MAE CLAIRE G. LACRO',346);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (248,'SOCIAL WELFARE ASSISTANT','Ricky Y. Humagbas',489);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (249,'SOCIAL WELFARE ASSISTANT','JOHARA A. ALAUYA',452);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (250,'MUNICIPAL/CITY LINK','REGINE N. PONCE',416);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (251,'SOCIAL WELFARE ASSISTANT','ALFIE P. ABDULGANI',445);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (252,'SOCIAL WELFARE ASSISTANT','JUNAIDAH S. CASSER',466);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (253,'COMMUNITY FACILITATOR/ CASE WORKER','Jalilah M. Zacaria',665);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (254,'SOCIAL WELFARE ASSISTANT','JANE C. GAQUING',484);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (255,'MUNICIPAL/CITY LINK','ROSELLE B. RAFAILES',428);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (256,'SOCIAL WELFARE ASSISTANT','KAREN MAE M. CLARITO',469);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (257,'SOCIAL WELFARE ASSISTANT','NARLY S. ABENDAN',448);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (258,'COMMUNITY FACILITATOR/ CASE WORKER','JOY L. DEMOCRITO',670);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (259,'SOCIAL WELFARE ASSISTANT','HARRITH M. MUSTAPHA',447);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (260,'ADMINISTRATIVE ASSISTANT II *Cluster','ABDUL AZIS G. MARIANO',118);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (261,'MONITORING AND EVALUATION OFFICER','AMINAH R. TABUA',85);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (262,'MUNICIPAL/CITY LINK','HAMIMA A. DANGANAN',294);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (263,'MUNICIPAL/CITY LINK','JOHAIRAH L. USMAN',391);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (264,'MUNICIPAL/CITY LINK','LABIBA H. SARIP',367);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (265,'MUNICIPAL/CITY LINK','Monaisah S. Madid',284);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (266,'MUNICIPAL/CITY LINK','NAIRAH M. ADIONG',129);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (267,'MUNICIPAL/CITY LINK','NORAIDAH A. PANDAPATAN',337);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (268,'MUNICIPAL/CITY LINK','NORHAINIE D. BAGRO',154);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (269,'MUNICIPAL/CITY LINK','NORJANNAH C. MALNA',291);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (270,'MUNICIPAL/CITY LINK','RINALAWAN M. MANGONDATO',298);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (271,'MUNICIPAL/CITY LINK','ROHANIA M. CALIMBABA',176);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (272,'MUNICIPAL/CITY LINK','SITTIE-OMAIMAH B. ALIMONDAS',406);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (273,'PROVINCIAL GRIEVANCE OFFICER','LAUT SADDATH M. HADJI SAID',81);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (274,'SOCIAL WELFARE ASSISTANT','JASLIA A. LABAY',498);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (275,'SOCIAL WELFARE ASSISTANT','MERAIMAH H. BITOR-ISMAEL',462);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (276,'SOCIAL WELFARE ASSISTANT','SITTIE NAIMA U. DICOL',475);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (277,'SOCIAL WELFARE OFFICER III','ANNAKARENINA M. DAROYODUN',75);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (278,'SOCIAL WELFARE ASSISTANT','CHRISTIN A. VENTURINA',457);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (279,'MUNICIPAL/CITY LINK','MOHAMMAD M. KAMA',442);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (280,'SOCIAL WELFARE ASSISTANT','DAISYLEN E. REBUCAS',481);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (281,'SOCIAL WELFARE ASSISTANT','HAMIDA G. LANSON',451);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (282,'SOCIAL WELFARE ASSISTANT','NORJANNAH D. MACADADAYA',503);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (283,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','DREX M. UMADHAY',755);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (284,'COMMUNITY FACILITATOR/ CASE WORKER','JULIE MAR L. UNAK',436);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (285,'MUNICIPAL/CITY LINK','FARISA A. MAMA',443);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (286,'MUNICIPAL/CITY LINK','KAYLEEN A. LEMENTE',439);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (287,'MUNICIPAL/CITY LINK','SAADIA M. BUTUA',441);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (288,'MUNICIPAL/CITY LINK','SAMINAH M. SAMAD',444);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (289,'MUNICIPAL/CITY LINK','SAMROD P. DIALAL',440);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (290,'MUNICIPAL/CITY LINK','SHAHANIE A. KADIL',435);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (291,'MUNICIPAL/CITY LINK','SHIEKA B. GUMAGA',438);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (292,'SOCIAL WELFARE ASSISTANT','JAMERA M. POCOL',473);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (293,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','NHADZMEHAN A. EBRAHIM',588);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (294,'MUNICIPAL/CITY LINK','SANDRALEN G. DATAYA',419);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (295,'SOCIAL WELFARE ASSISTANT','ALIBAY M. ALIM',455);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (296,'SOCIAL WELFARE ASSISTANT','NORHATA M. ABPI',450);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (297,'SOCIAL WELFARE ASSISTANT','ZAMBRA N. ALI',454);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (298,'SOCIAL WELFARE ASSISTANT','ZORAIDAH S. CASSER',467);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (299,'ADMINISTRATIVE ASSISTANT II *Cluster','JECEAR JAY O. ORLOPIA',120);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (300,'CLUSTER GRS OFFICER','JODITH P. NAGDAPARAN',103);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (301,'PROVINCIAL GRS OFFICER','HANIF M. LANTO',102);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (302,'SOCIAL WELFARE OFFICER III','NORHAIDAH D. SANGGACALA-LAUBAN',71);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (303,'CLUSTER CVS OFFICER','BAIDIDO B. ZUMBAGA',96);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (304,'ADMINISTRATIVE ASSISTANT II *Cluster','VENZAR P. AKMAD',115);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (305,'ADMINISTRATIVE ASSISTANT II *Province','CHRISTINE V. SALUTILLO',90);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (306,'CLUSTER CVS OFFICER','ISSAM S. MACAPODI',97);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (307,'MONITORING AND EVALUATION OFFICER','ALEJANDRO G. CABANTUG',83);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (308,'MUNICIPAL/CITY LINK','AYAH JUHAINA B. PIKIT',410);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (309,'MUNICIPAL/CITY LINK','CHRUNCHE L. AJENO',408);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (310,'PROVINCIAL LINK','EMY D. MAYORDOMO',68);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (311,'ADMINISTRATIVE ASSISTANT II *Cluster','CHESSY ANNE B. POBLETE',121);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (312,'MONITORING AND EVALUATION OFFICER','EVENE T. DELIZO',84);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (313,'MUNICIPAL/CITY LINK','SITTY NAWERAH D. SARIPADA',409);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (314,'SOCIAL WELFARE OFFICER III','CHRISTINE A. VILLAFLOR',74);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (315,'CLUSTER GRS OFFICER','Michael Jhon D. Segafo',106);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (316,'MONITORING AND EVALUATION OFFICER','JAMILA B. KAPAMPANGAN',82);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (317,'PROVINCIAL CVS OFFICER','JALILA A. PANBANGAN',94);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (318,'PROVINCIAL GRIEVANCE OFFICER','ABUSAMA B. TIAGO',80);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (319,'ADMINISTRATIVE ASSISTANT II *Cluster','MICHAEL B. DIPATUAN',116);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (320,'ADMINISTRATIVE ASSISTANT II *Cluster','WALID D. MUTIN',119);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (321,'ADMINISTRATIVE ASSISTANT II *Province','ALFREDO,JR. U. QUIMOYOG',89);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (322,'CLUSTER CVS OFFICER','FAHAD L. CALANDADA',98);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (323,'CLUSTER GRS OFFICER','SAMSODIN B. RASCAL',105);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (324,'MONITORING AND EVALUATION OFFICER','ARIFA A. MARGANI',86);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (325,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','MOHAMIE A. ALAUYA',594);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (326,'PROVINCIAL GRS OFFICER','MOHAMMAD FAHAD B. GUNTING',101);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (327,'SOCIAL WELFARE ASSISTANT','JEYMAR G. ORGANIA',456);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (328,'MUNICIPAL/CITY LINK','MERIAM L. JUANICO',421);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (329,'MUNICIPAL/CITY LINK','NHURWENA B. BLANCO',400);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (330,'ADMINISTRATIVE ASSISTANT II *Cluster','RACHEL MAY J. GAMUETA',122);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (331,'BUS/ CASH CARD','KRIZYL T. MANGINSAY',54);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (332,'CASH CLERK','FAHAD A. IBRAHIM',53);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (333,'ENCODER','ARMIE A. GARCIA',61);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (334,'FINANCIAL ANALYST I (Cash Card Focal Libungan and Alamada)','ROSEMAY C. SUMANTING',41);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (335,'FINANCIAL ANALYST II (Cash Card Focal Saranagni Province)','EMMIE JOY C. LORENZO',36);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (336,'FINANCIAL ANALYST II (Cash Card Focal Sultan Kudarat Province)','ROY U. SALILAGUIA',38);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (337,'INFORMATION TECHNOLOGY OFFICER I','ALDEN A. QUIÑONES',21);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (338,'IP FOCAL','MARY JOY V. GARCIA',30);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (339,'IPDO/ NGA','JELFAH D. AMPUAN',10);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (340,'IPDO/CSO','MERIAM D. APOSTOL',8);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (341,'PROCUREMENT OFFICER','OMIRAH T. ALAWI',16);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (342,'REGIONAL GRIEVANCE MONITORING OFFICER','JEHAN M. MAROHOMSALIC',26);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (343,'SUPPLY OFFICER','MOHANNAD M. PAKER',13);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (344,'SOCIAL WELFARE ASSISTANT','IVY D. EIGO',478);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (345,'MUNICIPAL/CITY LINK','NORPHIA H. MAMOSACA',365);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (346,'SOCIAL WELFARE ASSISTANT','MOHAMAD-ALI D. MACAPAAR',505);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (347,'SOCIAL WELFARE ASSISTANT','AYATULLAH L. BALAYMAN',459);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (348,'SOCIAL WELFARE ASSISTANT','ASMAIRA G. LAGUIALAM',486);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (349,'MUNICIPAL/CITY LINK','HAFSA M. PAKER',331);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (350,'SOCIAL WELFARE ASSISTANT','JALILAH M. DISOMIMBA',476);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (351,'MUNICIPAL/CITY LINK','ANA MAE E. FLORES',425);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (352,'MUNICIPAL/CITY LINK','FAIMAH C. CASIR',423);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (353,'SOCIAL WELFARE ASSISTANT','KHABEB A. MAROHOM',511);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (354,'COMMUNITY FACILITATOR/ CASE WORKER','HAYDEE M. TOMBALE',658);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (355,'COMMUNITY FACILITATOR/ CASE WORKER','JAY-AR K. CAEL',616);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (356,'COMMUNITY FACILITATOR/ CASE WORKER','KRIS JOY S. PECHINO',653);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (357,'SOCIAL WELFARE ASSISTANT','MEL JOY V. ARMONIO',501);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (358,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','DANIA S. PAMALOY',761);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (359,'MUNICIPAL/CITY LINK','SHIELA C. SIMON',371);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (360,'SOCIAL WELFARE ASSISTANT','JOVELYN C. SANAPAN',535);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (361,'MUNICIPAL/CITY LINK','SHIELA MAE L. BARO',158);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (362,'MUNICIPAL/CITY LINK','MARY GRACE L. APALLA',144);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (363,'MUNICIPAL/CITY LINK','ARLYN T. MAGUAN',288);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (364,'MUNICIPAL/CITY LINK','GLORY GRACE G. CELIZ',189);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (365,'MUNICIPAL/CITY LINK','JALAL A. TOROGANAN',387);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (366,'MUNICIPAL/CITY LINK','OMIESALAM E. MAMANTAL',293);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (367,'SOCIAL WELFARE ASSISTANT','ABDULLAH U. SUMBAGA',542);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (368,'MUNICIPAL/CITY LINK','ROHANNA MAYZA M. RAMOS',350);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (369,'PROVINCIAL GRIEVANCE OFFICER','MOHAMMAD HUSSEIN L. GURO',77);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (370,'FDS FOCAL','YASMIN S. MANTAWIL',76);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (371,'PERSONNEL OFFICER','NORHIDAYA D. MAGOMNANG',602);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (373,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ZUHAIR D. SARIP',733);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (374,'MUNICIPAL/CITY LINK','JUHAINA G. DUMIAR',414);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (375,'MUNICIPAL/CITY LINK','AMALA M. BALINDONG',155);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (376,'COMMUNITY FACILITATOR/ CASE WORKER','JOHAINA G. CASAR',647);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (377,'MUNICIPAL/CITY LINK','GOLDIE ROSE J. HUESCA',245);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (378,'COMMUNITY FACILITATOR/ CASE WORKER','RICHELLE  MOSQUERA AGUALA',608);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (379,'MUNICIPAL/CITY LINK','ASIBA S. BADIO',403);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (380,'CLUSTER BUS OFFICER','FAIDAH D. PAISAL',111);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (381,'CLUSTER CVS FOCAL','AISAH U. AMPATUA',23);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (382,'PROVINCIAL GRS OFFICER','ASNIAH B. BENITO-CANA',100);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (383,'MUNICIPAL/CITY LINK','CLAIRE JOY A. LAIDIA',262);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (384,'MUNICIPAL/CITY LINK','JULITA S. RAMOJAL',349);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (385,'MUNICIPAL/CITY LINK','JULIVE F. DAGUMAN',197);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (386,'MUNICIPAL/CITY LINK','NADIA P. KADON',254);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (387,'MUNICIPAL/CITY LINK','SAIDAMEN L. MAROHOM',306);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (388,'MUNICIPAL/CITY LINK','JINKEE JANE C. LEGASPI',269);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (389,'MUNICIPAL/CITY LINK','FARIDAH D. HASSAN',241);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (390,'CLUSTER CVS OFFICER','HILDA S. TENIZO',95);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (391,'PROVINCIAL BUS OFFICER','PHEMER JEAN C. ALMENDRALEJO',107);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (392,'PROVINCIAL BUS OFFICER','BRYAN KARL C. MATE',109);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (393,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MOUSSA M. BALINDONG',772);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (394,'CLUSTER BUS OFFICER','EMILY F. PAMA',112);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (395,'SOCIAL WELFARE OFFICER III','AMOR DIVINA L. PALESTERIO',72);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (396,'PROVINCIAL GRIEVANCE OFFICER','FAISAH M. MANGONDAYA',78);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (397,'CLUSTER BUS OFFICER','EDZEL O. FORMOSO',114);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (398,'PROVINCIAL CVS OFFICER','ROLANDO M. BANAYAG',91);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (399,'PROVINCIAL LINK','TERESITA P. GUYLAN',66);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (400,'ADMINISTRATIVE ASSISTANT II *Province','ALIJAR H. LIDASAN',87);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (401,'PROVINCIAL BUS OFFICER','HANNIE-LAIFA D. MACABANDO',108);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (402,'SOCIAL WELFARE ASSISTANT','NOEL A. QUIÑONES',494);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (403,'SOCIAL WELFARE OFFICER III','JOY ANTONETTE D. UBAS',73);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (404,'CLUSTER BUS OFFICER','NURHAIFA M. TAIB',113);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (405,'PROVINCIAL BUS OFFICER','JALILAH M. MUTO',110);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (406,'PROVINCIAL CVS OFFICER','APRIL AINEE D. GALLEGO',92);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (407,'PROVINCIAL GRIEVANCE OFFICER','DONDON S. PIGCAULAN',79);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (408,'PROVINCIAL LINK','BENILDA B. CORTEZ',65);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (409,'SOCIAL WELFARE OFFICER III','NABIELA G. AMBOR',69);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (410,'ADMINISTRATIVE ASSISTANT I *RPC','NORHANIYA A. BASIR',15);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (411,'ADMINSTRATIVE ASSISTANT II (MCCT)','RYAN ROY B. GAQUING',600);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (412,'BDM/BUS REGIONAL FOCAL','Kristin Vanessa L. De pedro',22);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (413,'COMPUTER MAINTENANCE TECHNOLOGIST II','ANWAR BASSIT H. LIDASAN',19);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (414,'COMPUTER MAINTENANCE TECHNOLOGIST II (MCCT)','SHEILA MAE S. MAGLASANG',599);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (415,'CVS FOCAL (MCCT)','NURHAYLON S. DIANGKA',25);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (416,'ENCODER','HARRISON S. ABDUL',57);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (417,'ENCODER','RAJAHMI D. TIAGO',60);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (418,'FINANCIAL ANALYST II','FARICIA B. RAYMAN',37);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (419,'FINANCIAL ANALYST II (CASH CARD FOCAL Marawi City and Cotabato City)','RAIDAH M. BANTOG',34);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (420,'FINANCIAL ANALYST III *CASH GRANTS','FRITZIE T. QUIJOTE',33);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (421,'IPDO/ LGU/SSA FOCAL','GERLIE D. PAGARIGAN',31);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (424,'MONITORING AND EVALUATION OFFICER','Jonna Rose m. Fresco',28);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (425,'PAYROLL OFFICER','TALHA D. SARIP',11);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (426,'REGIONAL CONVERGENCE OFFICER','PAMELA A. SUSVILLA',764);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (427,'REGIONAL CVS FOCAL','KYZYL SHEEN G. SALVADOR',93);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (428,'Regional Risk Management and Quality Assurance Focal','GEORGE LYNDEL S. SARAO',20);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (429,'SYSTEM COORDINATOR OFFICER','MA. CATHERINE T. DAYAG',24);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (430,'TRAINING SPECIALIST II','BAI-ALLIAH G. AKMAD',4);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (431,'MUNICIPAL/CITY LINK','MAY LYREN L. MADRES',277);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (432,'MUNICIPAL/CITY LINK','JACQUELYN ANN C. JINON',250);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (433,'COMMUNITY FACILITATOR/ CASE WORKER','SHEILA S. TULIO',659);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (434,'MUNICIPAL/CITY LINK','EFFIE JOY C. PARDELLO',339);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (435,'SOCIAL WELFARE ASSISTANT','JALIL D. IBRAHIM',742);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (436,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANNA LUCIA S. CANDA',697);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (437,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','FAISAH T. BANSIL',758);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (438,'SOCIAL WELFARE ASSISTANT','SAMRA M. LANGGUYUAN',518);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (439,'SOCIAL WELFARE ASSISTANT','ASRULLAH A. SONDALO',540);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (440,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ARSENIO F. LIMBAG',744);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (441,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ASRAP K. SARIP',762);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (442,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','CRIS MAE JOY D. BATA-ANON',691);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (443,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','Morjann B. Gayak',711);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (444,'COMMUNITY FACILITATOR/ CASE WORKER','JANAIRAH C. MACADATO',675);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (445,'COMMUNITY FACILITATOR/ CASE WORKER','JESTONI P. CADUNGOG',615);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (446,'SOCIAL WELFARE ASSISTANT','ELINA T. SOLIVIO',539);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (447,'SOCIAL WELFARE ASSISTANT','JENNY T. SUMATRA',499);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (448,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ALINOR S. DERASAMUN',760);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (449,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ENRILO T. SIMSON',734);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (450,'COMMUNITY FACILITATOR/ CASE WORKER','JANICE E. FUENTES',629);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (451,'COMMUNITY FACILITATOR/ CASE WORKER','LUVIMIN B. SERVAÑEZ JR.',652);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (452,'SOCIAL WELFARE ASSISTANT','JULIEVY T. LORIZO',502);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (453,'SOCIAL WELFARE ASSISTANT','LEA V. TOLENTINO',547);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (454,'SOCIAL WELFARE ASSISTANT','APRIL NAVELLE D. JULOYA',550);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (455,'SOCIAL WELFARE ASSISTANT','MEGAN GOLD S. BASUEL',564);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (456,'SOCIAL WELFARE ASSISTANT','JUHAIRY A. MACALANGGAN',562);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (457,'SOCIAL WELFARE ASSISTANT','KAHIR T. PANDI',527);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (458,'COMMUNITY FACILITATOR/ CASE WORKER','MALEEHA A. SALMAN',649);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (459,'MUNICIPAL ROVING BOOKKEEPER','ALI BASHIR K. DEBAROSAN',49);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (460,'MUNICIPAL/CITY LINK','Noraima S. Eting',221);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (461,'SOCIAL WELFARE ASSISTANT','JUHARIA C. ESMAIL',479);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (462,'SOCIAL WELFARE ASSISTANT','MA. ERYLIE S. SAMPIGAT',534);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (463,'SOCIAL WELFARE ASSISTANT','MAHID T. BENITO',461);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (464,'SOCIAL WELFARE ASSISTANT','FAYE DIANNE J. TECSON',559);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (465,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','GERLIE S. DELAROSA',687);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (466,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','ANABELLE R. JABAT',597);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (467,'SOCIAL WELFARE ASSISTANT','ASNAIRAH A. SANGCOPAN',536);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (468,'SOCIAL WELFARE ASSISTANT','JENNELYN R. JABLA',492);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (469,'SOCIAL WELFARE ASSISTANT','JUNELLEN O. OCHIA',524);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (470,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','HANIRA D. DIPATUAN',704);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (471,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JENNY L. FANUNCIO',706);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (472,'COMMUNITY FACILITATOR/ CASE WORKER','Andrea A. Gayosa',632);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (473,'COMMUNITY FACILITATOR/ CASE WORKER','Daisy J. Gallego',630);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (474,'COMMUNITY FACILITATOR/ CASE WORKER','GARY ZALDY R. DELA CRUZ',621);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (475,'COMMUNITY FACILITATOR/ CASE WORKER','JOANNA DAISY S. CABALATUNGAN',614);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (476,'COMMUNITY FACILITATOR/ CASE WORKER','SAUDA M. TAMBAWANG',679);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (477,'MUNICIPAL/CITY LINK','JERRY C. VALENCIA',433);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (478,'MUNICIPAL/CITY LINK','KRISTINE A. UMALI',145);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (479,'SOCIAL WELFARE ASSISTANT','NIXIE REX G. ORTIZ',557);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (480,'SOCIAL WELFARE ASSISTANT','NORJANNAH M. BAULO',554);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (481,'SOCIAL WELFARE ASSISTANT','RAIHANA D. MAGDAGA',506);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (482,'SOCIAL WELFARE ASSISTANT','ROSNIA D. GRANDE',496);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (483,'SOCIAL WELFARE ASSITANT/CFA','KAREEN GAY B. WAGAS',552);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (484,'SOCIAL WELFARE ASSISTANT','CHARLIE ALBERT L. NARIO',522);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (485,'SOCIAL WELFARE ASSISTANT','ALHAFZA L. BAGUADATU',551);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (486,'SOCIAL WELFARE ASSISTANT','BAI QUEENIE K. TAHIR',544);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (487,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','AKLIMA D. BAKAR',483);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (488,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','RYAN A. SOLAIMAN',747);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (489,'COMMUNITY FACILITATOR/ CASE WORKER','ASRAF C. SARIPADA',677);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (490,'COMMUNITY FACILITATOR/ CASE WORKER','MONESAH A. DAING',620);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (491,'SOCIAL WELFARE ASSISTANT','RENIEL F. SUMAGANG',573);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (492,'SOCIAL WELFARE OFFICER II-CONVERGENCE','KRISTINE P. PAREJA',767);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (493,'SOCIAL WELFARE ASSISTANT','JENNY ANNE M. MISSION',566);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (494,'SOCIAL WELFARE ASSISTANT','SAILANIE M. MANDAGAN',509);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (495,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','GADO S. DIGAN',702);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (496,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','HASEL m. Fungan',708);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (497,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JEAN JOY D. COHAN',698);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (498,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','SEBASTIAN L. SALIF',731);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (499,'COMMUNITY FACILITATOR/ CASE WORKER','CASIMERO A. LADIONA',636);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (500,'COMMUNITY FACILITATOR/ CASE WORKER','HAMIDA D. DIPATUAN',624);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (501,'COMMUNITY FACILITATOR/ CASE WORKER','JIM D. ALON',609);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (502,'COMMUNITY FACILITATOR/ CASE WORKER','Rehanna G. Valmores',662);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (503,'COMMUNITY FACILITATOR/ CASE WORKER','SELMA S. TABION',655);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (504,'MUNICIPAL/CITY LINK','ROSEMARIE G. CELO',617);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (505,'SOCIAL WELFARE ASSISTANT','JAMAL AFGHANI B. PIKIT',715);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (506,'SOCIAL WELFARE ASSISTANT','LALING D. MUECO',519);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (507,'SOCIAL WELFARE ASSISTANT','MARIO A. SEMBEGAN',537);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (508,'SOCIAL WELFARE ASSISTANT','HANNAH S. SARIP',495);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (509,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','HAMDAN U. UTTO',740);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (510,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MAE ANN M. ESTABILLO ',757);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (511,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NASSIF D. MACARAMPAT',748);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (512,'COMMUNITY FACILITATOR/ CASE WORKER','MARIAM S. PASAWILAN',644);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (513,'COMMUNITY FACILITATOR/ CASE WORKER','NOR MARILOU D. ROALES',646);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (514,'COMMUNITY FACILITATOR/ CASE WORKER','TANSEY A. GUIALIL',634);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (515,'MUNICIPAL ROVING BOOKKEEPER','AGNES JOY C. CARALOS',585);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (516,'MUNICIPAL/CITY LINK','GUEN M. QUIJANO',415);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (517,'SOCIAL WELFARE ASSISTANT','ANNA JOY N. MAULAS',577);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (518,'SOCIAL WELFARE ASSISTANT','SAMRAH B. PARNAN',529);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (519,'SOCIAL WELFARE ASSISTANT','AMANI D. USMAN',574);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (520,'SOCIAL WELFARE ASSISTANT','JUHARAH H. TOMARA',548);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (521,'SOCIAL WELFARE ASSISTANT','RAHIMA S. NAMLA',521);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (522,'SOCIAL WELFARE ASSISTANT','RANIAH A. DIMANGADAP',572);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (523,'SOCIAL WELFARE ASSISTANT','SUSAN C. MILLAN',514);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (524,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ABDU LARDEE S. TAMAMA',738);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (525,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NORMA L. GASANG',710);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (526,'COMMUNITY FACILITATOR/ CASE WORKER','SHEENA PEARL R. MANATAD',641);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (527,'SOCIAL WELFARE ASSISTANT','JORGE WELHELM A. JULIAN',493);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (528,'SOCIAL WELFARE ASSISTANT','AMIRA D. OLALISAN',525);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (529,'SOCIAL WELFARE ASSISTANT','ASNAIRAH S. TAMBUTO',545);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (530,'SOCIAL WELFARE ASSITANT-CONVERGENCE','NOELYN JANE R. OLIVARES',775);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (531,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANECITA P. LAWI-AN',719);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (532,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','FARHANA M. ELIAS',713);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (533,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','GIOVANNI C. RODRIGUEZ',722);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (534,'COMMUNITY FACILITATOR/ CASE WORKER','IRIS M. DELA CRUZ',622);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (535,'COMMUNITY FACILITATOR/ CASE WORKER','JHEMRUDDEEN R. LUNDUNGAN',639);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (536,'COMMUNITY FACILITATOR/ CASE WORKER','MARK JAMES L. FADERAN',674);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (537,'SOCIAL WELFARE ASSISTANT','FAITH SALVY P. BATOY',556);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (538,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ALMIRAH A. SANDEK',732);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (539,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','AMERHUSSEIN G. MAROHOM',685);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (540,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','DAN SERGIE M. MAGBANUA',774);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (541,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MYRA FLOR P. LAMOG',570);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (542,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ZAIDAN T. AMPUAN',689);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (543,'COMMUNITY FACILITATOR/ CASE WORKER','BLEZZETE ANNE L. DERIADA',623);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (544,'COMMUNITY FACILITATOR/ CASE WORKER','EARL STANLY L. PASION',645);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (545,'COMMUNITY FACILITATOR/ CASE WORKER','Eugene S. Fanulan',627);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (546,'COMMUNITY FACILITATOR/ CASE WORKER','FAHAD D. BALINDONG',668);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (547,'COMMUNITY FACILITATOR/ CASE WORKER','Johna paz C. Occeño',673);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (548,'COMMUNITY FACILITATOR/ CASE WORKER','JOVELYN M. COPLEROS',607);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (549,'COMMUNITY FACILITATOR/ CASE WORKER','JOYMIE G. LUMBAY',638);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (550,'COMMUNITY FACILITATOR/ CASE WORKER','LYNN ORCHIDJUNE R. SURIA',654);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (551,'COMMUNITY FACILITATOR/ CASE WORKER','MOHAEDDIN C. UMPAR',661);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (552,'SOCIAL WELFARE ASSITANT/CFA','BLUE DEI T. SONCIO',560);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (553,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MUSRIFAH S. ABDULFATTAH',725);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (554,'SOCIAL WELFARE ASSISTANT','AS-BHATTY A. MIPUKUR',515);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (555,'SOCIAL WELFARE ASSISTANT','LEILANIE I. SUMNDAD',543);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (556,'SOCIAL WELFARE ASSISTANT','MINDA F. MIRANDA',516);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (557,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','HAROLD L. SANTAÑEZ',593);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (558,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','SHELLANIE M. PAGULONG',591);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (559,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','LORILIE S. GUIAMAD',695);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (560,'SOCIAL WELFARE ASSISTANT','SITTIE CONNIE U. SUMANDAL',541);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (561,'MUNICIPAL/CITY LINK','MAYRA C. MAKABIRO',353);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (562,'SOCIAL WELFARE ASSISTANT','SHAHANIE S. ISMAEL',491);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (563,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','IVANDIER O. JABAT',580);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (564,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANISAH M. BATU-AN',759);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (565,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','SAHLIA B. SAIDAMEN',753);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (566,'COMMUNITY FACILITATOR/ CASE WORKER','AL JUMMAH A. GARUDA',682);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (567,'COMMUNITY FACILITATOR/ CASE WORKER','RONALD T. TAMBI',656);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (568,'COMMUNITY FACILITATOR/ CASE WORKER','RUFFY S. NAYRE',684);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (569,'COMMUNITY FACILITATOR/ CASE WORKER','SAID B. MAKALAPIN',683);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (570,'SOCIAL WELFARE ASSISTANT','JOKER A. ARQUIO',565);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (571,'SOCIAL WELFARE ASSISTANT','MOBINA A. SAMAMA',576);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (572,'SOCIAL WELFARE ASSISTANT','NAJIB B. ABDULCADER',555);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (573,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','ABDUL WAHID A. BACARAT',583);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (574,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','MOH\'D NORHAN M. ALAWI',578);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (575,'SENIOR BOOKKEEPER','DATU AL-RASHID D. KUSIN',43);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (576,'SENIOR BOOKKEEPER','NASHIBA L. KAWIT',45);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (577,'SOCIAL WELFARE ASSISTANT','MOHAIMA C. MOHAMAD',563);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (578,'SOCIAL WELFARE ASSISTANT','SOHAIDEN T. MALAWANI',532);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (579,'MUNICIPAL/CITY LINK','AMERA P. ODEN',199);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (580,'MUNICIPAL/CITY LINK','SAHOD G. KARIM',166);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (581,'SOCIAL WELFARE ASSISTANT','SHAIRA S. GUINTA',569);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (582,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANNA MARIE P. ESCOLANO',705);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (583,'COMMUNITY FACILITATOR/ CASE WORKER','GLEZEIL P. JUMAO-AS',635);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (584,'COMMUNITY FACILITATOR/ CASE WORKER','MAY ANTONETTE S. FEÑOLA',628);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (585,'SOCIAL WELFARE ASSISTANT','Felisa S. Logronio',513);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (586,'SOCIAL WELFARE ASSISTANT','GLORY MAY C. EUCARE',558);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (587,'SOCIAL WELFARE OFFICER III','BAI ALEHA B. BIRUAR',70);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (588,'SOCIAL WELFARE ASSISTANT','KIMBERLY MAE F. CANDARI',575);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (589,'SOCIAL WELFARE ASSITANT-CONVERGENCE','CRIS S. BULDA',771);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (590,'SOCIAL WELFARE OFFICER II-CONVERGENCE','JENELYN D. ARDEÑA',766);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (591,'ENCODER','ARVEE MAE M. BERONDO',58);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (592,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','CARREN JOY G. TORRES',589);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (593,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','JABBER M. DIMAL',587);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (594,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','JOHARI T. SINBANGAN',595);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (595,'MUNICIPAL/CITY LINK','CATHY S. ORAIZ ',413);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (596,'SOCIAL WELFARE ASSISTANT','ERWIN JAY D. SEGAFO',500);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (597,'ENCODER','JOSE RONITO A. MABALOT',63);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (598,'ENCODER','ROMEL O. PADUA',64);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (599,'SOCIAL WELFARE OFFICER II-CONVERGENCE','KATLEEN P. LIM',776);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (600,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','VAL IAN B. GONZALES',701);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (601,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','BAGUINDA P. ABDULLAH',686);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (602,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','FAIDAH B. MASACAL',716);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (603,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NORHATA A. ZACARIA',741);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (604,'COMMUNITY FACILITATOR/ CASE WORKER','JESSA MAY B. BALUNTONG',669);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (605,'COMMUNITY FACILITATOR/ CASE WORKER','Karl A. Milar',642);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (606,'ADMINISTRATIVE ASSISTANT I *Supply','AISAH B. AGUAM',14);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (607,'Cash Card Focal South Cotabato Province','MAHARLIKA R. DUBLIN',603);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (608,'FINANCIAL ANALYST II (Cash Card Focal North Cotabato Province)','REGINA MAE R. EPANTO',35);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (609,'INFORMATION OFFICER II','JEOFFREY B. MAITEM',6);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (610,'MUNICIPAL ROVING BOOKKEEPER','VANESSA JUNE E. BALBUENA',584);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (611,'SENIOR BOOKKEEPER','JERICHO M. MAKASULAY',47);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (612,'SENIOR BOOKKEEPER','KARLA LOUISE D. ABEDES',42);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (613,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MARICEL P. DARAUG',700);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (614,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NORLAINIE U. SULTAN',735);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (615,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','Renato B. Danial',699);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (616,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','SUSANA H. REYES',729);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (617,'COMMUNITY FACILITATOR/ CASE WORKER','AKRIMA S. GANI',631);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (618,'COMMUNITY FACILITATOR/ CASE WORKER','ERLINDA D. REAL',625);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (619,'COMMUNITY FACILITATOR/ CASE WORKER','JUAMER L. LEYSON',637);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (620,'COMMUNITY FACILITATOR/ CASE WORKER','RIHZA O. WATIN',663);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (621,'MUNICIPAL/CITY LINK','NASHIBA C. SUMULONG',300);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (622,'SOCIAL WELFARE ASSISTANT','ABARUYA D. KUNDAI',497);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (623,'SOCIAL WELFARE ASSISTANT','AMMANODIN A. SARIPADA',510);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (624,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','BYRON M. LABADAN',582);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (625,'SENIOR BOOKKEEPER','GLEND JAY T. MACUHA',46);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (626,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NAJMAH M. HADJI SARIEF',724);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (627,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','AMILADEN A. GURO',745);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (628,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','FAROUK N. ISMAEL',714);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (629,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','Louella S. ENOBIO',730);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (630,'COMMUNITY FACILITATOR/ CASE WORKER','MOHAMMAD FAIZ C. ENDAWI',626);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (631,'COMMUNITY FACILITATOR/ CASE WORKER','RUTH C. CLEMENTES',618);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (632,'SOCIAL WELFARE ASSISTANT','DWIGHT A. TOGONON',546);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (633,'SOCIAL WELFARE ASSISTANT','BAYANISA M. MUTIN',520);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (634,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANDRIAN G. ATANG',690);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (635,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','EDDIE E. PORRAS',736);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (636,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','FELY JANE B. LAKAY',693);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (637,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JOHN U. UNAK',739);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (638,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','LORLIE G. PAJAYAO',712);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (639,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','PAULINA F. OPING',727);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (640,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','RICKY JOHN M. GALINDO',770);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (641,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','SHAHANIE M. MACADATO',721);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (642,'COMMUNITY FACILITATOR/ CASE WORKER','ARIEL G. SAGUID',648);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (643,'COMMUNITY FACILITATOR/ CASE WORKER','ASLANIE C. AMEROL',610);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (644,'COMMUNITY FACILITATOR/ CASE WORKER','ERNESTO M. TAN',680);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (645,'COMMUNITY FACILITATOR/ CASE WORKER','JOSE OMAR B. CORTEZ',671);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (646,'COMMUNITY FACILITATOR/ CASE WORKER','MARK D. TANAEL',657);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (647,'COMMUNITY FACILITATOR/ CASE WORKER','NOOR M. MAMPEN',640);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (648,'COMMUNITY FACILITATOR/ CASE WORKER','ROSANNIE GRACE L. LANADO',666);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (649,'SOCIAL WELFARE ASSISTANT','ANGELITA G. SAMPAN',533);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (650,'SOCIAL WELFARE ASSISTANT','GENEVIEVE F. PARADILLO',528);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (651,'SOCIAL WELFARE ASSISTANT','NORMALIA R. MAROHOM',512);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (652,'SOCIAL WELFARE ASSISTANT','SONAYYAH B. MAROHOM',504);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (653,'SOCIAL WELFARE ASSITANT/CFA-CONVERGENCE','MARVELOUS GRACE U. KHAN',754);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (654,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JONNAVEL B. TESORO',694);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (655,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','Micaella A. Dilausan',703);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (656,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','MOJIB R. PANGANDAMAN',756);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (657,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','QUEENILYN D. MACATOON',707);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (658,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','WHALID T. LAO',718);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (659,'COMMUNITY FACILITATOR/ CASE WORKER','BAIMONA P. DALANDAG',672);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (660,'COMMUNITY FACILITATOR/ CASE WORKER','CAREM E. TALEMBO',678);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (661,'MUNICIPAL/CITY LINK','MARY GRACE R. LABORDO',259);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (662,'MUNICIPAL/CITY LINK','SARAH MAY C. BURAY',183);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (663,'COMMUNITY FACILITATOR/ CASE WORKER','SAMIR A. ADAM',667);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (664,'MUNICIPAL/CITY LINK','LOVE T. RAMOS',389);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (665,'MUNICIPAL/CITY LINK','Alane May D. Roullo',356);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (666,'MUNICIPAL/CITY LINK','DIONNE LYNN B. NABOR',319);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (667,'MUNICIPAL/CITY LINK','DAISY D. CARBON',205);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (668,'MUNICIPAL/CITY LINK','SITTIE NAIRA R. HASSAN',163);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (669,'MUNICIPAL/CITY LINK','SITTIE RAIHAN U. SAROSONG',430);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (670,'MUNICIPAL/CITY LINK','ANNA CARLENE M. SANCHEZ',364);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (671,'MUNICIPAL/CITY LINK','AMRAIDA M. UGA',312);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (672,'MUNICIPAL/CITY LINK','BAI NORIE A. KASAN',256);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (673,'MUNICIPAL/CITY LINK','NASRODEN L. ALAB',131);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (674,'MUNICIPAL/CITY LINK','RAHANI P. ALI',136);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (675,'MUNICIPAL/CITY LINK','ISMAEL J. CABILANGAN',405);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (676,'MUNICIPAL/CITY LINK','JHOBERT SONNY M. VIDAL',394);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (677,'MUNICIPAL/CITY LINK','JOYLYN S. CATAAN-SOLCORITES',186);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (678,'MUNICIPAL/CITY LINK','MADIHA T. MACABANDO',229);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (679,'MUNICIPAL/CITY LINK','MARY JOY A. LATUMBO',264);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (680,'MUNICIPAL/CITY LINK','NORMINA M. HASSAN',242);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (681,'MUNICIPAL/CITY LINK','JOHN MARK M. GUYOS',239);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (682,'MUNICIPAL/CITY LINK','THRICEE JEWAL B. WAGAS',397);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (683,'MUNICIPAL/CITY LINK','BEATREZ MARITES F. FALE',226);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (684,'MUNICIPAL/CITY LINK','FLORENCE JOY C. ACUPINPIN',128);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (685,'MUNICIPAL/CITY LINK','CHERYL ANN B. DELOS SANTOS',168);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (686,'MUNICIPAL/CITY LINK','APRIL JOY T. BANGGAY',380);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (687,'MUNICIPAL/CITY LINK','ROHAILAH I. MAROHOM',305);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (688,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','ANALYN A. LAMPINO',717);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (689,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','DELIA B. LUMBAY',720);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (690,'COMMUNITY FACILITATOR/ CASE WORKER','ANALYN A. COLON',619);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (691,'MUNICIPAL/CITY LINK','NAEKIE JAPE U. KHAN',257);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (692,'MUNICIPAL/CITY LINK','JEOGENA A. DELA CRUZ',147);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (693,'MUNICIPAL/CITY LINK','MARIA LOURDES L. BAYOGOS',161);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (694,'MUNICIPAL/CITY LINK','MARIA NITA R. MAGNO',287);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (695,'COMMUNITY FACILITATOR/ CASE WORKER','Genevieve C. Gempesaw',633);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (696,'MUNICIPAL/CITY LINK','NEIL MICHAEL D. LOFRANCO',276);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (697,'MUNICIPAL/CITY LINK','VAN HARRY C. CABALLERO',170);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (698,'MUNICIPAL/CITY LINK','CIARA KRISTINA N. FLORES',127);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (699,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','OMAR-ALI A. KAPAMPANGAN',746);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (700,'MUNICIPAL/CITY LINK','JACKIE LOU A. JUNIO',251);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (701,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','JASPER KENNITH C. DUMPA',751);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (702,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','LIZA M. OBINA',726);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (703,'COMMUNITY FACILITATOR/ CASE WORKER','MAR JOY D. UNDRAY',681);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (704,'MUNICIPAL/CITY LINK','GLAIZA SHAYNNE R. ANTONINO',355);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (705,'MUNICIPAL/CITY LINK','JONNA CRIS M. CALANAO',173);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (706,'MUNICIPAL/CITY LINK','VANESSA LOVER D. VILLACERAN',396);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (707,'MUNICIPAL/CITY LINK','LILA MAE T. SAGGE',378);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (708,'MUNICIPAL/CITY LINK','Nor-ain S. Bubong',167);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (709,'MUNICIPAL/CITY LINK','RITZE TWIN S. YULORES',434);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (710,'MUNICIPAL/CITY LINK','NAIRA K. GANI',252);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (711,'COMMUNITY FACILITATOR/ CASE WORKER','HAYRODIN A. SAHID',676);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (712,'MUNICIPAL/CITY LINK','SITTIE UMAIRA K. ADANG',664);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (713,'MUNICIPAL ROVING BOOKKEEPER 1:2000HHs of MOP non CC','ROXANNE EVE G. QUIÑONES',592);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (714,'SOCIAL WELFARE OFFICER II-CONVERGENCE','JUDY ANN B. EGLESIA',769);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (715,'COMMUNITY FACILITATOR/ CASE WORKER','FLORENCE A. AQUINO',604);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (716,'SOCIAL WELFARE ASSISTANT','JONALYN L. NAVARRO',523);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (717,'REGIONAL GRIEVANCE OFFICER','MUHAYMIN M. ABDUL MALIK',99);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (718,'MUNICIPAL/CITY LINK','MERLINDA E. CALIBAYAN',175);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (719,'MUNICIPAL/CITY LINK','Renalyn C. Ruam',357);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (720,'MUNICIPAL/CITY LINK','JANICE GEY B. TANALGO',383);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (721,'MUNICIPAL/CITY LINK','CHARON ROSE S. CALIBAYAN',174);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (722,'MUNICIPAL/CITY LINK','HONEY GRACE C. PRINCIPE',344);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (723,'MUNICIPAL/CITY LINK','MA. CHARMEL A. SOMERA',139);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (724,'MUNICIPAL/CITY LINK','MARIA LUISA M. TINDOY',385);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (725,'COMMUNITY FACILITATOR/ CASE WORKER','NORHANA B. PAGAYAWAN',643);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (726,'MUNICIPAL/CITY LINK','DIANA IRA O. TAN',172);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (727,'MUNICIPAL/CITY LINK','JENNIFER P. AMBALGAN',140);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (728,'MUNICIPAL/CITY LINK','PEARLY MAE S. PANIZA',338);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (729,'MUNICIPAL/CITY LINK','Joan grace Q. Mendoza',311);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (730,'MUNICIPAL/CITY LINK','QUEEN HANISHA T. MANDANGAN',296);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (731,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','KAREN KAYE B. TABOJARA',737);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (732,'COMMUNITY FACILITATOR/ CASE WORKER','ERWIN L. Bañares',611);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (733,'COMMUNITY FACILITATOR/ CASE WORKER','FAIRUZ B. BATUGAN',612);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (734,'COMMUNITY FACILITATOR/ CASE WORKER','jeselie C. Sarael',650);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (735,'MUNICIPAL/CITY LINK','NOR-AINIE A. MACABATO',325);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (736,'SOCIAL WELFARE ASSISTANT','ALEX A. BANDILA',460);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (737,'CLUSTER GRS OFFICER','JOEL RENE J. SULPOT',104);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (738,'SOCIAL WELFARE OFFICER III','NORAISA A. TUDON',7);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (739,'FINANCIAL ANALYST I','potre aleeyah S. Ampong',39);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (740,'GRS','ERNESTO S. BASINGA',55);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (741,'GRS (MCCT RPMO)','NOROLHAKIM U. AMBOR',27);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (742,'SENIOR BOOKKEEPER','MOHAIMA T. MONAALIM',48);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (743,'SOCIAL WELFARE ASSISTANT','NOR-AIN P. BANALAN',692);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (744,'CFA/ FAMILY WELFARE ASSISTANT for MCCT','NORODEN B. MANDI',709);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (745,'ADMINISTRATIVE ASSISTANT II *Cluster','ICARUS D. ESPINILLA',117);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (746,'MUNICIPAL/CITY LINK','NAYLAH L. IBRAHIM',407);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (747,'ADMINISTRATIVE ASSISTANT II *ORD','CHERRY MAE M. ARNAIZ',3);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (748,'ADMINISTRATIVE ASSISTANT II *Procurement','FAIRODZ A. MANADTING',17);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (749,'ADMINISTRATIVE ASSISTANT II *PSD Chief','ANNA LIZA N. ESPINOSA',2);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (750,'BUDGET ASSISTANT','CHERRY M. MEDIJA',51);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (751,'BUDGET ASSISTANT','JESELLE M. BALOGBOG',50);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (752,'CASH CLERK','JAMALIA D. ARAT',52);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (753,'CHILD PSYCHOLOGIST','JERON B. ETINO',601);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (754,'FINANCIAL ANALYST I','KATHREEN MARIZ D. SALARDA',40);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (755,'FINANCIAL ANALYST III *BUDGET OFFICER','NOR-SHALEA S. SARIP',32);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (756,'HUMAN RESOURCE OFFICER I','APRIL VFLYNT A. ARIAR',12);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (757,'MUNICIPAL ROVING BOOKKEEPER','LAWRENCE JAY B. LAGUINDAB',590);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (758,'SOCIAL WELFARE OFFICER II-CONVERGENCE','DALE FAITH VILLASOR',0);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (759,'SOCIAL WELFARE ASSISTANT','NORJANA LABUAN HANAF',0);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (760,'SWO II','BRENDA RODA',0);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1000,'SOCIAL WELFARE ASSISTANT','BERT JOMAR L. PEREYRA',530);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1001,'COMMUNITY FACILITATOR/ CASE WORKER','MARIZEL B. UBONGEN',660);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1003,'MUNICIPAL/CITY LINK','CHRISTOPHER S. MAGHINAY',286);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1005,'MUNICIPAL/CITY LINK','DESERIE M. DELALAMON',203);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1006,'SLP','SLP/Angelita Paquibot',NULL);
insert  into `lib_employees`(`ID`,`DESIGNATION`,`NAME`,`EMP_ID`) values (1007,'INFORMATION OFFICER','AUDREY JANE SOLIVA',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

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
