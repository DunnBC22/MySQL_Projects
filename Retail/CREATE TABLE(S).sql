use retail;
CREATE TABLE Stores (
	storeID int NOT NULL,
	storeType char,
	size int,
    PRIMARY KEY (storeID)
);

CREATE TABLE `Sales` (
  `storeID` int NOT NULL,
  `dept` int DEFAULT NULL,
  `salesWeek` date DEFAULT NULL,
  `weeklySalesAmt` double,
  `isSalesHoliday` bool,
  KEY `storeID` (`storeID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`storeID`) REFERENCES `Stores` (`storeID`)
);
  
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
);

