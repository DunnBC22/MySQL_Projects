USE retail;
ALTER TABLE Sales ADD COLUMN monthNum int
AS (MONTH(Sales.salesWeek)) STORED;