CREATE DATABASE  IF NOT EXISTS `heroku_c6f9ad1c27bc465` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_c6f9ad1c27bc465`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: eu-cdbr-west-02.cleardb.net    Database: heroku_c6f9ad1c27bc465
-- ------------------------------------------------------
-- Server version	5.6.50-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empdata`
--

DROP TABLE IF EXISTS `empdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empno` int(11) DEFAULT NULL,
  `empid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5221 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empdata`
--

LOCK TABLES `empdata` WRITE;
/*!40000 ALTER TABLE `empdata` DISABLE KEYS */;
INSERT INTO `empdata` VALUES (1,1,'4605'),(11,2,'2461'),(21,3,'2434'),(31,4,''),(41,5,'4718'),(51,6,'3069'),(61,7,'1119'),(71,8,'5002'),(81,9,'2867'),(91,10,'2515'),(101,11,'4395'),(111,12,'2033'),(121,13,''),(131,14,'3894'),(141,15,'4929'),(151,16,'1840'),(161,17,'4255'),(171,18,'2756'),(181,19,'4863'),(191,20,'4260'),(201,21,'4452'),(211,22,'4732'),(221,23,'4633'),(231,24,'4561'),(241,25,'4812'),(251,26,'4894'),(261,27,'4661'),(271,28,'4663'),(281,29,'4668'),(291,30,'4669'),(301,31,'4896'),(311,32,'4557'),(321,33,'5031'),(331,34,'4995'),(341,35,'4662'),(351,36,'4900'),(361,37,'4426'),(371,38,'4370'),(381,39,'3919'),(391,40,'4993'),(401,41,'4106'),(411,42,'4926'),(421,43,'4751'),(431,44,'4913'),(441,45,'4906'),(451,46,'5030'),(461,47,'3989'),(471,48,'4001'),(481,49,'2626'),(491,50,'4312'),(501,51,'5026'),(511,52,'5122'),(521,53,'5113'),(531,54,'5029'),(541,55,'4918'),(551,56,''),(561,57,'4652'),(571,58,'4644'),(581,59,'1752'),(591,60,'4664'),(601,61,'4259'),(611,62,'4955'),(621,63,'4910'),(631,64,'4638'),(641,65,'4427'),(651,66,'5105'),(661,67,'4907'),(671,68,'4930'),(681,69,'4911'),(691,70,'4912'),(701,71,'4915'),(711,72,'3803'),(721,73,'5088'),(731,74,'5040'),(741,75,'1073'),(751,76,'5041'),(761,77,'4360'),(771,78,'4361'),(781,79,'5039'),(791,80,'5042'),(801,81,'4948'),(811,82,'4453'),(821,83,'5084'),(831,84,'4814'),(841,85,'2860'),(851,86,'4901'),(861,87,'4919'),(871,88,'4775'),(881,89,'2948'),(891,90,'4795'),(901,91,'4917'),(911,92,'3198'),(921,93,'3199'),(931,94,'4963'),(941,95,''),(951,96,'4542'),(961,97,'4921'),(971,98,'3985'),(981,99,'4335'),(991,100,'4337'),(1001,101,'4922'),(1011,102,'4565'),(1021,103,'3205'),(1031,104,'4321'),(1041,105,'4676'),(1051,106,'5086'),(1061,107,'5056'),(1071,108,'5061'),(1081,109,'2553'),(1091,110,'3235'),(1101,111,'4659'),(1111,112,'2143'),(1121,113,''),(1131,114,'C305'),(1141,115,'2201'),(1151,116,'4943'),(1161,117,''),(1171,118,''),(1181,119,'4942'),(1191,120,'4944'),(1201,121,'4928'),(1211,122,'5028'),(1221,123,'1718'),(1231,124,'5064'),(1241,125,'5060'),(1251,126,'3952'),(1261,127,'4232'),(1271,128,'5074'),(1281,129,'4947'),(1291,130,'5127'),(1301,131,'4083'),(1311,132,'4511'),(1321,133,''),(1331,134,'4299'),(1341,135,'4527'),(1351,136,'5083'),(1361,137,'3953'),(1371,138,'4643'),(1381,139,'4836'),(1391,140,'4823'),(1401,141,'5085'),(1411,142,'4647'),(1421,143,'4641'),(1431,144,'4757'),(1441,145,'4120'),(1451,146,'4594'),(1461,147,'4637'),(1471,148,''),(1481,149,'164'),(1491,150,'4685'),(1501,151,'4684'),(1511,152,'2867'),(1521,153,'4687'),(1531,154,'4688'),(1541,155,'4687'),(1551,156,'4457'),(1561,157,''),(1571,158,'4818'),(1581,159,'5098'),(1591,160,'4874'),(1601,161,'2120'),(1611,162,'2432'),(1621,163,'5103'),(1631,164,'4949'),(1641,165,'c306'),(1651,166,'4698'),(1661,167,'5104'),(1671,168,'4953'),(1681,169,'5100'),(1691,170,'5099'),(1701,171,'4706'),(1711,172,'4776'),(1721,173,'1360'),(1731,174,'4037'),(1741,175,'5108'),(1751,176,'3946'),(1761,177,'4573'),(1771,178,'1492'),(1781,179,''),(1791,180,'4764'),(1801,181,'4593'),(1811,182,'5092'),(1821,183,'5094'),(1831,184,'5093'),(1841,185,'5091'),(1851,186,'483'),(1861,187,'4587'),(1871,188,'4367'),(1881,189,'5090'),(1891,190,'5058'),(1901,191,'5115'),(1911,192,'5114'),(1921,193,'5116'),(1931,194,'4519'),(1941,195,'772'),(1951,196,'5038'),(1961,197,'3857'),(1971,198,'3416'),(1981,199,''),(1991,200,'4007'),(2001,201,'856'),(2011,202,'803'),(2021,203,'4512'),(2031,204,'4678'),(2041,205,''),(2051,206,'4632'),(2061,207,'2161'),(2071,208,''),(2081,209,'812'),(2091,210,'2639'),(2101,211,'3110'),(2111,212,'3705'),(2121,213,''),(2131,214,'4578'),(2141,215,'3712'),(2151,216,'2447'),(2161,217,'1590'),(2171,218,'4518'),(2181,219,''),(2191,220,'3760'),(2201,221,''),(2211,222,'3690'),(2221,223,'3831'),(2231,224,'4642'),(2241,225,'4569'),(2251,226,'4404'),(2261,227,'4560'),(2271,228,''),(2281,229,'3270'),(2291,230,'3051'),(2301,231,'363'),(2311,232,'4711'),(2321,233,'3703'),(2331,234,'4571'),(2341,235,''),(2351,236,''),(2361,237,''),(2371,238,''),(2381,239,'4487'),(2391,240,''),(2401,241,''),(2411,242,'4730'),(2421,243,'4731'),(2431,244,'4562'),(2441,245,'4433'),(2451,246,''),(2461,247,''),(2471,248,'4954'),(2481,249,''),(2491,250,'4741'),(2501,251,''),(2511,252,'4746'),(2521,253,'4748'),(2531,254,'4752'),(2541,255,''),(2551,256,'4751'),(2561,257,'5099'),(2571,258,'4780'),(2581,259,'4756'),(2591,260,'4747'),(2601,261,'4758'),(2611,262,'4769'),(2621,263,'4762'),(2631,264,'1572'),(2641,265,'4612'),(2651,266,'1028'),(2661,267,'4356'),(2671,268,'2640'),(2681,269,'3697'),(2691,270,''),(2701,271,''),(2711,272,''),(2721,273,''),(2731,274,'4773'),(2741,275,'4782'),(2751,276,''),(2761,277,'4789'),(2771,278,'4936'),(2781,279,'4798'),(2791,280,'4804'),(2801,281,'5110'),(2811,282,'4812'),(2821,283,'3185'),(2831,284,'4816'),(2841,285,'4817'),(2851,286,'4826'),(2861,287,'4824'),(2871,288,'4821'),(2881,289,'4786'),(2891,290,''),(2901,291,'5079'),(2911,292,''),(2921,293,'4794'),(2931,294,'5078'),(2941,295,'4843'),(2951,296,'4853'),(2961,297,'4903'),(2971,298,'3940'),(2981,299,''),(2991,300,''),(3001,301,''),(3011,302,''),(3021,303,'4854'),(3031,304,'4855'),(3041,305,''),(3051,306,'4844'),(3061,307,'4841'),(3071,308,'4860'),(3081,309,'4805'),(3091,310,'4861'),(3101,311,''),(3111,312,'4862'),(3121,313,'4866'),(3131,314,'4865'),(3141,315,''),(3151,316,'4871'),(3161,317,'4867'),(3171,318,'4804'),(3181,319,'4891'),(3191,320,''),(3201,321,'amol nakar'),(3211,322,''),(3221,323,'4886'),(3231,324,'4879'),(3241,325,'4883'),(3251,326,'4885'),(3261,327,'4887'),(3271,328,'4884'),(3281,329,'4925'),(3291,330,'4889'),(3301,331,'4883'),(3311,332,'4878'),(3321,333,'4653'),(3331,334,''),(3341,335,'4932'),(3351,336,'4962'),(3361,337,'4176'),(3371,338,'1536'),(3381,339,'3704'),(3391,340,'4107'),(3401,341,'4506'),(3411,342,'4507'),(3421,343,'2735'),(3431,344,'2005'),(3441,345,'c287'),(3451,346,'4378'),(3461,347,'2757'),(3471,348,'2269'),(3481,349,'1522'),(3491,350,'1335'),(3501,351,''),(3511,352,'2601'),(3521,353,'1683'),(3531,354,'2632'),(3541,355,'2559'),(3551,356,'2716'),(3561,357,''),(3571,358,'2827'),(3581,359,'4783'),(3591,360,'4799'),(3601,361,''),(3611,362,'4964'),(3621,363,'5111'),(3631,364,'4966'),(3641,365,'4666'),(3651,366,''),(3661,367,''),(3671,368,'3118'),(3681,369,'4968'),(3691,370,'4320'),(3701,371,'692'),(3711,372,'2859'),(3721,373,''),(3731,374,'4606'),(3741,375,'4971'),(3751,376,''),(3761,377,''),(3771,378,'4970'),(3781,379,'4409'),(3791,380,'4450'),(3801,381,'2310'),(3811,382,''),(3821,383,'4978'),(3831,384,'3246'),(3841,385,'4983'),(3851,386,'4862'),(3861,387,'4496'),(3871,388,'4489'),(3881,389,'4991'),(3891,390,'4990'),(3901,391,'4992'),(3911,392,'4891'),(3921,393,'4994'),(3931,394,'5000'),(3941,395,'4338'),(3951,396,'4946'),(3961,397,'4999'),(3971,398,'4998'),(3981,399,'5006'),(3991,400,'5004'),(4001,401,'5008'),(4011,402,'5010'),(4021,403,'S112'),(4031,404,'5018'),(4041,405,'4822'),(4051,406,'5036'),(4061,407,'5046'),(4071,408,'5043'),(4081,409,'5045'),(4091,410,'5044'),(4101,411,'5050'),(4111,412,'5048'),(4121,413,'5047'),(4131,414,'5051'),(4141,415,'5049'),(4151,416,'5055'),(4161,417,'5070'),(4171,418,''),(4181,419,''),(4191,420,''),(4201,421,''),(4211,422,''),(4221,423,''),(4231,424,''),(4241,425,''),(4251,426,''),(4261,427,''),(4271,428,''),(4281,429,''),(4291,430,''),(4301,431,''),(4311,432,''),(4321,433,''),(4331,434,''),(4341,435,''),(4351,436,''),(4361,437,''),(4371,438,''),(4381,439,''),(4391,440,''),(4401,441,''),(4411,442,''),(4421,443,''),(4431,444,''),(4441,445,''),(4451,446,''),(4461,447,''),(4471,448,''),(4481,449,''),(4491,450,''),(4501,451,''),(4511,452,''),(4521,453,''),(4531,454,''),(4541,455,''),(4551,456,''),(4561,457,''),(4571,458,''),(4581,459,''),(4591,460,''),(4601,461,''),(4611,462,''),(4621,463,''),(4631,464,''),(4641,465,''),(4651,466,''),(4661,467,''),(4671,468,''),(4681,469,''),(4691,470,''),(4701,471,''),(4711,472,''),(4721,473,''),(4731,474,''),(4741,475,''),(4751,476,''),(4761,477,''),(4771,478,''),(4781,479,''),(4791,480,''),(4801,481,''),(4811,482,''),(4821,483,''),(4831,484,''),(4841,485,''),(4851,486,''),(4861,487,''),(4871,488,''),(4881,489,''),(4891,490,''),(4901,491,''),(4911,492,''),(4921,493,''),(4931,494,''),(4941,495,''),(4951,496,''),(4961,497,''),(4971,498,''),(4981,499,''),(4991,500,''),(5001,501,''),(5011,502,''),(5021,503,''),(5031,504,''),(5041,505,''),(5051,506,''),(5061,507,''),(5071,508,''),(5081,509,''),(5091,510,''),(5101,511,''),(5111,512,''),(5121,513,''),(5131,514,''),(5141,515,''),(5151,516,''),(5161,517,''),(5171,518,''),(5181,519,''),(5191,520,''),(5201,521,''),(5211,522,'');
/*!40000 ALTER TABLE `empdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empno` int(11) DEFAULT NULL,
  `currentdate` date DEFAULT NULL,
  `intime` time DEFAULT NULL,
  `outtime` time DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,4718,'2022-03-17','11:05:07',NULL,'2022-03-17 05:35:07','2022-03-17 05:35:07'),(11,4557,'2022-03-17','11:10:36','11:10:40','2022-03-17 05:40:36','2022-03-17 05:40:40'),(21,2434,'2022-03-17','11:18:42','11:18:45','2022-03-17 05:48:42','2022-03-17 05:48:44'),(31,4913,'2022-03-17','11:18:57','11:19:00','2022-03-17 05:48:57','2022-03-17 05:49:00');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user','2022-03-16 11:41:27','2022-03-16 11:41:27'),(2,'moderator','2022-03-16 11:41:27','2022-03-16 11:41:27'),(3,'admin','2022-03-16 11:41:27','2022-03-16 11:41:27');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('2022-03-16 11:41:30','2022-03-16 11:41:30',3,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'neilsoftadmin','','$2a$08$utsaurFbPtVUdaFCQdUXte1ndM.kLYGmg57fFHuHelgUMSiSExydu','2022-03-16 11:41:27','2022-03-16 11:41:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 11:29:10
