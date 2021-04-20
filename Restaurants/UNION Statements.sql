/* UNION */

SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units 
From (
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Future50
UNION
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Top250
) as R 
ORDER BY ranking ;

/* UNION ALL */
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, lpad(format(YOY_Units,2),8,' ') as 'YOY_Units' 
From (
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Future50
UNION ALL
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Top250
) as R 
ORDER BY ranking;

/* Using GROUP BY with a UNION*/
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, lpad(format(YOY_Units,2),8,' ') as 'YOY_Units' 
From (
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Future50
UNION ALL
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Top250
) as R
WHERE Restaurant LIKE 'C%' OR Restaurant LIKE 'S%';

SELECT ranking, Restaurant, Sales, YOY_Sales, Units, lpad(format(YOY_Units,2),8,' ') as 'YOY_Units' 
From (
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Future50
UNION ALL
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Top250
) as R
WHERE YOY_Sales>=10
ORDER BY YOY_Sales desc;

SELECT ranking, Restaurant, Sales, YOY_Sales, Units, lpad(format(YOY_Units,2),8,' ') as 'YOY_Units' 
From (
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Future50
UNION ALL
SELECT ranking, Restaurant, Sales, YOY_Sales, Units, YOY_Units From Top250
) as R
WHERE YOY_Units>=10
ORDER BY YOY_Units desc;
