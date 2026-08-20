SELECT 
    b.`Employee Name`,
    b.`New Role2`,
    b.`New Budget`,
    -- Aggregating revenue
    COALESCE(rev.Total_Brokerage, 0) AS Total_Brokerage,
    COALESCE(rev.Total_Fees, 0) AS Total_Fees,
    -- Aggregating activity
    COALESCE(act.Total_Meetings, 0) AS Total_Meetings,
    COALESCE(opp.Total_Opps, 0) AS Total_Opportunities
FROM `Individual Budgets` b
-- Subquery for Revenue to avoid data duplication errors
LEFT JOIN (
    SELECT 
        `Account Exe ID`, 
        SUM(CASE WHEN `revenue_transaction_type` = 'Brokerage' THEN Amount ELSE 0 END) as Total_Brokerage,
        SUM(CASE WHEN `revenue_transaction_type` = 'Fees' THEN Amount ELSE 0 END) as Total_Fees
    FROM (
        SELECT `Account Exe ID`, Amount, 'Brokerage' as revenue_transaction_type FROM brokerage
        UNION ALL
        SELECT `Account Exe ID`, Amount, 'Fees' as revenue_transaction_type FROM fees
    ) combined_rev
    GROUP BY `Account Exe ID`
) rev ON b.`Account Exe ID` = rev.`Account Exe ID`
-- Subquery for Meetings
LEFT JOIN (
    SELECT `Account Exe ID`, COUNT(*) as Total_Meetings 
    FROM meeting 
    GROUP BY `Account Exe ID`
) act ON b.`Account Exe ID` = act.`Account Exe ID`
-- Subquery for Opportunities (Note the lowercase 'd' in Id)
LEFT JOIN (
    SELECT `Account Exe Id`, COUNT(*) as Total_Opps 
    FROM Opportunity 
    GROUP BY `Account Exe Id`
) opp ON b.`Account Exe ID` = opp.`Account Exe Id`;
                                              /*1. No. of Invoices by Account Executive*/
SELECT 
    `Account Executive`, 
    COUNT(`invoice_number`) AS Total_Invoices
FROM `invoice`
GROUP BY `Account Executive`
ORDER BY Total_Invoices DESC;
                                              /*2. Yearly Meeting Count*/
SELECT 
    YEAR(STR_TO_DATE(`meeting_date`, '%m/%d/%Y')) AS Meeting_Year, 
    COUNT(*) AS Total_Meetings
FROM `meeting`
GROUP BY Meeting_Year
ORDER BY Meeting_Year;
                                             /*3. Stage Funnel by Revenue*/
SELECT 
    `stage`, 
    SUM(`revenue_amount`) AS Total_Revenue
FROM `Opportunity`
GROUP BY `stage`
ORDER BY Total_Revenue DESC;
                                      /*4. No. of Meetings by Account Executive*/
SELECT 
    `Account Executive`, 
    COUNT(*) AS No_of_Meetings
FROM `meeting`
GROUP BY `Account Executive`
ORDER BY No_of_Meetings DESC;
                                          /*5. Top 10 Open Opportunities*/
SELECT 
    `opportunity_name`, 
    `revenue_amount`, 
    `stage`, 
    `Account Executive`
FROM `Opportunity`
WHERE `stage` NOT IN ('Closed Won', 'Closed Lost')
ORDER BY `revenue_amount` DESC
LIMIT 10;
                                                 /*Cross Sell Performance*/
SELECT 
    b.`Account Exe ID`,
    b.`Employee Name`,
    b.`Cross sell bugdet` AS Target,
    COALESCE(ach.Total_Achieved, 0) AS Achieve,
    COALESCE(inv.Invoice_Count, 0) AS Invoice
FROM `Individual Budgets` b
LEFT JOIN (
    SELECT `Account Exe ID`, SUM(Amount) AS Total_Achieved
    FROM (
        SELECT `Account Exe ID`, Amount FROM brokerage WHERE income_class = 'Cross Sell'
        UNION ALL
        SELECT `Account Exe ID`, Amount FROM fees WHERE income_class = 'Cross Sell'
    ) combined
    GROUP BY `Account Exe ID`
) ach ON b.`Account Exe ID` = ach.`Account Exe ID`
LEFT JOIN (
    SELECT `Account Exe ID`, COUNT(invoice_number) AS Invoice_Count
    FROM invoice
    WHERE income_class = 'Cross Sell'
    GROUP BY `Account Exe ID`
) inv ON b.`Account Exe ID` = inv.`Account Exe ID`
ORDER BY Achieve DESC;
												/*New Business Performance*/
SELECT 
    b.`Account Exe ID`,
    b.`Employee Name`,
    b.`New Budget` AS Target,
    COALESCE(ach.Total_Achieved, 0) AS Achieve,
    COALESCE(inv.Invoice_Count, 0) AS Invoice
FROM `Individual Budgets` b
LEFT JOIN (
    SELECT `Account Exe ID`, SUM(Amount) AS Total_Achieved
    FROM (
        SELECT `Account Exe ID`, Amount FROM brokerage WHERE income_class = 'New'
        UNION ALL
        SELECT `Account Exe ID`, Amount FROM fees WHERE income_class = 'New'
    ) combined
    GROUP BY `Account Exe ID`
) ach ON b.`Account Exe ID` = ach.`Account Exe ID`
LEFT JOIN (
    SELECT `Account Exe ID`, COUNT(invoice_number) AS Invoice_Count
    FROM invoice
    WHERE income_class = 'New'
    GROUP BY `Account Exe ID`
) inv ON b.`Account Exe ID` = inv.`Account Exe ID`
ORDER BY Achieve DESC;
                                                /* Renewal Performance*/
SELECT 
    b.`Account Exe ID`,
    b.`Employee Name`,
    b.`Renewal Budget` AS Target,
    COALESCE(ach.Total_Achieved, 0) AS Achieve,
    COALESCE(inv.Invoice_Count, 0) AS Invoice
FROM `Individual Budgets` b
LEFT JOIN (
    SELECT `Account Exe ID`, SUM(Amount) AS Total_Achieved
    FROM (
        SELECT `Account Exe ID`, Amount FROM brokerage WHERE income_class = 'Renewal'
        UNION ALL
        SELECT `Account Exe ID`, Amount FROM fees WHERE income_class = 'Renewal'
    ) combined
    GROUP BY `Account Exe ID`
) ach ON b.`Account Exe ID` = ach.`Account Exe ID`
LEFT JOIN (
    SELECT `Account Exe ID`, COUNT(invoice_number) AS Invoice_Count
    FROM invoice
    WHERE income_class = 'Renewal'
    GROUP BY `Account Exe ID`
) inv ON b.`Account Exe ID` = inv.`Account Exe ID`
ORDER BY Achieve DESC;