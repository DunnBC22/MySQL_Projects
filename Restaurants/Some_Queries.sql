/*
	Use the limit and other keywords in some queries
*/
USE restaurant;
SELECT * FROM Top250 LIMIT 27;

USE Restaurant;
SELECT 'Sales', ROUND(AVG(Sales),2) as 'Average Sales', MIN(Sales) as 'Minimum Sales', MAX(Sales) as 'Maxmimum Sales', format(STD(Sales),2) as 'Std. Dev of Sales' FROM Top250;

USE Restaurant;
SELECT 'Units', ROUND(AVG(Units),2) as 'Average Units', MIN(Units) as 'Minimum Units', MAX(Units) as 'Maximum Units', format(STD(Units), 2) as 'Std. Dev. for Units' FROM Top250;

USE Restaurant;
SELECT Segment_Category, COUNT(Units) as '# of Restaurants', AVG(Units) as 'Average Units', MIN(Units) as 'Minimum Units', MAX(Units) as 'Maximum Units', format(STD(Units), 2) as 'Std. Dev. for Units' FROM Top250 GROUP BY Segment_Category;