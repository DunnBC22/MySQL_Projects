/* Three Table Unions */

SELECT ranking, Restaurant, Sales, name_of_table
From (
SELECT ranking, Restaurant, Sales, name_of_table From Future50
UNION
SELECT ranking, Restaurant, Sales, name_of_table From Top250
UNION
SELECT ranking, Restaurant, Sales, name_of_table From independence100
) as R 
ORDER BY ranking;

SELECT ranking, Restaurant, Sales, name_of_table
From (
SELECT ranking, Restaurant, Sales, name_of_table From Future50
UNION
SELECT ranking, Restaurant, Sales, name_of_table From Top250
UNION
SELECT ranking, Restaurant, Sales, name_of_table From independence100
) as R 
ORDER BY name_of_table, ranking;

SELECT 
	COALESCE(name_of_table, 'TOTAL') AS 'Table Name', 
    LPAD(CONCAT('$', format(SUM(Sales),2)),20,' ') AS 'Total Sales', 
    LPAD(CONCAT('$', format(AVG(Sales),2)),20,' ') AS 'Average Sales' 
From (
	SELECT ranking, Restaurant, Sales, name_of_table From Future50
	UNION
	SELECT ranking, Restaurant, Sales, name_of_table From Top250
	UNION
	SELECT ranking, Restaurant, (Sales/10000), name_of_table From independence100
) as R 
GROUP BY name_of_table WITH ROLLUP
ORDER BY 'Total Sales';





