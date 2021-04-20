/* Create a new Field for the week of the year */
USE retail;
ALTER TABLE Sales ADD WeekOfYear int
AS (WEEK(`Sales`.`salesWeek`)) STORED;