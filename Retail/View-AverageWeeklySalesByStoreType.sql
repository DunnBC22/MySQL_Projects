CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `retail`.`avgsalesbystoretype` AS
    SELECT 
        `ST`.`storeType` AS `Store Type`,
        AVG(`SA`.`weeklySalesAmt`) AS `Average Weekly Sales`
    FROM
        (`retail`.`stores` `ST`
        LEFT JOIN `retail`.`sales` `SA` ON ((`ST`.`storeID` = `SA`.`storeID`)))
    GROUP BY `ST`.`storeType`