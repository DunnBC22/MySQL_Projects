SELECT 
    ST.StoreID,
    MIN(F.temperature) AS 'Min Temp',
    MAX(F.temperature) AS 'Max Temp',
    ROUND(AVG(F.temperature),2) AS 'AVG Temp',
    MIN(F.fuelPrice) AS 'Min Fuel Price',
    MAX(F.fuelPrice) AS 'Max Fuel Price',
    ROUND(AVG(F.fuelPrice),3) AS 'AVG Fuel Price'
FROM
    Stores AS ST
        INNER JOIN
    Features AS F ON ST.storeID = F.storeID
GROUP BY ST.storeID;