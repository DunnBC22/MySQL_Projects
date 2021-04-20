USE retail;
ALTER TABLE Stores
ADD INDEX storeID_storeType (storeID, storeType);

USE retail;
ALTER TABLE Sales
ADD INDEX storeID_dept (storeID, dept);