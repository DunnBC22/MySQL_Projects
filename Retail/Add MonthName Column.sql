USE retail;
ALTER TABLE Sales 
ADD COLUMN `MonthName` varchar(10) 
AS (monthname(`salesWeek`)) STORED;