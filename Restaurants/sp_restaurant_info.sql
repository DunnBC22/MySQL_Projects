CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_restaurant_info`(IN id INT)
BEGIN
	SELECT Restaurant, Sales, YOY_Sales, Units, YOY_Units, Segment_Category
    FROM TOP250
    WHERE ranking=id;
END