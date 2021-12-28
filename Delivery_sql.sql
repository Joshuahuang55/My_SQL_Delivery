CREATE DATABASE  IF NOT EXISTS `db_z1090188_5` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_z1090188_5`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.56.102    Database: db_z1090188_2
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Coupon_tbl`
--

DROP TABLE IF EXISTS `Coupon_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Coupon_tbl` (
  `Coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Coupon_name` varchar(64) NOT NULL,
  `Promotion_code` varchar(64) NOT NULL,
  `S_date` date NOT NULL,
  `D_date` date NOT NULL,
  PRIMARY KEY (`Coupon_id`),
  UNIQUE KEY `Coupon_id_UNIQUE` (`Coupon_id`),
  UNIQUE KEY `Promotion_code_UNIQUE` (`Promotion_code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Coupon_tbl`
--

LOCK TABLES `Coupon_tbl` WRITE;
/*!40000 ALTER TABLE `Coupon_tbl` DISABLE KEYS */;
INSERT INTO `Coupon_tbl` VALUES (1,'世界睡眠日好康','3JFUMV','2021-03-21','2021-03-21'),(2,'元旦驚喜','V5GMR4','2021-01-01','2021-01-03'),(3,'父親節我罩你','TL9EUP','2021-08-08','2021-08-09'),(4,'破盤大放送','YSL2KF','2021-05-01','2021-07-01'),(5,'你開心我開心','DSHUNZ','2021-05-05','2021-06-30'),(6,'優惠隨便給','MK2X7V','2021-04-01','2021-06-15'),(7,'春假驚喜','DG99ZB','2021-04-02','2021-04-05'),(8,'暑假優惠','HUGQM3','2021-07-01','2021-08-31'),(9,'九月限定驚喜','74G8YW','2021-09-01','2021-09-30'),(10,'十月到好運到','2NE7KR','2021-10-01','2021-10-31'),(11,'光棍快樂','82WQER','2021-11-11','2021-11-11'),(12,'聖誕老人送禮物','3YGQ4T','2021-12-24','2021-12-26'),(13,'兒童節專屬好禮','WMSPL4','2021-04-04','2021-04-05'),(14,'情人節我幫你','LKQPQN','2021-02-13','2021-02-15'),(15,'母親節好禮','2HEKP4','2021-05-08','2021-05-09');
/*!40000 ALTER TABLE `Coupon_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deliveryman_tbl`
--

DROP TABLE IF EXISTS `Deliveryman_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Deliveryman_tbl` (
  `Deliveryman_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Deliveryman_name` varchar(64) NOT NULL,
  `Phone` varchar(64) NOT NULL,
  `Address` varchar(64) NOT NULL,
  PRIMARY KEY (`Deliveryman_id`),
  UNIQUE KEY `Deliveryman_id_UNIQUE` (`Deliveryman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deliveryman_tbl`
--

LOCK TABLES `Deliveryman_tbl` WRITE;
/*!40000 ALTER TABLE `Deliveryman_tbl` DISABLE KEYS */;
INSERT INTO `Deliveryman_tbl` VALUES (1,'Peter','0940455888','320桃園市中壢區中正路100號'),(2,'Spencer','0904965039','320桃園市中壢區中大路342號'),(3,'Adrian','0944740134','320桃園市中壢區五興路12號'),(4,'Jarrod','0993007533','320桃園市中壢區民族路101號'),(5,'Richard','0992461642','320桃園市中壢區中大路520號'),(6,'Walter','0903323629','320桃園市中壢區中大路10號'),(7,'Timothy','0948528169','320桃園市中壢區五興路30號'),(8,'Marty','0967992517','320桃園市中壢區中山路444號'),(9,'Corey','0951000780','320桃園市中壢區中正路42號'),(10,'Ethan','0990914024','320桃園市中壢區中大路820號'),(11,'Austin','0998879355','320桃園市中壢區民族路72號'),(12,'Paige','0979188124','320桃園市中壢區五興路87號'),(13,'Luna','0999501521','320桃園市中壢區中山路301號'),(14,'Bonnie','0976947991','320桃園市中壢區中正路372號'),(15,'Alexis','0977215310','320桃園市中壢區中大路345號');
/*!40000 ALTER TABLE `Deliveryman_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meal_tbl`
--

DROP TABLE IF EXISTS `Meal_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Meal_tbl` (
  `Meal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Restaurant_id` int(10) unsigned NOT NULL,
  `Meals_name` varchar(64) NOT NULL,
  `Price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Meal_id`),
  UNIQUE KEY `Meal_id_UNIQUE` (`Meal_id`),
  KEY `fk_Meal_tbl_Restaurant_tbl1_idx` (`Restaurant_id`),
  CONSTRAINT `fk_Meal_tbl_Restaurant_tbl1` FOREIGN KEY (`Restaurant_id`) REFERENCES `Restaurant_tbl` (`Restaurant_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meal_tbl`
--

LOCK TABLES `Meal_tbl` WRITE;
/*!40000 ALTER TABLE `Meal_tbl` DISABLE KEYS */;
INSERT INTO `Meal_tbl` VALUES (1,9,'拿鐵',80),(2,1,'薯條',55),(3,12,'蛋塔',60),(4,11,'麻油雞',40),(5,1,'雙層牛肉吉士堡',60),(6,4,'泡菜鍋',110),(7,1,'麥脆雞',50),(8,5,'珍珠奶茶',50),(9,6,'麗春紅茶',30),(10,10,'黑森林蛋糕',220),(11,14,'鮪魚壽司',40),(12,7,'滷肉飯',60),(13,8,'雞肉飯',45),(14,13,'鮭魚壽司',40),(15,13,'綜合生魚片',200),(16,2,'燒肉珍珠堡',70),(17,3,'蔬菜鍋',120),(18,2,'紅茶',30),(19,3,'原味鍋',100),(20,4,'牛肉鍋',120),(21,5,'大甲芋頭鮮奶',75),(22,6,'熟成紅茶',35),(23,7,'貢丸湯',40),(24,8,'切仔麵',40),(25,9,'黑咖啡',70),(26,10,'焦糖瑪奇朵',75),(27,11,'滷肉麵線',30),(29,12,'蜂蜜醬脆雞XL餐',185),(30,14,'豆皮壽司',30),(31,15,'火腿蛋餅',35),(32,15,'起司蛋餅',30);
/*!40000 ALTER TABLE `Meal_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `New_User_table`
--

DROP TABLE IF EXISTS `New_User_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `New_User_table` (
  `User_id` int(11) NOT NULL,
  `Account` varchar(64) NOT NULL,
  `Salt` char(64) NOT NULL,
  `Hashedpwd` varchar(200) NOT NULL,
  `Create_date_time` datetime NOT NULL,
  `New_table_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`New_table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `New_User_table`
--

LOCK TABLES `New_User_table` WRITE;
/*!40000 ALTER TABLE `New_User_table` DISABLE KEYS */;
INSERT INTO `New_User_table` VALUES (1,'test001','63652315D22919A8EC76F58F982EC08A6244474F8082B8E75A1271B3C63948E9','12d645aba4188c2ca4467e723aa5f80fbf74dd2d4d1acafdb888a06ea152d400','2021-02-21 10:00:00',1),(2,'test002','AA52032EAB8CC92F7B77CCE828940F95C2369F18DDF1C6B3A80A8A6195D137FB','37511f033628d86b4b916eeac92be7c519c7a2a0b69a9c275b8ac12df51c7170','2021-01-01 12:00:05',2),(3,'test003','3C567E0EA40F26755BB221C96AB02CC726DE673E85016EC1D949D14E5B16B223','b42173ac3c0c84579930b00fb5840673909e7cbb52835dd0eda3867ec78b0c1a','2021-12-11 23:20:00',3),(4,'test004','95B79B147E492681F98C749E3AC329C1A975D3F4000FF25D0643D8D55A4E4E2B','90dd9f1505cc9b5e7afe85fff9e8c0e1479982f47ded59713a351e56b04d8ebe','2021-07-14 14:40:20',4),(5,'test005','EB7F11AE33003238D3FF14094E3BC569F077B8F39DF472423FD339CE22B5F050','9fd17045e745b326a17b46bc898d1e31584b3fe151bfca775d05b955f66a4020','2021-10-11 12:20:07',5),(6,'test006','5F79D14FB8A43CA9350E781EA1067B14B197D36671182C4C15E9EDBD921791DD','9b0ad459fd6229d16b62486fa4aadb93279b3a5078ec560dafb2ff2dacdd3ca2','2021-12-05 02:00:00',6),(7,'test007','9C681B6D73E80D3C1F10E06BDEB48914ABE207ADA83405DC14485B6AD060C021','385caacde6430ee92f88112fde9c7ab56057a489190cee002fb55d3f5e3958f4','2020-07-07 12:45:37',7),(8,'test008','6C40F0CC5D46DCE7D1A0E1D118E0750A7874087FC7199DDA34D171131002DCA9','ac30c90356c59a3ad72d6fab45ddc2d5f81c5cdd194b7a66e938ca72c4cef85b','2020-08-08 22:45:30',8),(9,'test009','039FB5567A6B559BE9999BF854BEF1699A14CB912AF431CCF90D9941900D8788','ca3a5ef52e43abcb268591f9208f205cbc1a8d4c8009a9476a593d7fdfd546d3','2020-01-21 11:15:31',9),(10,'test010','ABC1523C0333408EFF2B8CCF4248A0B2175723EBC65C8D05940B9D434B7A39A2','1ac24680a1f8570fdf6979860e7b02bbb424d970b9b1d6500090a179653b7b95','2020-03-26 08:10:12',10),(11,'test011','015E6E1B59C1095D5484D37EADAD30A1BA1B23E96125ECD3A4FAA7E97B57AE6A','6e29fad15e907474280d063c1f19f1c4a1309296ad05485cccc6f0a462fc254c','2019-04-16 07:40:42',11),(12,'test012','FC683C2A54777A59A747A304E48AF48F1CC3B5028690001D5E6FF51CF4F3CABB','42ced92cee6c90bd603d316ef11f9b4af4e3037821019996978b6df8e4ad4788','2019-10-26 05:05:05',12),(13,'test013','B6A36D21C9A08C26DE91B3D8C9A55B29F196AEF84FF5EA6598D66DBCB37A7F9E','215888d61256561f9bf24bdf9eab1e92166ba1e05442c3b4b0b2790dc25a9834','2019-09-21 08:41:12',13),(14,'test014','BCF3A35C006CEDC0C1B9FE21E8F22528A8D09CB36A4F19B1B6A9B4713D8D22B','f7b3e132fbbbcfc87d2cb65e0552af74d7c7df55ed828e5c700a60491dbc27e4','2019-09-23 12:20:02',14),(15,'test015','D2E8F9D3BC6FDDA90B838DB2A33C749F20DD43CE899752B7FA194F01C637D90E','6ca89a4472c0a426e37dfef1bc25aed829c4dac0f38c74b09a0fa47a233d60dd','2019-04-10 03:25:06',15),(16,'Josh01','7EBF1D366D31B62F596A7EC94D9B86721B28FA67C7B8E5B01BF9CD0AD0F03B1D','83d4972f1d9fa8c9b8b3e2025ba4971bfca3a4c2ba29952d9ca4dbc9e22a3a0d','2021-06-05 18:17:50',16),(17,'Josh02','85119FC8C5212F6990465AC9F2C62588312DB60473654F8473B00E89CCB622A2','43f85c988d1d815bb438ead5d9740a77811a801ce8f3012e439fb5725dcc8d1f','2021-06-06 17:08:04',17),(18,'Josh03','26CFA9D062FEC51BB47C40B95D31B759764510F549D525A1E45B30DB7C05A513','cfe4f77422d7afc745f3e8800e241cff2febfc8b947350346392dd4fb17d10a5','2021-06-06 17:49:41',18),(19,'Josh04','796EAED4258DDD50991E519DA91CBE3CD70ADAE3A2C723BA205CD869F56699A7','f74ddd9108566a6e98a8b239e8ee52696838ffe80066298a7d78d62cf5ee4cee','2021-06-08 16:41:00',19),(1,'test001','90A218610F90C741DD5745A864B0102F8211A982B48B78924025F1641C465101','10c8b2108b9e4b93225c41537bd111a642c91e2b4d3d5997788eb948be9e0494','2021-06-08 16:58:25',20),(20,'Josh05','141C333BCE5E8F5D37565B760B0C3F2BB24B1A6B0824FC329776E4C8C5F689B3','5e9b0d59199318d8eb49f6e755bdd49fdbaf62a340add77138c1b8e6a113dd34','2021-06-08 17:07:21',22),(21,'Josh06','434FA91C936B404385F969FCAFF40D5550D5166E3F761438EA562DC49B2DAAC3','4dcb1dc98fc510e9ca4a131df44098c8cd5fed289ee851d51ef5a65942d1e7ef','2021-06-08 17:14:19',23),(21,'Josh06','E2A79283ECE35E90FEAEE15CE74462DEE4C9D24927E7D0807C3EBA99692DA6C4','9310284719175a4f468dd3475501b5258ad7b976a86d905a133471a1475bf2d6','2021-06-08 17:15:17',24),(22,'Josh07','1D7D3C53F627CC456CDDDF9424F2E218C4FB555F78107609FC080640B29DE06C','b87794e21f1189894826e4d5d5692a57e54b801bf8102aa1d36ff67acf8b5e06','2021-06-12 10:12:35',25),(23,'Josh08','227EB3C43C3C774FBD5D68CE91D526733F0AAB5872D95C334AA035D6115645D9','c4659ac62cfbd01fc73fbcb2bf895d7b21b5050d6eeefbe5ded64199901e5cd2','2021-06-12 10:32:17',26),(3,'test003','680BAA290B82447653D465CAB0CE8235D8DBAE1F7996D912D173C504D9390CDB','dfcd7f62a9e23f8db158c80fa9832a895b3a31c0ab2d466812d0e71cd883f6cb','2021-06-12 11:39:29',27);
/*!40000 ALTER TABLE `New_User_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_detail_tbl`
--

DROP TABLE IF EXISTS `Order_detail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Order_detail_tbl` (
  `Order_id` int(10) unsigned NOT NULL,
  `Meal_id` int(10) unsigned NOT NULL,
  `Unit_price` int(10) unsigned NOT NULL,
  `Count` int(11) NOT NULL,
  `Detail_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Detail_ID`),
  UNIQUE KEY `Detail_ID_UNIQUE` (`Detail_ID`),
  KEY `fk_Order_detail_tbl_Order_tbl1_idx` (`Order_id`),
  KEY `fk_Order_detail_tbl_Meal_tbl1_idx` (`Meal_id`),
  CONSTRAINT `fk_Order_detail_tbl_Meal_tbl1` FOREIGN KEY (`Meal_id`) REFERENCES `Meal_tbl` (`Meal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_detail_tbl_Order_tbl1` FOREIGN KEY (`Order_id`) REFERENCES `Order_tbl` (`Order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_detail_tbl`
--

LOCK TABLES `Order_detail_tbl` WRITE;
/*!40000 ALTER TABLE `Order_detail_tbl` DISABLE KEYS */;
INSERT INTO `Order_detail_tbl` VALUES (1,5,60,1,1),(1,7,50,1,2),(2,10,220,2,3),(2,26,75,1,4),(3,17,120,1,5),(3,19,100,1,6),(4,13,45,1,7),(4,24,40,1,8),(5,2,55,1,9),(5,7,50,1,10),(6,10,220,1,11),(6,26,75,1,12),(7,16,70,1,13),(7,18,30,1,14),(8,17,120,1,15),(8,19,100,2,16),(9,1,80,1,17),(9,25,70,1,18),(10,5,60,2,19),(10,7,50,1,20),(11,2,55,1,21),(11,5,60,2,22),(12,17,120,1,23),(12,19,100,1,24),(13,10,220,1,27),(13,26,75,2,28),(13,10,220,2,29),(13,26,75,2,30),(14,10,220,1,31),(14,26,75,1,32),(15,12,60,3,33),(15,23,40,2,34),(17,14,40,1,37),(17,15,200,2,38);
/*!40000 ALTER TABLE `Order_detail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_tbl`
--

DROP TABLE IF EXISTS `Order_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Order_tbl` (
  `Order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `User_id` int(10) unsigned NOT NULL,
  `Deliveryman_id` int(10) unsigned NOT NULL,
  `Coupon_id` int(10) unsigned DEFAULT NULL,
  `Order_status` int(11) NOT NULL,
  `Restaurant_rating` int(11) DEFAULT NULL,
  `Deliverary_rating` int(11) DEFAULT NULL,
  `Delivery_fee` int(10) unsigned NOT NULL,
  `Total_price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Order_id`),
  UNIQUE KEY `Order_id_UNIQUE` (`Order_id`),
  KEY `fk_Order_tbl_User_tbl1_idx` (`User_id`),
  KEY `fk_Order_tbl_Deliveryman_tbl1_idx` (`Deliveryman_id`),
  KEY `fk_Order_tbl_Coupon_tbl1_idx` (`Coupon_id`),
  CONSTRAINT `fk_Order_tbl_Coupon_tbl1` FOREIGN KEY (`Coupon_id`) REFERENCES `Coupon_tbl` (`Coupon_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_tbl_Deliveryman_tbl1` FOREIGN KEY (`Deliveryman_id`) REFERENCES `Deliveryman_tbl` (`Deliveryman_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_tbl_User_tbl1` FOREIGN KEY (`User_id`) REFERENCES `User_tbl` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_tbl`
--

LOCK TABLES `Order_tbl` WRITE;
/*!40000 ALTER TABLE `Order_tbl` DISABLE KEYS */;
INSERT INTO `Order_tbl` VALUES (1,2,1,NULL,3,NULL,NULL,20,130),(2,2,2,8,2,4,5,30,515),(3,3,11,7,2,NULL,NULL,30,220),(4,3,6,8,1,4,3,30,85),(5,5,14,11,4,NULL,NULL,15,90),(6,5,8,15,2,NULL,NULL,30,295),(7,4,4,NULL,3,5,4,30,130),(8,6,3,NULL,2,2,2,30,350),(9,6,5,1,4,3,2,15,135),(10,2,6,NULL,2,1,3,20,190),(11,5,1,NULL,1,NULL,NULL,20,195),(12,6,3,NULL,1,NULL,NULL,30,250),(13,7,4,6,1,NULL,NULL,30,370),(14,7,4,5,1,NULL,NULL,30,295),(15,10,2,5,1,NULL,NULL,20,250),(17,8,4,5,1,NULL,NULL,30,440);
/*!40000 ALTER TABLE `Order_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Restaurant_tbl`
--

DROP TABLE IF EXISTS `Restaurant_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Restaurant_tbl` (
  `Restaurant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `Phone` varchar(64) NOT NULL,
  `Address` varchar(64) NOT NULL,
  `Loc_x` int(10) unsigned NOT NULL,
  `Loc_y` int(10) unsigned NOT NULL,
  `Business` tinyint(1) NOT NULL,
  `Opening_time` time NOT NULL,
  `Closing_time` time NOT NULL,
  PRIMARY KEY (`Restaurant_id`),
  UNIQUE KEY `Restaurant_id_UNIQUE` (`Restaurant_id`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Restaurant_tbl`
--

LOCK TABLES `Restaurant_tbl` WRITE;
/*!40000 ALTER TABLE `Restaurant_tbl` DISABLE KEYS */;
INSERT INTO `Restaurant_tbl` VALUES (1,'麥當勞','0976578007','320桃園市中壢區中大路99號',2,21,1,'08:00:00','20:00:00'),(2,'摩斯漢堡','0947946958','320桃園市中壢區中正一路252號',87,5,1,'09:30:00','18:00:00'),(3,'伍味鍋','0997935827','320桃園市中壢區五興路121號',49,71,1,'07:00:00','22:00:00'),(4,'三媽臭臭鍋','0999369804','320桃園市中壢區民族路1041號',14,80,0,'10:00:00','23:00:00'),(5,'迷克夏','0977073228','320桃園市中壢區中大路50號',80,42,1,'11:00:00','16:00:00'),(6,'可不可熟成紅茶','0946602587','320桃園市中壢區中大路101號',21,99,0,'10:30:00','21:30:00'),(7,'鬍鬚張','0993381433','320桃園市中壢區中正一路380號',31,7,1,'10:00:00','20:00:00'),(8,'九大雞魯飯','0996380445','320桃園市中壢區中正二路448號',78,79,1,'06:00:00','22:00:00'),(9,'怡客咖啡','0945234928','320桃園市中壢區中正路42號',51,85,1,'11:00:00','21:30:00'),(10,'路易莎咖啡','0950621549','320桃園市中壢區中大路840號',12,38,1,'10:30:00','23:00:00'),(11,'二師父麻油雞','0950005890','320桃園市中壢區民族路721號',24,19,0,'08:00:00','22:00:00'),(12,'肯德基','0905179052','320桃園市中壢區五興路877號',4,24,0,'09:30:00','21:30:00'),(13,'爭鮮迴轉壽司','0907159968','320桃園市中壢區中正一路301號',63,17,1,'11:00:00','23:00:00'),(14,'壽司郎','0999233765','320桃園市中壢區中正路72號',83,39,1,'11:00:00','21:30:00'),(15,'弘爺早餐店','0900651160','320桃園市中壢區中正二路345號',16,27,1,'06:00:00','09:00:00');
/*!40000 ALTER TABLE `Restaurant_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Used_coupon_tbl`
--

DROP TABLE IF EXISTS `Used_coupon_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Used_coupon_tbl` (
  `Coupon_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  `User_coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`User_coupon_id`),
  KEY `fk_Used_coupon_tbl_Coupon_tbl1_idx` (`User_coupon_id`),
  CONSTRAINT `fk_Used_coupon_tbl_Coupon_tbl1` FOREIGN KEY (`User_coupon_id`) REFERENCES `db_z1090188`.`Coupon_tbl` (`Coupon_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Used_coupon_tbl`
--

LOCK TABLES `Used_coupon_tbl` WRITE;
/*!40000 ALTER TABLE `Used_coupon_tbl` DISABLE KEYS */;
INSERT INTO `Used_coupon_tbl` VALUES (8,2,2,1),(7,3,3,2),(8,3,4,3),(11,5,5,4),(15,5,6,5),(1,6,9,6),(6,7,13,7),(5,7,14,8),(5,7,14,9),(5,10,15,10),(5,10,15,11),(5,8,17,13);
/*!40000 ALTER TABLE `Used_coupon_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_credential_tbl`
--

DROP TABLE IF EXISTS `User_credential_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `User_credential_tbl` (
  `User_credential_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `User_id` int(10) unsigned NOT NULL,
  `Hashedpwd` varchar(200) NOT NULL,
  `Create_date_time` datetime NOT NULL,
  PRIMARY KEY (`User_credential_id`),
  UNIQUE KEY `User_credential_id_UNIQUE` (`User_credential_id`),
  KEY `fk_User_credential_tbl_User_tbl1_idx` (`User_id`),
  CONSTRAINT `fk_User_credential_tbl_User_tbl1` FOREIGN KEY (`User_id`) REFERENCES `User_tbl` (`User_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_credential_tbl`
--

LOCK TABLES `User_credential_tbl` WRITE;
/*!40000 ALTER TABLE `User_credential_tbl` DISABLE KEYS */;
INSERT INTO `User_credential_tbl` VALUES (1,1,'12d645aba4188c2ca4467e723aa5f80fbf74dd2d4d1acafdb888a06ea152d400','2021-02-21 10:00:00'),(2,2,'37511f033628d86b4b916eeac92be7c519c7a2a0b69a9c275b8ac12df51c7170','2021-01-01 12:00:05'),(3,3,'b42173ac3c0c84579930b00fb5840673909e7cbb52835dd0eda3867ec78b0c1a','2021-02-11 23:20:00'),(4,4,'90dd9f1505cc9b5e7afe85fff9e8c0e1479982f47ded59713a351e56b04d8ebe','2021-07-14 14:40:20'),(5,5,'9fd17045e745b326a17b46bc898d1e31584b3fe151bfca775d05b955f66a4020','2021-10-11 12:20:07'),(6,6,'9b0ad459fd6229d16b62486fa4aadb93279b3a5078ec560dafb2ff2dacdd3ca2','2021-12-05 02:00:00'),(7,7,'385caacde6430ee92f88112fde9c7ab56057a489190cee002fb55d3f5e3958f4','2020-07-07 12:45:37'),(8,8,'ac30c90356c59a3ad72d6fab45ddc2d5f81c5cdd194b7a66e938ca72c4cef85b','2020-08-08 22:45:30'),(9,9,'ca3a5ef52e43abcb268591f9208f205cbc1a8d4c8009a9476a593d7fdfd546d3','2020-01-21 11:15:31'),(10,10,'1ac24680a1f8570fdf6979860e7b02bbb424d970b9b1d6500090a179653b7b95','2020-03-26 08:10:12'),(11,11,'6e29fad15e907474280d063c1f19f1c4a1309296ad05485cccc6f0a462fc254c','2019-04-16 07:40:42'),(12,12,'42ced92cee6c90bd603d316ef11f9b4af4e3037821019996978b6df8e4ad4788','2019-10-26 05:05:05'),(13,13,'215888d61256561f9bf24bdf9eab1e92166ba1e05442c3b4b0b2790dc25a9834','2019-09-21 08:41:12'),(14,14,'f7b3e132fbbbcfc87d2cb65e0552af74d7c7df55ed828e5c700a60491dbc27e4','2019-09-23 12:20:02'),(15,15,'6ca89a4472c0a426e37dfef1bc25aed829c4dac0f38c74b09a0fa47a233d60dd','2019-04-10 03:25:06'),(16,16,'83d4972f1d9fa8c9b8b3e2025ba4971bfca3a4c2ba29952d9ca4dbc9e22a3a0d','2021-06-05 18:17:50'),(17,17,'43f85c988d1d815bb438ead5d9740a77811a801ce8f3012e439fb5725dcc8d1f','2021-06-06 17:08:04'),(18,18,'cfe4f77422d7afc745f3e8800e241cff2febfc8b947350346392dd4fb17d10a5','2021-06-06 17:49:41'),(19,19,'f74ddd9108566a6e98a8b239e8ee52696838ffe80066298a7d78d62cf5ee4cee','2021-06-08 16:41:00'),(20,20,'5e9b0d59199318d8eb49f6e755bdd49fdbaf62a340add77138c1b8e6a113dd34','2021-06-08 17:07:21'),(21,21,'faa0845fe8a6610203d77c2cdb25f4d580f809ac4b50804fe83884769739f7b2','2021-06-08 17:19:21'),(22,22,'cb1e121b7ff2f202e8a32ae23748f9fbb1009b5e3fa2210c42f38ad201368f64','2021-06-12 10:15:22'),(23,23,'c4659ac62cfbd01fc73fbcb2bf895d7b21b5050d6eeefbe5ded64199901e5cd2','2021-06-12 10:32:17');
/*!40000 ALTER TABLE `User_credential_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_tbl`
--

DROP TABLE IF EXISTS `User_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `User_tbl` (
  `User_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Account` varchar(64) NOT NULL,
  `Salt` char(64) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Address` varchar(64) NOT NULL,
  `Phone` varchar(64) NOT NULL,
  `Loc_x` int(10) unsigned NOT NULL,
  `Loc_y` int(10) unsigned NOT NULL,
  `Create_date_time` datetime NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `User_id_UNIQUE` (`User_id`),
  UNIQUE KEY `Account_UNIQUE` (`Account`),
  UNIQUE KEY `Phone_UNIQUE` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_tbl`
--

LOCK TABLES `User_tbl` WRITE;
/*!40000 ALTER TABLE `User_tbl` DISABLE KEYS */;
INSERT INTO `User_tbl` VALUES (1,'test001','63652315D22919A8EC76F58F982EC08A6244474F8082B8E75A1271B3C63948E9','Jacob Walker','320桃園市中壢區民權路170號','0937882465',94,95,'2021-02-21 10:00:00'),(2,'test002','AA52032EAB8CC92F7B77CCE828940F95C2369F18DDF1C6B3A80A8A6195D137FB','Rick Caulfield','320桃園市中壢區民生北路112號','0945804302',8,20,'2021-01-01 12:00:05'),(3,'test003','3C567E0EA40F26755BB221C96AB02CC726DE673E85016EC1D949D14E5B16B223','Bryce Landrum','320桃園市中壢區五興路121號','0902923003',65,69,'2021-02-11 23:20:00'),(4,'test004','95B79B147E492681F98C749E3AC329C1A975D3F4000FF25D0643D8D55A4E4E2B','Alex Barlow','320桃園市中壢區民生北路185號','0942930878',100,6,'2021-07-14 14:40:20'),(5,'test005','EB7F11AE33003238D3FF14094E3BC569F077B8F39DF472423FD339CE22B5F050','Alvin Anderson','320桃園市中壢區民權路520號','0909563906',7,22,'2021-10-11 12:20:07'),(6,'test006','5F79D14FB8A43CA9350E781EA1067B14B197D36671182C4C15E9EDBD921791DD','Willy Bieber','320桃園市中壢區中大路107號','0901033637',49,87,'2021-12-05 02:00:00'),(7,'test007','9C681B6D73E80D3C1F10E06BDEB48914ABE207ADA83405DC14485B6AD060C021','Johannes Harris','320桃園市中壢區民權路30號','0984466058',2,24,'2020-07-07 12:45:37'),(8,'test008','6C40F0CC5D46DCE7D1A0E1D118E0750A7874087FC7199DDA34D171131002DCA9','Phil Taft','320桃園市中壢區中山路474號','0973214446',55,1,'2020-08-08 22:45:30'),(9,'test009','039FB5567A6B559BE9999BF854BEF1699A14CB912AF431CCF90D9941900D8788','Reggie Scott','320桃園市中壢區民生北路42號','0900697437',33,74,'2020-01-21 11:15:31'),(10,'test010','ABC1523C0333408EFF2B8CCF4248A0B2175723EBC65C8D05940B9D434B7A39A2','Aidan Hall','320桃園市中壢區中大路820號','0907146500',37,14,'2020-03-26 08:10:12'),(11,'test011','015E6E1B59C1095D5484D37EADAD30A1BA1B23E96125ECD3A4FAA7E97B57AE6A','Annie Abbadie','320桃園市中壢區民權路72號','0977679834',91,47,'2019-04-16 07:40:42'),(12,'test012','FC683C2A54777A59A747A304E48AF48F1CC3B5028690001D5E6FF51CF4F3CABB','Nerissa Brown','320桃園市中壢區五興路847號','0973337533',18,82,'2019-10-26 05:05:05'),(13,'test013','B6A36D21C9A08C26DE91B3D8C9A55B29F196AEF84FF5EA6598D66DBCB37A7F9E','Anna Stenson','320桃園市中壢區民生南路31號','0904713945',64,66,'2019-09-21 08:41:12'),(14,'test014','BCF3A35C006CEDC0C1B9FE21E8F22528A8D09CB36A4F19B1B6A9B4713D8D22B','Sigrid Merrick','320桃園市中壢區中正路322號','0998049104',19,91,'2019-09-23 12:20:02'),(15,'test015','D2E8F9D3BC6FDDA90B838DB2A33C749F20DD43CE899752B7FA194F01C637D90E','Alexis Bagshawe','320桃園市中壢區中大路365號','0983234004',70,75,'2019-04-10 03:25:06'),(16,'Josh01','7EBF1D366D31B62F596A7EC94D9B86721B28FA67C7B8E5B01BF9CD0AD0F03B1D','Josh Huang','320桃園市中壢區中正路68號','0908771265',80,40,'2021-06-05 18:17:50'),(17,'Josh02','85119FC8C5212F6990465AC9F2C62588312DB60473654F8473B00E89CCB622A2','Jean','320桃園市中壢區中正二路360號','0977889110',19,30,'2021-06-06 17:08:04'),(18,'Josh03','26CFA9D062FEC51BB47C40B95D31B759764510F549D525A1E45B30DB7C05A513','King','320桃園市中壢區中正路77號','0928996734',80,45,'2021-06-06 17:49:41'),(19,'Josh04','796EAED4258DDD50991E519DA91CBE3CD70ADAE3A2C723BA205CD869F56699A7','Moo','320桃園市中壢區五興路888號','0988077655',90,100,'2021-06-08 16:41:00'),(20,'Josh05','141C333BCE5E8F5D37565B760B0C3F2BB24B1A6B0824FC329776E4C8C5F689B3','Sam','320桃園市中壢區中正一路399號','0967889110',60,50,'2021-06-08 17:07:21'),(21,'Josh06','E953C4CBC3C8283E48D8D4759B2AF75A10ADB1E0CE6ABFF086643E96B61142C3','Amy','320桃園市中壢區中正一路100號','0911445897',40,15,'2021-06-08 17:19:21'),(22,'Josh07','75A7F251AA27F2CB6C5B3976037D3BB83EB710F392BBF5D284DA0CD5242B2395','lynn','320桃園市中壢區五興路100號','0954611234',33,44,'2021-06-12 10:12:33'),(23,'Josh08','227EB3C43C3C774FBD5D68CE91D526733F0AAB5872D95C334AA035D6115645D9','Lin','320桃園市中壢區中正二路490號','0979886522',90,33,'2021-06-12 10:32:17');
/*!40000 ALTER TABLE `User_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_z1090188_2'
--

--
-- Dumping routines for database 'db_z1090188_2'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_CancelOrder`(

IN inorder_id int,
OUT  out_affected_row_num int

)
BEGIN


DELETE FROM Order_detail_tbl WHERE Order_id = inorder_id;
SET @affect_1 = ROW_COUNT() ;

DELETE FROM Order_tbl WHERE Order_id = inorder_id;
SET @affect_2 = ROW_COUNT() ;

SET out_affected_row_num = (@affect_1 +  @affect_2 );

DELETE FROM Used_coupon_tbl WHERE Order_id = inorder_id;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_CreateNewOrder`(
IN 
in_user_id int,
in_deliveryman_id int,
in_restaurant_id int,
in_meals_1 int,
in_meals_1_count int,
in_meals_2 int,
in_meals_2_count int,

OUT out_affected_row_num int
)
BEGIN
SET sql_mode = 'NO_UNSIGNED_SUBTRACTION';

INSERT INTO
Order_tbl(User_id , Deliveryman_id , Order_status , Delivery_fee ,Total_price)
SELECT DISTINCT
User_tbl.User_id , Deliveryman_tbl.Deliveryman_id,  Order_tbl.Order_status,
test.Delivery_fee ,
(Meal_tbl.Price*in_meals_1_count + Price_temp.Price_1 + test.Delivery_fee) 
as total_price 
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN   20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  
User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test , 
(SELECT (Price * in_meals_2_count) as Price_1 FROM Meal_tbl ,
(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  
User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id ) restaurant_function

WHERE Meal_tbl.Meal_id = in_meals_2
AND Meal_tbl.Restaurant_id = restaurant_function.Restaurant_id
)
Price_temp,
Restaurant_tbl , Meal_tbl , User_tbl  , Deliveryman_tbl , Order_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND User_tbl.User_id = in_user_id
AND Meal_tbl.Restaurant_id = test.Restaurant_id
AND Deliveryman_tbl.Deliveryman_id = in_deliveryman_id
AND Order_tbl.Order_status = 1
AND Meal_tbl.Meal_id = in_meals_1
AND TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time;

SET @affect_1 = ROW_COUNT() ;

-- ==============================================================================

INSERT INTO
Order_detail_tbl(Order_id , Meal_id , Unit_price , Count)
SELECT DISTINCT
Order_tbl.Order_id,
Meal_tbl.Meal_id , Meal_tbl.price , in_meals_1_count
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN  20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test ,  Meal_tbl , Order_tbl , Restaurant_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND Meal_tbl.Meal_id = in_meals_1
AND test.Restaurant_id = Meal_tbl.Restaurant_id
AND Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time;

SET @affect_2 = ROW_COUNT() ;

-- ========================================================================

INSERT INTO
Order_detail_tbl(Order_id , Meal_id , Unit_price , Count)
SELECT DISTINCT
Order_tbl.Order_id,
Meal_tbl.Meal_id , Meal_tbl.price , in_meals_2_count
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN   20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test ,  Meal_tbl , Order_tbl , Restaurant_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND Meal_tbl.Meal_id = in_meals_2
AND test.Restaurant_id = Meal_tbl.Restaurant_id
AND Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time;

SET @affect_3 = ROW_COUNT() ;
-- =========================================================================

SELECT DISTINCT
Order_tbl.User_id , Order_tbl.Order_id , 
Meal_tbl.Restaurant_id , Meal_tbl.Meal_id,
Price_count.Unit_price , Price_count.Count
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN   20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test , 
(SELECT DISTINCT Unit_price , Count  FROM Order_detail_tbl , Order_tbl
WHERE  Order_detail_tbl.Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1))
Price_count,
Meal_tbl , Order_tbl , Restaurant_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND test.Restaurant_id = Meal_tbl.Restaurant_id
AND (Meal_id = in_meals_1 AND Price_count.Unit_price = 
(SELECT Price FROM Meal_tbl WHERE Meal_id = in_meals_1) 
OR   Meal_id = in_meals_2 AND Price_count.Unit_price = 
(SELECT Price FROM Meal_tbl WHERE Meal_id = in_meals_2))

AND Order_tbl.Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time;

SET out_affected_row_num = (@affect_1 +  @affect_2 + @affect_3);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewOrderWithCoupon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `sp_CreateNewOrderWithCoupon`(
IN 
in_user_id int,
in_deliveryman_id int,
in_restaurant_id int,
in_meals_1 int,
in_meals_1_count int,
in_meals_2 int,
in_meals_2_count int,
in_coupon_id int,

OUT out_affected_row_num int

)
BEGIN
SET sql_mode = 'NO_UNSIGNED_SUBTRACTION';

INSERT INTO
Order_tbl(User_id , Deliveryman_id , Coupon_id,
Order_status , Delivery_fee ,Total_price)
SELECT DISTINCT
User_tbl.User_id , Deliveryman_tbl.Deliveryman_id, 
used_coupon.Coupon_id ,
Order_tbl.Order_status, test.Delivery_fee ,
(Meal_tbl.Price*in_meals_1_count + Price_temp.Price_1 + test.Delivery_fee - 30) 
as total_price 

FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN  20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  
User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id
AND R.business = 1
) restaurant_function )
test , 
(SELECT (Price *  in_meals_2_count) as Price_1 FROM Meal_tbl ,
(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  
User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id ) restaurant_function
WHERE Meal_tbl.Meal_id = in_meals_2
AND Meal_tbl.Restaurant_id = restaurant_function.Restaurant_id
)
Price_temp, 
(select Coupon_id from Coupon_tbl WHERE Coupon_id = in_coupon_id
AND NOT EXISTS
(select Coupon_id from Order_tbl WHERE User_id = in_user_id
AND Coupon_id = in_coupon_id) ) used_coupon,
Coupon_tbl,
Restaurant_tbl , Meal_tbl , User_tbl  , Deliveryman_tbl , Order_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND User_tbl.User_id = in_user_id
AND Meal_tbl.Restaurant_id = test.Restaurant_id
AND Deliveryman_tbl.Deliveryman_id = in_deliveryman_id
AND Order_tbl.Order_status = 1
AND Meal_tbl.Meal_id = in_meals_1
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time
AND  Coupon_tbl.Coupon_id = in_coupon_id
AND  DATE(NOW()) >= Coupon_tbl.S_date
AND  DATE(NOW()) <= Coupon_tbl.D_date
AND used_coupon.Coupon_id is NOT NULL ;

SET @affect_1 = ROW_COUNT() ;

-- ============================================================================

INSERT INTO
Order_detail_tbl(Order_id , Meal_id , Unit_price , Count)
SELECT DISTINCT
Order_tbl.Order_id,
Meal_tbl.Meal_id , Meal_tbl.price , in_meals_1_count
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN   20
    WHEN (distance > 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test , 
(select Coupon_id from Coupon_tbl WHERE Coupon_id = in_coupon_id
AND NOT EXISTS
(select U.Coupon_id from Used_coupon_tbl as U WHERE U.User_id = in_user_id
AND U.Coupon_id = in_coupon_id) ) used_coupon,
Meal_tbl , Order_tbl , Restaurant_tbl , Coupon_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND Meal_tbl.Meal_id = in_meals_1
AND test.Restaurant_id = Meal_tbl.Restaurant_id
AND Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time
AND  Coupon_tbl.Coupon_id = in_coupon_id
AND  DATE(NOW()) >= Coupon_tbl.S_date
AND  DATE(NOW()) <= Coupon_tbl.D_date
AND used_coupon.Coupon_id is NOT NULL
;

SET @affect_2 = ROW_COUNT() ;

-- ========================================================================

INSERT INTO
Order_detail_tbl(Order_id , Meal_id , Unit_price , Count)
SELECT DISTINCT
Order_tbl.Order_id,
Meal_tbl.Meal_id , Meal_tbl.price , in_meals_2_count
FROM(
SELECT restaurant_id  ,  restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN   20
    WHEN (distance > 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = in_user_id 
AND R.business = 1
) restaurant_function )
test , 
(select Coupon_id from Coupon_tbl WHERE Coupon_id = in_coupon_id
AND NOT EXISTS
(select U.Coupon_id from Used_coupon_tbl as U WHERE U.User_id = in_user_id
AND U.Coupon_id = in_coupon_id) ) used_coupon,
Meal_tbl , Order_tbl , Restaurant_tbl , Coupon_tbl
WHERE test.Restaurant_id = in_restaurant_id
AND Meal_tbl.Meal_id = in_meals_2
AND test.Restaurant_id = Meal_tbl.Restaurant_id
AND Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  TIME(NOW()) >= Restaurant_tbl.Opening_time  
AND  TIME(NOW()) <= Restaurant_tbl.Closing_time
AND  Coupon_tbl.Coupon_id = in_coupon_id
AND  DATE(NOW()) >= Coupon_tbl.S_date
AND  DATE(NOW()) <= Coupon_tbl.D_date
AND used_coupon.Coupon_id is NOT NULL
;

SET @affect_3 = ROW_COUNT() ;

-- =========================================================================

SELECT DISTINCT
Order_tbl.Order_id , Order_tbl.User_id , Order_tbl.Deliveryman_id,
Order_tbl.Coupon_id , Order_tbl.Order_status, Order_tbl.Total_price
FROM 
Order_tbl ,
(select Coupon_id from Coupon_tbl WHERE Coupon_id = in_coupon_id
AND NOT EXISTS
(select U.Coupon_id from Used_coupon_tbl as U WHERE U.User_id = in_user_id
AND U.Coupon_id = in_coupon_id) ) used_coupon
WHERE Order_tbl.Order_id = (SELECT Order_id FROM Order_tbl ORDER BY Order_id DESC LIMIT 1)
AND  Order_tbl.User_id = in_user_id
AND  Order_tbl.Coupon_id = in_coupon_id
AND Order_tbl.Order_status = 1
AND Order_tbl.Deliveryman_id = in_deliveryman_id
AND used_coupon.Coupon_id is NOT NULL
;

SET out_affected_row_num = (@affect_1 +  @affect_2 + @affect_3);

INSERT INTO
Used_coupon_tbl(Coupon_id , User_id , Order_id)
SELECT in_coupon_id,in_user_id , (SELECT max(Order_id) FROM Order_tbl);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_GetRestaurant`(
IN inUserID INT,
OUT outrowfound INT
)
BEGIN
SET sql_mode = 'NO_UNSIGNED_SUBTRACTION';

SELECT DISTINCT 
restaurant_function.restaurant_id  ,  restaurant_function.restaurant_name,
	CASE
	WHEN (distance <= 20 and distance > 10) THEN  30
    WHEN (distance <= 10 and distance > 5 ) THEN  20
    WHEN (distance <= 5) THEN  10
    END AS Delivery_fee 
FROM(
SELECT Restaurant_id  as restaurant_id  , R.Name as restaurant_name,  User_id ,sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) as distance 
FROM Restaurant_tbl as R ,  User_tbl as U
WHERE sqrt(POWER((R.Loc_x - U.Loc_x),2) + POWER((R.Loc_y - U.Loc_y),2)) <= 20
AND User_id = inUserID 
AND R.business = 1
) restaurant_function
;

SELECT found_rows() INTO outrowfound;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_HistoryOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_HistoryOrder`(
IN inuser_id int,
OUT out_affected_row_num int
)
BEGIN

SELECT User_id , Order_id , Deliveryman_id , Order_status, Total_price
FROM Order_tbl
WHERE User_id = inuser_id;

SELECT  found_rows() INTO  out_affected_row_num ; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_InsertNewPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_InsertNewPassword`(
IN in_user_id int,
   in_salt char(64),
   in_hashedPwd varchar(200),
   
OUT  out_affected_row_num int

)
BEGIN
INSERT INTO 
New_User_table(User_id , Account ,Salt , Hashedpwd ,
			   Create_date_time)
SELECT  DISTINCT 
U.User_id ,  U.Account , in_salt , 
in_hashedPwd , NOW()
FROM User_tbl as U, User_credential_tbl as C , 
(SELECT Hashedpwd FROM New_User_table WHERE User_id = in_user_id )
other_pwd
WHERE U.User_id = in_user_id
AND   C.Hashedpwd = 
(SELECT Hashedpwd FROM User_credential_tbl WHERE User_id = in_user_id)
AND other_pwd.Hashedpwd != in_hashedPwd
AND C.Hashedpwd != in_hashedPwd
;

SELECT ROW_COUNT() INTO out_affected_row_num ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_Login`(
IN 
   inaccount varchar(64) , 
   inhashedpwd varchar(200) ,

OUT out_affected_row_num int
)
BEGIN

ALTER TABLE User_tbl CHANGE Account Account VARCHAR(64) CHARACTER SET utf8 
COLLATE utf8_general_ci NOT NULL;

ALTER TABLE User_credential_tbl CHANGE Hashedpwd Hashedpwd VARCHAR(200) 
CHARACTER SET utf8 
COLLATE utf8_general_ci NOT NULL;


SELECT  C.User_id , U.Account ,
	CASE
	WHEN new_pwd_tbl.Last_pwd = inhashedpwd COLLATE utf8_unicode_ci
    AND  U.Account = inaccount  THEN "login success"
    ELSE "login fail"
	END AS Login_situation
FROM  User_credential_tbl as C , User_tbl as U,
(
SELECT CASE 
WHEN New.Create_date_time >= Old.Create_date_time THEN New.Hashedpwd
ELSE Old.Hashedpwd
END as Last_pwd
FROM 
(SELECT Hashedpwd , Create_date_time FROM User_credential_tbl  WHERE User_id = 
(SELECT DISTINCT User_id FROM User_tbl WHERE Account = inaccount))
Old,
(
SELECT Hashedpwd , Create_date_time 
FROM New_User_table WHERE Account = inaccount
AND Create_date_time = 
(SELECT  Create_date_time 
FROM New_User_table WHERE Account = inaccount
ORDER BY New_table_id  DESC LIMIT 1 )
) New) 
new_pwd_tbl

WHERE U.Account = inaccount
AND C.User_id = (SELECT User_id FROM User_tbl WHERE Account = inaccount) 
;

SELECT  found_rows() INTO  out_affected_row_num ; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_RegisterUser`(
IN inaccount varchar(64), 
   insalt char(64),
   inname varchar(64),
   inphone varchar(64), 
   inaddress varchar(64),
   inloc_x int,
   inloc_y int, 
   inhashedPwd varchar(200),

OUT out_affected_row_num int
)
BEGIN

SET collation_connection = 'utf8_general_ci';

INSERT INTO 
User_tbl(Account , Salt , Name , Address , Phone ,
		 Loc_x , Loc_y ,Create_date_time)
VALUES( inaccount , insalt , inname , inaddress , inphone ,
	    inloc_x , inloc_y , NOW());

SET @affect_1 = ROW_COUNT() ;

INSERT INTO
User_credential_tbl(User_id , Create_date_time , Hashedpwd)
SELECT User_id , Create_date_time , inhashedPwd
FROM User_tbl WHERE User_tbl.Account = inaccount COLLATE utf8_general_ci;

SET @affect_2 = ROW_COUNT() ;

SET out_affected_row_num = (@affect_1 +  @affect_2);

INSERT INTO
New_User_table(User_id ,Account, Salt , Hashedpwd,Create_date_time)
               
VALUES ((SELECT User_id FROM User_tbl ORDER BY User_id DESC LIMIT 1),
		inaccount, insalt , inhashedpwd , NOW());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ResetNewPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_ResetNewPassword`(
IN in_User_id INT,
   in_change_salt char(64),
   in_change_hashedPwd  varchar(200),
   
OUT out_affected_row_num INT

)
BEGIN
UPDATE User_tbl
SET Salt=in_change_salt
WHERE User_id = in_User_id;

SET @affect_1 = ROW_COUNT() ;

UPDATE User_credential_tbl
SET Hashedpwd = in_change_hashedPwd , Create_date_time = NOW()
WHERE User_id = in_User_id;

SET @affect_2 = ROW_COUNT() ;

SET out_affected_row_num = (@affect_1 +  @affect_2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchMealsOfRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_SearchMealsOfRestaurant`(

IN  inmeals varchar(64) ,
OUT out_affected_row_num INT

)
BEGIN
alter table sakila.Meal_tbl 
convert to character set utf8 collate utf8_general_ci;

alter table sakila.Restaurant_tbl
convert to character set utf8 collate utf8_general_ci;

SELECT  R.Name  as name ,  M.Meals_name  as meals_name , M.Price as price 
FROM Restaurant_tbl as R , Meal_tbl as M  
WHERE   M.Meals_name LIKE  CONCAT('%' , inmeals, '%')
AND     R.Restaurant_id = M.Restaurant_id;

SELECT  found_rows() INTO  out_affected_row_num ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchStarRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_SearchStarRestaurant`(
IN in_x INT , 

OUT out_affected_row_num int

)
BEGIN

SELECT DISTINCT Restaurant_tbl.Restaurant_id , Restaurant_tbl.Name , Order_tbl.Restaurant_rating
FROM Order_tbl , Order_detail_tbl , Meal_tbl , Restaurant_tbl
WHERE Order_tbl.Restaurant_rating >= in_x
AND Order_tbl.Order_id =  Order_detail_tbl.Order_id
AND Order_detail_tbl.Meal_id = Meal_tbl.Meal_id
AND Meal_tbl.Restaurant_id = Restaurant_tbl.Restaurant_id
ORDER BY Restaurant_tbl.Restaurant_id;

SELECT  found_rows() INTO  out_affected_row_num ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_UpdateOrderStatus`(
IN inorder_id INT,
IN inorder_status INT,
OUT out_affected_row_num INT
)
BEGIN

IF ((SELECT Order_status FROM Order_tbl WHERE Order_id = inorder_id) < inorder_status) THEN 
UPDATE Order_tbl
SET Order_status = inorder_status
WHERE Order_tbl.Order_id = inorder_id
;
END IF;

SELECT ROW_COUNT() INTO out_affected_row_num ;

SELECT Order_id , Order_status
FROM Order_tbl
WHERE Order_id = inorder_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13  9:38:24
