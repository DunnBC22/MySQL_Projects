SELECT 
    F.isHoliday AS 'Is Holiday?',
    ROUND(AVG(F.temperature), 2) AS 'Avg Temp',
    ROUND(AVG(F.fuelPrice), 2) AS 'AVG Fuel Price',
    ROUND(AVG(F.CPI), 2) AS 'AVG CPI',
    ROUND(AVG(F.unemployment), 2) AS 'AVG Unemployment',
    ROUND(AVG(ST.size),0) AS 'AVG Store Size'
FROM
    Features AS F
        INNER JOIN
    Stores AS ST ON F.storeID = ST.storeID
GROUP BY F.isHoliday;