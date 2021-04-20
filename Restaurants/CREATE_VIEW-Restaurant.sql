CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `restaurant`.`restaurants_sales_and_units_only` 
AS 
select 
`restaurant`.`Top250`.`Restaurant` AS `Restaurant`,
`restaurant`.`Top250`.`Sales` AS `Sales`,
`restaurant`.`Top250`.`Units` AS `Units` 
from `restaurant`.`Top250`;
