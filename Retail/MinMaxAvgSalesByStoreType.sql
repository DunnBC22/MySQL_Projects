SELECT 
    COALESCE(`ST`.`storeType`, 'Total') AS `Store Type`, 
    COUNT(`ST`.`storeType`) AS `Count`,
    round(AVG(`SA`.`weeklySalesAmt`), 2) AS `Average Weekly Sales`,
    round(MIN(`SA`.`weeklySalesAmt`), 2) AS `Minimum Weekly Sales`,
    round(MAX(`SA`.`weeklySalesAmt`), 2) AS `Maximum Weekly Sales`,
    round(MAX(`SA`.`weeklySalesAmt`)-(MIN(`SA`.`weeklySalesAmt`)),2) AS `Range`
FROM
    (`stores` `ST`
    LEFT JOIN `sales` `SA` ON ((`ST`.`storeID` = `SA`.`storeID`)))
GROUP BY `ST`.`storeType` WITH ROLLUP;
