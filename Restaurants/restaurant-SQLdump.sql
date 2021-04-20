CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Future50`
--

DROP TABLE IF EXISTS `Future50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Future50` (
  `ranking` int NOT NULL,
  `Restaurant` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Sales` int NOT NULL,
  `YOY_Sales` decimal(5,2) NOT NULL,
  `Units` int NOT NULL,
  `YOY_Units` decimal(5,2) NOT NULL,
  `Unit_Volume` int NOT NULL,
  `Franchising` varchar(3) NOT NULL,
  `name_of_table` varchar(9) GENERATED ALWAYS AS (_utf8mb4'Future50') STORED,
  PRIMARY KEY (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Future50`
--

LOCK TABLES `Future50` WRITE;
/*!40000 ALTER TABLE `Future50` DISABLE KEYS */;
INSERT INTO `Future50` (`ranking`, `Restaurant`, `Location`, `Sales`, `YOY_Sales`, `Units`, `YOY_Units`, `Unit_Volume`, `Franchising`) VALUES (1,'Evergreens','Seattle, Wash.',24,130.50,26,116.70,1150,'No'),(2,'Clean Juice','Charlotte, N.C.',44,121.90,105,94.40,560,'Yes'),(3,'Slapfish','Huntington Beach, Calif.',21,81.00,21,90.90,1370,'Yes'),(4,'Clean Eatz','Wilmington, N.C.',25,79.70,46,58.60,685,'Yes'),(5,'Pokeworks','Irvine, Calif.',49,77.10,50,56.30,1210,'Yes'),(6,'Playa Bowls','Belmar,  N.J.',39,62.90,76,28.80,580,'Yes'),(7,'The Simple Greek','Blue Bell, Pa.',24,52.50,36,33.30,775,'Yes'),(8,'Melt Shop','New York, N.Y.',20,39.60,19,35.70,1260,'Yes'),(9,'Creamistry','Yorba Linda,  Calif.',24,36.80,60,27.70,465,'Yes'),(10,'Joella\'s Hot Chicken','Louisville, Ky.',29,35.50,17,30.80,1930,'No'),(11,'Eggs Up Grill','Spartanburg, S.C.',30,35.40,41,36.70,860,'Yes'),(12,'Dog Haus','Pasadena, Calif.',39,34.50,50,42.90,1200,'Yes'),(13,'Teriyaki Madness','Denver, Colo.',41,34.10,63,65.80,890,'Yes'),(14,'Bluestone Lane','New York, N.Y.',48,33.00,48,37.10,1175,'No'),(15,'Original ChopShop','Plano, Texas',21,32.50,12,20.00,1930,'No'),(16,'Rapid Fired Pizza','Kettering, Ohio',24,32.20,35,29.60,780,'Yes'),(17,'Ike\'s Love & Sandwiches','San Francisco, Calif.',44,30.80,71,29.10,700,'Yes'),(18,'Vitality Bowls','San Ramon, Calif.',37,30.10,77,24.20,535,'Yes'),(19,'Hawkers Asian Street Fare','Orlando, Fla.',22,30.00,7,40.00,3800,'No'),(20,'Maple Street Biscuit Co.','Orange Park, Fla.',39,28.90,33,10.00,1260,'Yes'),(21,'Bulla Gastrobar','Doral, Fla.',32,28.20,8,14.30,4300,'No'),(22,'Duck Donuts','Mechanicsburg, Pa.',44,28.00,90,16.90,530,'Yes'),(23,'The Little Beet','New York, N.Y.',23,26.50,12,33.30,2230,'No'),(24,'Joe & The Juice','New York, N.Y.',47,25.90,69,25.50,760,'Yes'),(25,'By Chloe','New York, N.Y.',37,25.60,14,7.70,2800,'No'),(26,'Sugarfire Smokehouse','Olivette, Mo.',39,25.40,15,15.40,2820,'No'),(27,'Bibibop Asian Grill','Columbus, Ohio',44,24.60,37,23.30,1330,'No'),(28,'Bubbakoo\'s Burritos','Wall Township, N.J.',28,24.30,31,14.80,970,'Yes'),(29,'Dos Toros Taqueria','New York, N.Y.',28,24.00,22,10.00,1375,'No'),(30,'The Pizza Press','Anaheim, Calif.',27,23.70,27,22.70,1130,'Yes'),(31,'The Lost Cajun','Frisco, Texas',20,23.00,26,4.00,785,'Yes'),(32,'Just Salad','New York, N.Y.',42,22.70,38,26.70,1240,'No'),(33,'Jeni\'s Splendid Ice Creams','Columbus, Ohio',42,22.40,44,22.20,1050,'No'),(34,'Boqueria','New York, N.Y.',27,22.00,7,16.70,4260,'No'),(35,'Quickway Japanese Hibachi','Fairfax, Va.',22,21.40,25,19.00,985,'Yes'),(36,'Surcheros','Douglas, Ga.',22,21.30,20,17.60,1230,'Yes'),(37,'Famous Toastery','Charlotte, N.C.',40,21.20,27,8.00,1540,'Yes'),(38,'Culinary Dropout','Scottsdale, Ariz.',20,20.80,7,16.70,3120,'No'),(39,'Condado Tacos','Columbus, Ohio',38,19.90,15,15.40,2755,'No'),(40,'The Flying Biscuit Cafe','Atlanta, Ga.',29,19.50,21,16.70,1510,'Yes'),(41,'Blue Sushi Sake Grill','Omaha, Neb.',49,19.50,14,16.70,3500,'No'),(42,'The Human Bean','Medford, Ore.',47,19.00,97,19.80,535,'Yes'),(43,'Spitz Mediterranean Street Food','Los Angeles, Calif.',28,18.80,11,10.00,2700,'No'),(44,'Tacos 4 Life','Conway, Ark.',25,18.40,16,6.70,1620,'Yes'),(45,'Pita Mediterranean Street Food','Fairburn, Ga.',38,17.80,32,10.30,1260,'Yes'),(46,'LA Crawfish','McAllen, Texas',48,17.60,25,13.60,2050,'Yes'),(47,'&pizza','Washington, D.C.',45,17.10,35,9.40,1350,'No'),(48,'Super Duper Burgers','San Francisco, Calif.',39,16.90,16,14.30,2630,'No'),(49,'StoneFire Grill','Agoura Hills, Calif.',31,16.00,13,8.30,2550,'No'),(50,'Gus\'s World Famous Fried Chicken','Memphis, Tenn.',44,14.40,28,7.70,1600,'Yes');
/*!40000 ALTER TABLE `Future50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `independence100`
--

DROP TABLE IF EXISTS `independence100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `independence100` (
  `ranking` int NOT NULL,
  `restaurant` varchar(45) DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `averageCheck` int DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(6) DEFAULT NULL,
  `meals_served` int DEFAULT NULL,
  `name_of_table` varchar(16) GENERATED ALWAYS AS (_utf8mb4'independence100') STORED,
  PRIMARY KEY (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `independence100`
--

LOCK TABLES `independence100` WRITE;
/*!40000 ALTER TABLE `independence100` DISABLE KEYS */;
INSERT INTO `independence100` (`ranking`, `restaurant`, `sales`, `averageCheck`, `city`, `state`, `meals_served`) VALUES (1,'Carmine\'s (Times Square)',39080335,40,'New York','NY',469803),(2,'The Boathouse Orlando',35218364,43,'Orlando ','Fla',820819),(3,'Old Ebbitt Grill',29104017,33,'Washington','DC',892830),(4,'LAVO Italian Restaurant & Nightclub',26916180,90,'New York','NY',198500),(5,'Bryant Park Grill & Cafe',26900000,62,'New York','NY',403000),(6,'Gibsons Bar & Steakhouse',25409952,80,'Chicago','Ill',348567),(7,'Top of the World at the STRAT ',25233543,103,'Las Vegas','Nev',246054),(8,'Maple & Ash',24837595,99,'Chicago','Ill',210832),(9,'Balthazar',24547800,87,'New York','NY',519000),(10,'Smith & Wollensky',24501000,107,'New York','NY',257364),(11,'Angus Barn',24268160,75,'Raleigh','NC',315000),(12,'Prime 112',23800000,135,'Miami Beach','Fla',206000),(13,'Joe\'s Seafood, Prime Steak & Stone Crab',23660000,86,'Washington','DC',277850),(14,'Junior\'s (Times Square)',23640652,23,'New York','NY',914500),(15,'The Hamilton',23138062,33,'Washington','DC',700861),(16,'Joe\'s Seafood, Prime Steak & Stone Crab',22981600,91,'Chicago','Ill',252500),(17,'Joe\'s Seafood, Prime Steak & Stone Crab',22859400,81,'Las Vegas','Nev',286000),(18,'Gibsons Italia',22749232,108,'Chicago','Ill',252962),(19,'Komodo',22500000,98,'Miami','Fla',265000),(20,'Buddakan',22395577,67,'New York','NY',221059),(21,'Bazaar Meat by Jose Andres',22181607,119,'Las Vegas','Nev',190000),(22,'SW Steakhouse',21523650,149,'Las Vegas','Nev',145700),(23,'St. Elmo Steak House',21422141,99,'Indianapolis','Ind',192774),(24,'RPM Steak',20853300,102,'Chicago','Ill',202900),(25,'Mon Ami Gabi',20120210,76,'Las Vegas','Nev',319200),(26,'Gibsons Bar & Steakhouse',19831818,81,'Oak Brook','Ill',276444),(27,'Paddlefish',19829500,48,'Orlando ','Fla',417500),(28,'Taste of Texas',19530159,55,'Houston','Texas',375241),(29,'Parc',19379153,35,'Philadelphia','Pa',486219),(30,'Bob Chinn\'s Crab House',18687601,48,'Wheeling','Ill',625907),(31,'Quality Meats',18678000,115,'New York','NY',165148),(32,'Del Posto',18625033,194,'New York','NY',95000),(33,'Shooters Waterfront',18601433,57,'Ft. Lauderdale','Fla',409752),(34,'Bottega Louie',18521000,36,'Los Angeles','Calif',322562),(35,'Le Diplomate',18490719,38,'Washington','DC',363609),(36,'Gibsons Bar & Steakhouse',18483056,79,'Rosemont','Ill',252419),(37,'Lavo Italian Restaurant & Lounge',18386262,97,'Las Vegas','Nev',115500),(38,'Prime Steakhouse',18248030,173,'Las Vegas','Nev',113600),(39,'Makoto',18216906,54,'Bal Harbour','Fla',256830),(40,'Original Joe\'s Westlake',18159612,35,'Daly City','Calif',473492),(41,'Shaw\'s Crab House',17965500,72,'Chicago','Ill',270000),(42,'Founding Farmers (Washington, D.C.)',17910045,33,'Washington','DC',648096),(43,'Junior\'s (49th Street)',17834390,22,'New York','NY',798000),(44,'Chops Lobster Bar',17816450,106,'Atlanta','Ga',168000),(45,'Chicago Cut Steakhouse',17743720,95,'Chicago','Ill',211000),(46,'Swift & Sons',17637400,119,'Chicago','Ill',195343),(47,'Harris Ranch Inn & Restaurant',17599468,29,'Coalinga','Calif',611928),(48,'Sparks Steak House',17519030,100,'New York','NY',198200),(49,'Quality Italian',17519000,95,'New York','NY',177337),(50,'Frankenmuth Bavarian Inn',17388751,19,'Frankenmuth','Mich',899284),(51,'Tavern on the Green',17212800,76,'New York','NY',250000),(52,'Abe & Louie\'s',17063477,106,'Boston','Mass',160762),(53,'Rusty Pelican',16981741,98,'Miami','Fla',182000),(54,'Beauty & Essex (New York City)',16364050,90,'New York','NY',187970),(55,'Grand Central Oyster Bar',16304883,62,'New York','NY',296000),(56,'Delmonico Steakhouse',16154000,103,'Las Vegas','Nev',133000),(57,'Portland City Grill',16111510,83,'Portland','Ore',268062),(58,'Zehnder\'s of Frankenmuth',16063684,17,'Frankenmuth','Mich',959026),(59,'The Rustic Inn',15700000,43,'Ft. Lauderdale','Fla',371000),(60,'Harry Caray\'s Italian Steakhouse',15680000,59,'Chicago','Ill',287900),(61,'Keens Steakhouse',15629700,97,'New York','NY',168301),(62,'The Lobster House',15450000,43,'Cape May','NJ',320000),(63,'China Live',15106280,54,'San Francisco','Calif',300000),(64,'Prime & Provisions',15100000,130,'Chicago','Ill',116154),(65,'Carmine\'s (Las Vegas)',15067804,45,'Las Vegas','Nev',176221),(66,'Swan',15000000,78,'Miami','Fla',225000),(67,'15th Street Fisheries',14978103,69,'Fort Lauderdale','Fla ',356000),(68,'Atlanta Fish Market',14972300,57,'Atlanta','Ga',274000),(69,'Acme Feed & Seed',14897125,22,'Nashville','Tenn',527130),(70,'Hugo\'s Frog Bar & Fish House',14790123,80,'Chicago','Ill',190616),(71,'Cliff House',14465847,40,'San Francisco','Calif',199901),(72,'Castaway Burbank',14407413,60,'Burbank','Calif',180320),(73,'Matt\'s El Rancho',14381904,29,'Austin','Texas',495927),(74,'Timberline Steaks and Grille',14362103,37,'Denver','Colo',553378),(75,'Beauty & Essex (Las Vegas)',14130500,99,'Las Vegas','Nev',150000),(76,'Carmine\'s (Atlantic City)',13987843,39,'Atlantic City','NJ',129630),(77,'Junior\'s (Brooklyn)',13908292,23,'New York','NY',359000),(78,'Quartino Ristorante & Wine Bar',13854856,32,'Chicago','Ill',394582),(79,'Paradise Cove Beach Cafe',13654113,39,'Malibu','Calif',312050),(80,'BOA Steakhouse ',13552485,110,'West Hollywood','Calif',123204),(81,'Original Joe\'s',13177468,45,'San Francisco','Calif',267533),(82,'Founding Farmers (McLean, Va.)',13102742,38,'McLean','Va',390104),(83,'Siena Tavern',13100000,55,'Chicago','Ill',238182),(84,'Girl & the Goat',12894700,82,'Chicago','Ill',183000),(85,'Tavern on Rush',12884000,72,'Chicago','Ill',178944),(86,'Harry & Izzy\'s Circle Centre',12809921,66,'Indianapolis','Ind',174166),(87,'Scoma\'s',12713394,65,'San Francisco','Calif',292000),(88,'Farmers Fishers Bakers',12572109,37,'Washington','DC',371025),(89,'Southern Steak & Oyster',12566618,39,'Nashville','Tenn',337920),(90,'Big Texan Steak Ranch',12505200,24,'Amarillo','Texas',478000),(91,'Park Avenue Summer (Autumn, Winter, Spring)',12498000,84,'New York','NY',164531),(92,'Farmers & Distillers',12278839,36,'Washington','DC',375309),(93,'Virgil\'s Real Barbecue',12245998,31,'New York','NY',251800),(94,'Carmine\'s (Washington, D.C.)',12228168,39,'Washington','DC',148135),(95,'Franciscan Crab Restaurant',12218147,59,'San Francisco','Calif',240000),(96,'George\'s at the Cove',12194000,80,'La Jolla','Calif',250000),(97,'Le Coucou',12187523,95,'New York','NY',87070),(98,'Mi Vida',12032014,38,'Washington','DC',226226),(99,'Upland',11965564,52,'New York','NY',171825),(100,'Virgil\'s Real Barbecue',11391678,27,'Las Vegas','Nev',208276);
/*!40000 ALTER TABLE `independence100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `restaurants_sales_and_units_only`
--

DROP TABLE IF EXISTS `restaurants_sales_and_units_only`;
/*!50001 DROP VIEW IF EXISTS `restaurants_sales_and_units_only`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `restaurants_sales_and_units_only` AS SELECT 
 1 AS `Restaurant`,
 1 AS `Sales`,
 1 AS `Units`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Top250`
--

DROP TABLE IF EXISTS `Top250`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Top250` (
  `ranking` int NOT NULL,
  `Restaurant` varchar(40) NOT NULL,
  `Sales` int DEFAULT NULL,
  `YOY_Sales` double DEFAULT NULL,
  `Units` int DEFAULT NULL,
  `YOY_Units` double DEFAULT NULL,
  `Segment_Category` varchar(50) DEFAULT NULL,
  `name_of_table` varchar(7) GENERATED ALWAYS AS (_utf8mb4'Top250') STORED,
  PRIMARY KEY (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Top250`
--

LOCK TABLES `Top250` WRITE;
/*!40000 ALTER TABLE `Top250` DISABLE KEYS */;
INSERT INTO `Top250` (`ranking`, `Restaurant`, `Sales`, `YOY_Sales`, `Units`, `YOY_Units`, `Segment_Category`) VALUES (1,'McDonald\'s',40412,4.9,13846,-0.5,'Quick Service & Burger'),(2,'Starbucks',21380,8.6,15049,3,'Quick Service & Coffee Cafe'),(3,'Chick-fil-A',11320,13,2470,5,'Quick Service & Chicken'),(4,'Taco Bell',11293,9,6766,2.7,'Quick Service & Mexican'),(5,'Burger King',10204,2.7,7346,0.2,'Quick Service & Burger'),(6,'Subway',10200,-2,23801,-4,'Quick Service & Sandwich'),(7,'Wendy\'s',9762,4.2,5852,0.7,'Quick Service & Burger'),(8,'Dunkin\'',9228,5,9630,2.2,'Quick Service & Coffee Cafe'),(9,'Domino\'s',7044,6.9,6126,4.3,'Quick Service & Pizza'),(10,'Panera Bread',5890,4,2160,3.2,'Fast Casual & Bakery Cafe'),(11,'Pizza Hut',5558,0.6,7306,-2.4,'Quick Service & Pizza'),(12,'Chipotle Mexican Grill',5509,14.8,2584,5.3,'Fast Casual & Mexican'),(13,'Sonic Drive-In',4687,4.6,3526,-2.1,'Quick Service & Burger'),(14,'KFC',4546,2.5,4065,-0.2,'Quick Service & Chicken'),(15,'Olive Garden',4287,5,866,1.3,'Casual Dining & Italian/Pizza'),(16,'Applebee\'s',4085,-3,1665,-1.7,'Casual Dining & Varied Menu'),(17,'Panda Express',3946,12,2209,4.9,'Fast Casual & Asian/Noodle'),(18,'Arby\'s',3884,1.9,3359,0.9,'Quick Service & Sandwich'),(19,'Popeyes Louisiana Kitchen',3812,18.3,2476,5.5,'Quick Service & Chicken'),(20,'Little Caesars',3811,2.7,4237,-0.6,'Quick Service & Pizza'),(21,'Dairy Queen',3760,2.9,4381,-0.6,'Quick Service & Frozen Desserts'),(22,'Buffalo Wild Wings',3669,-0.1,1206,-0.2,'Casual Dining & Sports Bar'),(23,'Chili\'s Grill & Bar',3563,2.2,1242,-0.7,'Casual Dining & Varied Menu'),(24,'Jack in the Box',3504,1.1,2243,0.3,'Quick Service & Burger'),(25,'IHOP',3266,2,1710,0.3,'Family Dining & Family Style'),(26,'Texas Roadhouse',3016,11,553,3.8,'Casual Dining & Steak'),(27,'Denny\'s',2691,1.1,1558,-1.5,'Family Dining & Family Style'),(28,'Papa John\'s',2638,-2.7,3142,-1.8,'Quick Service & Pizza'),(29,'Outback Steakhouse',2635,0.9,724,-1.2,'Casual Dining & Steak'),(30,'Whataburger',2556,5.8,830,0.6,'Quick Service & Burger'),(31,'Red Lobster',2490,1.6,679,0.1,'Casual Dining & Seafood'),(32,'Cracker Barrel',2482,1.8,660,0.8,'Family Dining & Family Style'),(33,'The Cheesecake Factory',2180,2.5,206,2.5,'Casual Dining & Varied Menu'),(34,'Jimmy John\'s Gourmet Sandwiches',2105,-1.6,2787,-0.5,'Fast Casual & Sandwich'),(35,'Hardee\'s',2020,-4,1820,-1.4,'Quick Service & Burger'),(36,'Zaxby\'s',1886,6,910,1.3,'Fast Casual & Chicken'),(37,'LongHorn Steakhouse',1867,6.3,530,1.9,'Casual Dining & Steak'),(38,'Culver\'s',1795,13.9,732,6.7,'Quick Service & Burger'),(39,'Golden Corral',1746,0.8,483,-1.2,'Quick Service & Family Casual'),(40,'Five Guys Burgers and Fries',1661,7.4,1368,0.7,'Fast Casual & Burger'),(41,'Red Robin Gourmet Burgers and Brews',1548,-0.3,556,-3,'Casual Dining & Varied Menu'),(42,'Raising Cane\'s Chicken Fingers',1466,23.8,457,14.3,'Fast Casual & Chicken'),(43,'Carl\'s Jr.',1423,-2.5,1095,-2.3,'Quick Service & Burger'),(44,'Wingstop',1363,19,1231,9.5,'Fast Casual & Chicken'),(45,'Waffle House',1344,3.4,1959,1.2,'Family Dining & Family Style'),(46,'Jersey Mike\'s Subs',1340,16.7,1667,11.6,'Fast Casual & Sandwich'),(47,'Bojangles\'',1331,2.7,746,-1.3,'Quick Service & Chicken'),(48,'BJ\'s Restaurant & Brewhouse',1161,4,208,3,'Casual Dining & Varied Menu'),(49,'TGI Fridays',1085,-8.5,385,-7.9,'Casual Dining & Varied Menu'),(50,'In-N-Out Burger',957,4.6,351,3.5,'Quick Service & Burger'),(51,'Steak \'n Shake',950,-7.7,576,-3,'Quick Service & Burger'),(52,'P.F. Chang\'s',917,1.4,221,0,'Casual Dining & Asian'),(53,'Qdoba Mexican Eats',901,5.9,730,-2.9,'Fast Casual & Mexican'),(54,'El Pollo Loco',894,3,482,-0.4,'Quick Service & Chicken'),(55,'Krispy Kreme',887,4.4,364,4,'Quick Service & Snack'),(56,'Hooters',858,0.4,341,0,'Casual Dining & Sports Bar'),(57,'Del Taco',850,4,596,2.8,'Quick Service & Mexican'),(58,'Firehouse Subs',832,4.8,1155,1.9,'Fast Casual & Sandwich'),(59,'Bob Evans',795,-4.2,483,-1.4,'Family Dining & Family Style'),(60,'Moe\'s Southwest Grill',749,2,730,1.5,'Fast Casual & Mexican'),(61,'Papa Murphy\'s Pizza',748,-5.9,1329,-5.1,'Quick Service & Pizza'),(62,'Ruby Tuesday',731,-11.4,451,-8.1,'Casual Dining & Varied Menu'),(63,'McAlister\'s Deli',725,7,460,3.6,'Fast Casual & Sandwich'),(64,'Cheddar\'s Scratch Kitchen',724,0.6,175,2.9,'Casual Dining & Varied Menu'),(65,'Church\'s Chicken',716,-5.2,1032,-5,'Quick Service & Chicken'),(66,'Tim Hortons',714,-3.5,715,-1.7,'Quick Service & Coffee Cafe'),(67,'Ruth\'s Chris Steak House',703,1.6,135,1.5,'Steak'),(68,'Carrabba\'s Italian Grill',653,-1,225,-0.9,'Casual Dining & Italian/Pizza'),(69,'Jason\'s Deli',647,-1.1,283,1.8,'Fast Casual & Sandwich'),(70,'Marco\'s Pizza',628,4.8,915,3.6,'Quick Service & Pizza'),(71,'Shake Shack',622,31.8,173,27.2,'Fast Casual & Burger'),(72,'California Pizza Kitchen',621,-3.3,199,-0.5,'Casual Dining & Italian/Pizza'),(73,'Baskin-Robbins',615,0.6,2524,-1,'Quick Service & Frozen Desserts'),(74,'Yard House',609,6.6,79,9.7,'Casual Dining & Varied Menu'),(75,'Bonefish Grill',587,-0.9,197,0,'Casual Dining & Seafood'),(76,'White Castle',579,2.4,371,-0.5,'Quick Service & Burger'),(77,'Tropical Smoothie Cafe',576,21.8,834,16,'Quick Service & Beverage'),(78,'Dave & Buster\'s',571,6.5,132,10.9,'Sports Bar'),(79,'Dutch Bros. Coffee',567,15,369,13.2,'Quick Service & Coffee Cafe'),(80,'Captain D\'s Seafood Kitchen',561,3.1,540,2.1,'Quick Service & Seafood'),(81,'Auntie Anne\'s',559,0.2,1288,-0.5,'Quick Service & Snack'),(82,'First Watch',558,35.1,368,24.7,'Family Dining & Family Style'),(83,'Perkins Restaurant & Bakery',541,-9.5,309,-13,'Family Dining & Family Style'),(84,'Freddy\'s Frozen Custard & Steakburgers',535,12.9,368,12.2,'Fast Casual & Burger'),(85,'Checkers Drive-In Restaurants',535,-1.8,584,-0.2,'Quick Service & Burger'),(86,'Noodles & Company',533,0.9,457,-0.4,'Fast Casual & Asian/Noodle'),(87,'Einstein Bros. Bagels',517,-2.1,710,-2.6,'Quick Service & Bakery Cafe'),(88,'Jamba',514,0.8,767,-1.8,'Quick Service & Beverage'),(89,'Portillo\'s',505,12.2,62,8.8,'Fast Casual & Sandwich'),(90,'Boston Market',501,-9.9,390,-14.1,'Fast Casual & Chicken'),(91,'The Habit Burger Grill',500,14.5,273,10.5,'Fast Casual & Burger'),(92,'Logan\'s Roadhouse',496,-3.7,204,-1,'Casual Dining & Steak'),(93,'MOD Pizza',483,23.8,467,18.2,'Fast Casual & Pizza'),(94,'Smoothie King',462,11.2,972,8,'Quick Service & Beverage'),(95,'Mellow Mushroom',461,-0.3,187,-1.1,'Casual Dining & Italian/Pizza'),(96,'The Capital Grille',461,4.7,58,0,'Fine Dining & Steak'),(97,'Round Table Pizza',450,1.3,435,0.7,'Quick Service & Pizza'),(98,'Miller\'s Ale House',446,10.2,98,11.4,'Casual Dining & Sports Bar'),(99,'Potbelly sandwich Shop',446,-2.5,471,-1.5,'Quick Service & Sandwich'),(100,'Hungry Howie\'s Pizza',439,7,537,-2.4,'Quick Service & Pizza'),(101,'Charleys Philly Steaks',435,4.9,540,2.3,'Quick Service & Sandwich'),(102,'Chuy\'s',426,7.1,100,0,'Mexican'),(103,'O\'Charley\'s',426,-7.6,196,-5.3,'Varied Menu'),(104,'Pollo Tropical',425,-2.1,174,3,'Chicken'),(105,'Maggiano\'s Little Italy',417,1.1,53,1.9,'Italian/Pizza'),(106,'Cicis',410,-1.4,420,0.7,'Pizza'),(107,'Long John Silver\'s',404,-8.2,850,-2.4,'Seafood'),(108,'Saltgrass Steak House',402,14.9,88,10,'Steak'),(109,'Chuck E. Cheese\'s',381,-0.5,537,1.3,'Pizza'),(110,'Taco John\'s',373,0.5,387,-1.3,'Mexican'),(111,'Texas de Brazil Churrascaria',370,10.5,58,9.4,'Steak'),(112,'Cold Stone Creamery',369,-2.3,895,-0.9,'Frozen Desserts'),(113,'Blaze Pizza',366,12.4,313,5.7,'Pizza'),(114,'Peet\'s Coffee',357,4.3,423,2.2,'Coffee Cafe'),(115,'Dickey\'s Barbecue Pit',349,-9.2,497,-6.4,'BBQ'),(116,'Zoes Kitchen',348,1.2,256,-1.5,'Sandwich'),(117,'Corner Bakery_Cafe',348,-3.9,175,-3.8,'Bakery Cafe'),(118,'Krystal Co.',343,-9,318,-10.7,'Burger'),(119,'Benihana',340,1.6,71,0,'Asian'),(120,'Cooper\'s Hawk Winery & Restaurants',338,19.9,41,17.1,'Varied Menu'),(121,'Big Boy/Frisch\'s Big Boy',338,-3.4,194,-3,'Family Style'),(122,'Black Bear Diner',336,15.3,138,15,'Family Style'),(123,'Twin Peaks',335,2.6,84,0,'Sports Bar'),(124,'Schlotzsky\'s',335,-0.5,373,0.5,'Sandwich'),(125,'Jet\'s Pizza',331,-1.8,383,-1,'Pizza'),(126,'Famous Dave\'s',329,-8,128,-11.1,'BBQ'),(127,'On The Border Mexican Grill & Cantina',327,-6.1,136,-4.9,'Mexican'),(128,'Fogo de Chao',326,10.1,43,13.2,'Steak'),(129,'Ninety Nine Restaurants',324,2.1,108,0.9,'Varied Menu'),(130,'Village Inn',313,-7.9,183,-9,'Family Style'),(131,'Taco Cabana',311,-4.4,172,1.2,'Mexican'),(132,'Fleming\'s Prime Steakhouse & Wine Bar',307,1,68,-2.9,'Steak'),(133,'Caribou Coffee',306,6.7,464,3.8,'Coffee Cafe'),(134,'Jack\'s',290,9.8,176,8.6,'Burger'),(135,'Au Bon Pain',289,-8.1,170,-5.6,'Bakery Cafe'),(136,'Bar Louie',284,-5.6,128,-3,'Varied Menu'),(137,'Sarku Japan',281,2.4,224,-0.4,'Asian/Noodle'),(138,'Old Chicago Pizza & Taproom',275,4.5,109,1.9,'Italian/Pizza'),(139,'Rally\'s Hamburgers',275,-3.5,290,-3.7,'Burger'),(140,'Torchy\'s Tacos',272,17.3,72,14.3,'Mexican'),(141,'Pizza Ranch',269,7.3,212,2.9,'Pizza'),(142,'Pappadeaux Seafood Kitchen',269,3.1,40,0,'Seafood'),(143,'Braum\'s Ice Cream & Dairy Stores',268,2.2,281,0,'Frozen Desserts'),(144,'Pei Wei Asian Diner',268,-12.5,150,-16.7,'Asian/Noodle'),(145,'Cafe Rio Mexican Grill',267,9.9,126,6.8,'Mexican'),(146,'Morton\'s The Steakhouse',266,-1.5,63,-1.6,'Steak'),(147,'Smashburger',265,-6.5,312,-3.4,'Burger'),(148,'Wienerschnitzel',265,3.6,330,1.5,'Sandwich'),(149,'Sizzler',259,-3.8,122,-6.9,'Family Casual'),(150,'Seasons 52',253,1.4,44,4.8,'Varied Menu'),(151,'Bahama Breeze Island Grille',252,5.3,43,7.5,'Varied Menu'),(152,'Pret A Manger',252,4.7,95,3.3,'Bakery Cafe'),(153,'Godfather\'s Pizza',250,4.9,569,3.8,'Pizza'),(154,'Huddle House',247,0.9,342,-2.6,'Family Style'),(155,'Mastro\'s Restaurants',242,9.7,18,5.9,'Steak'),(156,'Uncle Julio\'s',239,11.7,36,2.9,'Mexican'),(157,'Fazoli\'s',238,2.8,215,0,'Sandwich'),(158,'Rubio\'s',232,-0.1,197,-3.4,'Mexican'),(159,'Legal Sea Foods',227,-1.9,34,-2.9,'Seafood'),(160,'A&W All-American Food',227,1.8,575,-6.5,'Burger'),(161,'Newk\'s Eatery',227,0.4,121,-0.8,'Sandwich'),(162,'Fuzzy\'s Taco Shop',225,8.6,152,3.4,'Mexican'),(163,'Sbarro',218,-4,300,-2.6,'Pizza'),(164,'Romano\'s Macaroni Grill',218,-4.6,85,-3.4,'Italian/Pizza'),(165,'Brio Tuscan Grille',217,-4,57,-1.7,'Italian/Pizza'),(166,'Lazy Dog Restaurant & Bar',213,21.3,36,20,'Varied Menu'),(167,'Souplantation & Sweet Tomatoes',211,-3.3,97,0,'Family Casual'),(168,'Friendly\'s',210,-15.3,160,-20.4,'Family Style'),(169,'Del Frisco\'s Double Eagle Steak House',205,12.4,16,0,'Steak'),(170,'Penn Station East Coast Subs',201,0.8,306,-1.3,'Sandwich'),(171,'Cinnabon',201,5.6,956,3.5,'Snack'),(172,'Uno Pizzeria & Grill',196,-12.9,85,-14.1,'Italian/Pizza'),(173,'J. Alexander\'s',195,2.8,34,3,'Varied Menu'),(174,'Luby\'s',195,-7.5,79,-6,'Family Casual'),(175,'Which Wich',193,-4.2,372,-3.9,'Sandwich'),(176,'Firebirds Wood Fired Grill',192,7.4,51,6.3,'Varied Menu'),(177,'Le Pain Quotidien',192,1.2,94,0,'Bakery Cafe'),(178,'Sonny\'s BBQ',191,-8.3,94,-6.9,'BBQ'),(179,'True Food Kitchen',190,13.8,32,28,'Varied Menu'),(180,'Buca di Beppo',189,-5.7,76,-1.3,'Italian/Pizza'),(181,'Hard Rock Cafe',187,-5.2,40,-4.8,'Varied Menu'),(182,'Johnny Rockets',186,-10.2,155,-11.4,'Varied Menu'),(183,'Fuddruckers',185,-15.8,138,-11.5,'Burger'),(184,'The Original Pancake House',185,3.1,141,0,'Family Style'),(185,'Sweetgreen',184,16.8,102,10.9,'Healthy'),(186,'Golden Chick',183,6.7,184,0.5,'Chicken'),(187,'Mountain Mike\'s Pizza',181,10.9,215,5.4,'Pizza'),(188,'Bubba Gump Shrimp Co.',181,-2.9,27,0,'Seafood'),(189,'The Melting Pot',181,-6.5,105,-7.9,'Varied Menu'),(190,'Farmer Boys',179,1.7,93,1.1,'Burger'),(191,'Donatos Pizza',179,3.8,165,3.1,'Pizza'),(192,'Shoney\'s',179,-4.4,126,-0.8,'Family Style'),(193,'Taco Bueno',178,-12.4,145,-12.1,'Mexican'),(194,'Claim Jumper',177,-10.2,35,-5.4,'Varied Menu'),(195,'Wetzel\'s Pretzels',177,3.9,353,5.4,'Snack'),(196,'La Madeleine Country French Cafe',174,2.4,87,0,'Bakery Cafe'),(197,'Giordano\'s',173,5.5,70,1.4,'Italian/Pizza'),(198,'Islands Fine Burgers & Drinks',173,0.9,56,0,'Varied Menu'),(199,'Mimi\'s Bistro & Bakery',172,-4.8,77,-2.5,'Varied Menu'),(200,'Beef \'O\' Brady\'s',171,-5,153,-2.5,'Sports Bar'),(201,'Metro Diner',171,36.3,69,3,'Family Style'),(202,'Bill Miller Bar-B-Q',170,3.6,75,1.4,'BBQ'),(203,'Black Angus Steakhouse',168,1.6,42,-4.5,'Steak'),(204,'Smokey Bones Bar & Fire Grill',168,-1.3,61,-3.2,'BBQ'),(205,'Joe\'s Crab Shack',166,-7.4,53,-7,'Seafood'),(206,'LaRosa\'s Pizzeria',164,3.7,66,3.1,'Italian/Pizza'),(207,'Roosters',163,6.7,42,2.4,'Varied Menu'),(208,'Great Harvest Bread Co.',162,-1.9,182,-0.5,'Bakery Cafe'),(209,'Shari\'s Cafe and Pies',161,-2.4,92,0,'Family Style'),(210,'Lee\'s Famous Recipe Chicken',161,-2.3,129,-1.5,'Chicken'),(211,'Wayback Burgers',159,2,143,0.7,'Burger'),(212,'McCormick & Schmick\'s',157,-15.6,35,-14.6,'Seafood'),(213,'Grand Lux Cafe',157,1.2,13,0,'Varied Menu'),(214,'Anthony\'s Coal Fired Pizza',153,4,68,1.5,'Italian/Pizza'),(215,'Chicken Salad Chick',153,39.5,144,38.5,'Chicken'),(216,'Paris Baguette',152,14.5,81,8,'Bakery Cafe'),(217,'Eat\'n Park',152,-6.5,63,-7.4,'Family Style'),(218,'Hurricane Grill & Wings',151,0.8,56,0,'Sports Bar'),(219,'The Old Spaghetti Factory',150,2.2,42,0,'Italian/Pizza'),(220,'Taziki\'s Mediterranean Cafe',149,11.9,93,6.9,'Ethnic'),(221,'Menchie\'s Frozen Yogurt',149,-3.1,416,-2.1,'Frozen Desserts'),(222,'Bruegger\'s Bagels',148,-4.5,210,-2.8,'Bakery Cafe'),(223,'Tijuana Flats',147,6.5,139,2.2,'Mexican'),(224,'Duffy\'s Sports Grill',144,2.6,34,0,'Sports Bar'),(225,'Eddie V\'s Prime Seafood',144,8.1,21,10.5,'Seafood'),(226,'Topgolf',144,14.6,54,14.9,'Varied Menu'),(227,'Ocean Prime',144,20.2,16,6.7,'Seafood'),(228,'Pappasito\'s Cantina',143,2.2,25,0,'Mexican'),(229,'Pollo Campero',143,1.1,78,-2.5,'Chicken'),(230,'Houlihan\'s',143,-21.2,45,-32.8,'Varied Menu'),(231,'Old Country Buffet/HomeTown Buffet',142,-18.8,49,-24.6,'Family Casual'),(232,'Great American Cookies',142,2.7,368,2.2,'Snack'),(233,'Nobu',139,9.4,17,13.3,'Asian'),(234,'BurgerFi',138,3,112,7.7,'Burger'),(235,'Mission BBQ',136,25,90,21.6,'BBQ'),(236,'Walk-On\'s Sports Bistreaux',133,27.8,33,37.5,'Sports Bar'),(237,'The Coffee Bean & Tea Leaf',133,-2.1,282,-0.7,'Coffee Café'),(238,'Yogurtland',132,-2.6,267,-2.2,'Frozen Desserts'),(239,'Daylight Donuts',132,2.2,415,0.2,'Snack'),(240,'WaBa Grill',132,3.7,191,0,'Asian/Noodle'),(241,'54th Street Restaurant & Drafthouse',131,4.5,31,6.9,'Varied Menu'),(242,'Biggby Coffee',129,3.8,240,0.8,'Coffee Cafe'),(243,'Costa Vida Fresh Mexican Grill',129,5.2,93,2.2,'Mexican'),(244,'L&L Hawaiian Barbecue',129,5.1,195,3.7,'BBQ'),(245,'Gyu-Kaku',129,18.6,52,8.3,'Asian'),(246,'Rainforest Cafe',129,-10.4,18,-5.3,'Varied Menu'),(247,'PDQ',127,-5.5,56,-11.1,'Chicken'),(248,'Lupe Tortilla',127,12.1,25,8.7,'Mexican'),(249,'Cook-Out Restaurant',126,10.1,270,7.1,'Burger'),(250,'Jollibee',126,15.2,40,11.1,'Chicken');
/*!40000 ALTER TABLE `Top250` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'restaurant'
--

--
-- Dumping routines for database 'restaurant'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_restaurant_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_restaurant_info`(IN id INT)
BEGIN
	SELECT Restaurant, Sales, YOY_Sales, Units, YOY_Units, Segment_Category
    FROM TOP250
    WHERE ranking=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `restaurants_sales_and_units_only`
--

/*!50001 DROP VIEW IF EXISTS `restaurants_sales_and_units_only`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `restaurants_sales_and_units_only` AS select `top250`.`Restaurant` AS `Restaurant`,`top250`.`Sales` AS `Sales`,`top250`.`Units` AS `Units` from `top250` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 12:44:49
