-- weekly sales dollar volume by promotion for the snacks category during January 2013 for stores in the Boston district.
SELECT 
    p.Promotion_id,
    p.promotion_name,
    DATEPART(WEEK, d.date) AS week_number,
    SUM(f.Extended_Sales_Dollar_Amount) AS total_sales_dollar_volume
FROM 
    FactRetailSales f
JOIN 
    DimDate d ON f.Date_id = d.Date_id
JOIN 
    DimProduct pr ON f.Product_id = pr.Product_id
JOIN 
    DimStore s ON f.Store_id = s.Store_id
JOIN 
    DimPromotion p ON f.Promotion_id = p.Promotion_id
WHERE 
    pr.category_description = 'Snacks'
    AND d.calendar_month_number_in_year = 1
    AND d.calendar_year = 2013
    AND s.store_district = 'Boston'
GROUP BY 
    p.Promotion_id,
    p.promotion_name,
    DATEPART(WEEK, d.date)
ORDER BY 
    p.Promotion_id,
    week_number


-- Monthly Sales Extended_Sales_Dollar_Amount by Category for January 2013 in Boston District
SELECT 
    pr.category_description,
	SUM(f.Extended_Sales_Dollar_Amount) AS total_sales_dollar_volume,
	d.calendar_month_number_in_year,
    d.calendar_year
FROM 
    FactRetailSales f
JOIN 
    DimDate d ON f.Date_id = d.Date_id
JOIN 
    DimProduct pr ON f.Product_id = pr.Product_id
JOIN 
    DimStore s ON f.Store_id = s.Store_id
WHERE 
    d.calendar_month_number_in_year = 1
    AND d.calendar_year = 2013
    AND s.store_district = 'Boston'
GROUP BY 
    pr.category_description,
    d.calendar_month_number_in_year,
    d.calendar_year
ORDER BY 
    total_sales_dollar_volume DESC


-- Weekly Average Sales Price by Product for January 2013 in the Boston District
SELECT 
    pr.product_id,
    pr.product_description,
    DATEPART(WEEK, d.date) AS week_number,
    AVG(f.Extended_Sales_Dollar_Amount / f.Sales_Quantity) AS avg_sales_price
FROM 
    FactRetailSales f
JOIN 
    DimDate d ON f.Date_id = d.Date_id
JOIN 
    DimProduct pr ON f.Product_id = pr.Product_id
JOIN 
    DimStore s ON f.Store_id = s.Store_id
WHERE 
    d.calendar_month_number_in_year = 1
    AND d.calendar_year = 2013
    AND s.store_district = 'Boston'
GROUP BY 
    pr.product_id,
    pr.product_description,
    DATEPART(WEEK, d.date)
ORDER BY 
    pr.product_id,
    week_number


--  Quarterly Sales Dollar Volume by Promotion for Snacks Category in 2013 in the Boston District
SELECT 
    p.Promotion_id,
    p.promotion_name,
    calendar_quarter,
    SUM(f.Extended_Sales_Dollar_Amount) AS total_sales_dollar_volume
FROM 
    FactRetailSales f
JOIN 
    DimDate d ON f.Date_id = d.Date_id
JOIN 
    DimProduct pr ON f.Product_id = pr.Product_id
JOIN 
    DimStore s ON f.Store_id = s.Store_id
JOIN 
    DimPromotion p ON f.Promotion_id = p.Promotion_id
WHERE 
    pr.category_description = 'Snacks'
    AND d.calendar_year = 2013
    AND s.store_district = 'Boston'
GROUP BY 
    p.Promotion_id,
    p.promotion_name,
	calendar_quarter
ORDER BY 
p.Promotion_id,
calendar_quarter;

