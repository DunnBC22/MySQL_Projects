CREATE DATABASE  IF NOT EXISTS `retail` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `retail`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: retail
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
-- Temporary view structure for view `avgsalesbystoretype`
--

DROP TABLE IF EXISTS `avgsalesbystoretype`;
/*!50001 DROP VIEW IF EXISTS `avgsalesbystoretype`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avgsalesbystoretype` AS SELECT 
 1 AS `Store Type`,
 1 AS `Average Weekly Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Features` (
  `storeID` int NOT NULL,
  `retailDate` date NOT NULL,
  `temperature` double DEFAULT NULL,
  `fuelPrice` double DEFAULT NULL,
  `markDown1` double DEFAULT NULL,
  `markDown2` double DEFAULT NULL,
  `markDown3` double DEFAULT NULL,
  `markDown4` double DEFAULT NULL,
  `markDown5` double DEFAULT NULL,
  `CPI` double DEFAULT NULL,
  `unemployment` double DEFAULT NULL,
  `isHoliday` int DEFAULT NULL,
  KEY `storeID` (`storeID`),
  CONSTRAINT `features_ibfk_1` FOREIGN KEY (`storeID`) REFERENCES `Stores` (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sales` (
  `storeID` int NOT NULL,
  `dept` int DEFAULT NULL,
  `salesWeek` date DEFAULT NULL,
  `weeklySalesAmt` double DEFAULT NULL,
  `isSalesHoliday` tinyint(1) DEFAULT NULL,
  `WeekOfYear` int GENERATED ALWAYS AS (week(`salesWeek`,0)) STORED,
  `DayWithinYear` int GENERATED ALWAYS AS (dayofyear(`salesWeek`)) STORED,
  KEY `storeID` (`storeID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`storeID`) REFERENCES `Stores` (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SalesClone`
--

DROP TABLE IF EXISTS `SalesClone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SalesClone` (
  `storeID` int NOT NULL,
  `dept` int DEFAULT NULL,
  `salesWeek` date DEFAULT NULL,
  `weeklySalesAmt` double DEFAULT NULL,
  `isSalesHoliday` tinyint(1) DEFAULT NULL,
  `WeekOfYear` int GENERATED ALWAYS AS (week(`salesWeek`,0)) STORED,
  `monthNum` int GENERATED ALWAYS AS (month(`salesWeek`)) STORED,
  `MonthName` varchar(10) GENERATED ALWAYS AS (monthname(`salesWeek`)) STORED,
  KEY `storeID` (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Stores`
--

DROP TABLE IF EXISTS `Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stores` (
  `storeID` int NOT NULL,
  `storeType` char(1) DEFAULT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'retail'
--

--
-- Final view structure for view `avgsalesbystoretype`
--

/*!50001 DROP VIEW IF EXISTS `avgsalesbystoretype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avgsalesbystoretype` AS select `ST`.`storeType` AS `Store Type`,avg(`SA`.`weeklySalesAmt`) AS `Average Weekly Sales` from (`stores` `ST` left join `sales` `SA` on((`ST`.`storeID` = `SA`.`storeID`))) group by `ST`.`storeType` */;
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

-- Dump completed on 2021-04-19 19:33:26
