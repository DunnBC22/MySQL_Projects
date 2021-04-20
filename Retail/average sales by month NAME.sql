SELECT 
    MONTHNAME(SA.salesWeek) AS 'Month',
    ST.storeType,
    ROUND(AVG(SA.weeklySalesAmt), 2) AS 'Ave. Weekly Sales'
FROM
    Sales AS SA
        LEFT JOIN
    Stores AS ST ON SA.storeID = ST.storeID
GROUP BY (ST.storeType), MONTHNAME(SA.salesWeek)
ORDER BY AVG(SA.weeklySalesAmt) desc;