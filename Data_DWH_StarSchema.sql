DELETE FROM DimDate
DELETE FROM DimProduct
DELETE FROM DimStore
DELETE FROM DimPromotion
DELETE FROM DimPayment
DELETE FROM DimCashier
DELETE FROM FactRetailSales

INSERT INTO DimDate (
    Date_id, date, full_date_description, day_of_week, day_number_in_calendar_month, 
    day_number_in_calendar_year, day_number_in_fiscal_month, day_number_in_fiscal_year, 
    last_day_in_month_indicator, calendar_week_ending_date, calendar_week_number_in_year, 
    calendar_month_name, calendar_month_number_in_year, calendar_year_month, 
    calendar_quarter, calendar_year_quarter, calendar_year, fiscal_week, 
    fiscal_week_number_in_year, fiscal_month, fiscal_month_number_in_year, 
    fiscal_year_month, fiscal_quarter, fiscal_year_quarter, fiscal_half_year, fiscal_year, 
    holiday_indicator, weekday_indicator
) VALUES
(20240101, '2024-01-01', 'January 1, 2024', 'Monday', 1, 1, 1, 1, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240102, '2024-01-02', 'January 2, 2024', 'Tuesday', 2, 2, 1, 2, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240103, '2024-01-03', 'January 3, 2024', 'Wednesday', 3, 3, 1, 3, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240104, '2024-01-04', 'January 4, 2024', 'Thursday', 4, 4, 1, 4, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240105, '2024-01-05', 'January 5, 2024', 'Friday', 5, 5, 1, 5, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240106, '2024-01-06', 'January 6, 2024', 'Saturday', 6, 6, 1, 6, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240107, '2024-01-07', 'January 7, 2024', 'Sunday', 7, 7, 1, 7, 'N', '2024-01-07', 1, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 1, 1, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'N'),
(20240108, '2024-01-08', 'January 8, 2024', 'Monday', 8, 8, 2, 8, 'N', '2024-01-14', 2, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 2, 2, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240109, '2024-01-09', 'January 9, 2024', 'Tuesday', 9, 9, 2, 9, 'N', '2024-01-14', 2, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 2, 2, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20240110, '2024-01-10', 'January 10, 2024', 'Wednesday', 10, 10, 2, 10, 'N', '2024-01-14', 2, 'January', 1, '2024-01', 1, '2024-Q1', 2024, 2, 2, 'January', 1, '2024-01', 1, '2024-Q1', 'H1', 2024, 'N', 'Y'),
(20130111, '2013-01-11', 'January 11, 2013', 'Tuesday', 11, 11, 1, 11, 'N', '2013-01-05', 1, 'January', 1, '2013-01', 1, '2013-Q3', 2013, 1, 1, 'January', 1, '2013-01', 1, '2013-Q1', '2013-H1', 2013, 'N', 'Y'),
(20130112, '2013-01-12', 'January 12, 2013', 'Wednesday', 12, 12, 2, 12, 'N', '2013-01-05', 1, 'January', 1, '2013-01', 1, '2013-Q2', 2013, 1, 1, 'January', 1, '2013-01', 1, '2013-Q2', '2013-H1', 2013, 'N', 'Y')

-- Product Dimension
INSERT INTO DimProduct (
    Product_id, sku_number, product_description, brand_description, subcategory_description, 
    category_description, department_number, department_description, package_type_description, 
    package_size, fat_content, diet_type, weight, weight_unit_of_measure, storage_type, 
    shelf_life_type, shelf_width, shelf_height, shelf_depth
) VALUES
(1001, 'SKU001', 'Organic Almond Milk', 'AlmondCo', 'Milk Alternatives', 'Dairy Substitutes', 101, 'Beverages', 'Carton', '1L', 'Low Fat', 'Vegan', 1.00, 'L', 'Refrigerated', 'Short Shelf Life', 10.00, 20.00, 15.00),
(1002, 'SKU002', 'Whole Grain Bread', 'GrainBakery', 'Breads', 'Bakery', 102, 'Bakery', 'Loaf', '500g', 'None', 'Regular', 0.50, 'Kg', 'Room Temperature', 'Medium Shelf Life', 15.00, 10.00, 5.00),
(1003, 'SKU003', 'Almond Butter', 'NutSpread', 'Nut Butters', 'Spreads', 103, 'Spreads', 'Jar', '250g', 'High Fat', 'Regular', 0.25, 'Kg', 'Room Temperature', 'Long Shelf Life', 8.00, 10.00, 6.00),
(1004, 'SKU004', 'Greek Yogurt', 'DairyDelight', 'Yogurts', 'Dairy', 104, 'Dairy', 'Cup', '200g', 'Full Fat', 'Regular', 0.20, 'Kg', 'Refrigerated', 'Short Shelf Life', 6.00, 8.00, 4.00),
(1005, 'SKU005', 'Canned Tuna', 'OceanCatch', 'Seafood', 'Canned Goods', 105, 'Canned Foods', 'Can', '150g', 'Low Fat', 'Regular', 0.15, 'Kg', 'Room Temperature', 'Long Shelf Life', 5.00, 7.00, 4.00),
(1006, 'SKU006', 'Brown Rice', 'GrainHarvest', 'Rice', 'Grains', 106, 'Grains', 'Bag', '1Kg', 'None', 'Regular', 1.00, 'Kg', 'Room Temperature', 'Long Shelf Life', 25.00, 30.00, 15.00),
(1007, 'SKU007', 'Olive Oil', 'PureOlives', 'Oils', 'Cooking Oils', 107, 'Oils', 'Bottle', '500ml', 'Medium Fat', 'Regular', 0.50, 'L', 'Room Temperature', 'Long Shelf Life', 7.00, 15.00, 6.00),
(1008, 'SKU008', 'Granola Bars', 'CrunchySnack', 'Snack Bars', 'Snacks', 108, 'Snacks', 'Box', '12 Bars', 'Medium Fat', 'Regular', 0.50, 'Kg', 'Room Temperature', 'Medium Shelf Life', 20.00, 25.00, 10.00),
(1009, 'SKU009', 'Almond Flour', 'NuttyFlour', 'Flours', 'Baking Ingredients', 109, 'Baking', 'Bag', '500g', 'Low Fat', 'Regular', 0.50, 'Kg', 'Room Temperature', 'Medium Shelf Life', 10.00, 15.00, 8.00),
(1010, 'SKU010', 'Soy Sauce', 'FlavorPlus', 'Sauces', 'Condiments', 110, 'Condiments', 'Bottle', '250ml', 'Low Fat', 'Regular', 0.25, 'L', 'Room Temperature', 'Long Shelf Life', 5.00, 8.00, 4.00),
(1011, 'SKU0011', 'Organic Almond Milk', 'AlmondCo', 'Milk Alternatives', 'Dairy Substitutes', 101, 'Beverages', 'Carton', '1L', 'Low Fat', 'Vegan', 1.00, 'L', 'Refrigerated', 'Short Shelf Life', 10.00, 20.00, 15.00),
(1012, 'SKU0012', 'Granola Bars', 'CrunchySnack', 'Snack Bars', 'Snacks', 108, 'Snacks', 'Box', '12 Bars', 'Medium Fat', 'Regular', 0.50, 'Kg', 'Room Temperature', 'Medium Shelf Life', 20.00, 25.00, 10.00)

-- Store Dimension
INSERT INTO DimStore (
    Store_id, store_number, store_name, store_street_address, store_city, store_county, 
    store_city_state, store_state, store_zip_code, store_manager, store_district, 
    store_region, floor_plan_type, photo_processing_type, financial_service_type, 
    selling_square_footage, total_square_footage, first_open_date, last_remodel_date
) VALUES
(2001, 'ST001', 'Main Street Store', '123 Main St', 'Springfield', 'Sangamon', 'Springfield, IL', 'Illinois', '62701', 'John Doe', 'North District', 'Central Region', 'Standard', 'None', 'None', 5000.00, 6000.00, '2005-03-15', '2018-06-20'),
(2002, 'ST002', 'Elm Street Store', '456 Elm St', 'Oakville', 'Oakland', 'Oakville, CA', 'California', '94016', 'Jane Smith', 'South District', 'Western Region', 'Modern', 'Photo Lab', 'Basic Banking', 7000.00, 8000.00, '2010-07-10', '2022-01-30'),
(2003, 'ST003', 'Maple Avenue Store', '789 Maple Ave', 'Greenville', 'Greene', 'Greenville, TX', 'Texas', '75401', 'Bob Brown', 'East District', 'Southern Region', 'Traditional', 'None', 'ATM', 5500.00, 7000.00, '2015-04-25', '2020-08-15'),
(2004, 'ST004', 'Pine Road Store', '101 Pine Rd', 'Lakeside', 'Lake', 'Lakeside, FL', 'Florida', '32003', 'Alice Johnson', 'West District', 'Eastern Region', 'Contemporary', 'Photo Lab', 'Full Banking', 6200.00, 7400.00, '2008-11-05', '2019-12-10'),
(2005, 'ST005', 'Oak Lane Store', '202 Oak Ln', 'Hilltown', 'Hill', 'Hilltown, OH', 'Ohio', '44101', 'Tom Wilson', 'Central District', 'Midwestern Region', 'Standard', 'None', 'None', 4800.00, 6500.00, '2012-09-20', '2021-03-25'),
(2006, 'ST006', 'Cedar Street Store', '303 Cedar St', 'Riverdale', 'River', 'Riverdale, NY', 'New York', '10001', 'Emily Davis', 'North District', 'Northeastern Region', 'Modern', 'Photo Lab', 'ATM', 5300.00, 6800.00, '2017-05-15', '2022-07-12'),
(2007, 'ST007', 'Willow Way Store', '404 Willow Way', 'Brookside', 'Brook', 'Brookside, PA', 'Pennsylvania', '19001', 'Michael Brown', 'South District', 'Northeastern Region', 'Traditional', 'None', 'Basic Banking', 6000.00, 7500.00, '2009-10-30', '2020-11-05'),
(2008, 'ST008', 'Birch Drive Store', '505 Birch Dr', 'Sunset', 'Sun', 'Sunset, AZ', 'Arizona', '85001', 'Sarah Green', 'East District', 'Western Region', 'Contemporary', 'Photo Lab', 'Full Banking', 6700.00, 8000.00, '2016-12-12', '2022-06-15'),
(2009, 'ST009', 'Spruce Avenue Store', '606 Spruce Ave', 'Highland', 'High', 'Highland, MI', 'Michigan', '48201', 'Chris Black', 'West District', 'Midwestern Region', 'Standard', 'None', 'None', 4900.00, 6700.00, '2011-02-22', '2018-09-30'),
(2010, 'ST010', 'Hickory Lane Store', '707 Hickory Ln', 'Valley', 'Valley', 'Valley, WA', 'Washington', '98001', 'Jessica White', 'Central District', 'Western Region', 'Modern', 'Photo Lab', 'ATM', 5800.00, 7200.00, '2014-06-18', '2021-02-28'),
(2011, 'ST0011', 'Boston Store 1', '123 Main St', 'Boston', 'Suffolk', 'Boston, MA', 'MA', '02101', 'John Doe', 'Boston', 'Northeast', 'Type A', 'Yes', 'Basic', 15000.00, 20000.00, '2010-01-01', '2020-01-01'),
(2012, 'ST0012', 'Boston Store 2', '456 Elm St', 'Boston', 'Suffolk', 'Boston, MA', 'MA', '02102', 'Jane Smith', 'Boston', 'Northeast', 'Type B', 'No', 'Advanced', 12000.00, 18000.00, '2011-02-01', '2019-02-01')

-- Promotion Dimension
INSERT INTO DimPromotion (
    Promotion_id, promotion_code, promotion_name, price_reduction_type, promotion_media_type, 
    ad_type, display_type, coupon_type, ad_media_name, display_provider, 
    promotion_cost, promotion_begin_date, promotion_end_date
) VALUES
(3001, 'PROMO001', 'Summer Sale', 'Percentage Off', 'Online', 'Banner', 'Web', 'Discount', 'Summer Sale Banner', 'AdProvider1', 5000.00, '2024-06-01', '2024-08-31'),
(3002, 'PROMO002', 'Black Friday Deals', 'Fixed Amount Off', 'Print', 'Newspaper', 'In-Store', 'Coupon', 'Black Friday Flyer', 'AdProvider2', 2000.00, '2024-11-25', '2024-11-30'),
(3003, 'PROMO003', 'Holiday Discounts', 'Buy One Get One Free', 'Online', 'Email', 'Web', 'BOGO', 'Holiday Promo Email', 'AdProvider3', 3000.00, '2024-12-01', '2024-12-31'),
(3004, 'PROMO004', 'Winter Clearance', 'Percentage Off', 'TV', 'Commercial', 'In-Store', 'Discount', 'Winter Clearance Commercial', 'AdProvider4', 4500.00, '2024-01-01', '2024-03-31'),
(3005, 'PROMO005', 'Spring Special', 'Fixed Amount Off', 'Online', 'Social Media', 'Web', 'Discount', 'Spring Special Ad', 'AdProvider5', 1500.00, '2024-03-15', '2024-05-31'),
(3006, 'PROMO006', 'Back to School', 'Percentage Off', 'Print', 'Magazine', 'In-Store', 'Coupon', 'Back to School Magazine Ad', 'AdProvider6', 2500.00, '2024-08-01', '2024-09-30'),
(3007, 'PROMO007', 'Valentine’s Day', 'Fixed Amount Off', 'Online', 'Email', 'Web', 'Discount', 'Valentine’s Day Email Ad', 'AdProvider7', 1800.00, '2024-02-01', '2024-02-14'),
(3008, 'PROMO008', 'End of Year Sale', 'Buy One Get One 50% Off', 'TV', 'Commercial', 'In-Store', 'BOGO', 'End of Year Commercial', 'AdProvider8', 6000.00, '2024-12-15', '2024-12-31'),
(3009, 'PROMO009', 'Summer Clearance', 'Fixed Amount Off', 'Online', 'Social Media', 'Web', 'Discount', 'Summer Clearance Ad', 'AdProvider9', 2200.00, '2024-07-01', '2024-08-31'),
(3010, 'PROMO010', 'Customer Appreciation', 'Percentage Off', 'Print', 'Flyer', 'In-Store', 'Discount', 'Customer Appreciation Flyer', 'AdProvider10', 3500.00, '2024-09-01', '2024-09-30'),
(3011, 'PROMO001', 'New Year Sale', 'Percentage', 'TV', 'Seasonal', 'Endcap', 'None', 'Channel 5', 'Display Co.', 5000.00, '2013-01-01', '2013-01-31'),
(3012, 'PROMO002', 'Winter Clearance', 'Amount', 'Online', 'Clearance', 'Shelf', 'Digital', 'Online Ad', 'Digital Displays', 3000.00, '2013-01-01', '2013-01-31')

-- Payment Method Dimension
INSERT INTO DimPayment (
    Payment_id, payment_method_description, payment_method_group
) VALUES
(4001, 'Credit Card', 'Card Payment'),
(4002, 'Debit Card', 'Card Payment'),
(4003, 'Cash', 'Cash Payment'),
(4004, 'Bank Transfer', 'Electronic Payment'),
(4005, 'PayPal', 'Electronic Payment'),
(4006, 'Gift Card', 'Card Payment'),
(4007, 'Apple Pay', 'Mobile Payment'),
(4008, 'Google Pay', 'Mobile Payment'),
(4009, 'Check', 'Paper Payment'),
(4010, 'Cryptocurrency', 'Digital Payment'),
(4011, 'Cryptocurrency', 'Digital Payment'),
(4012, 'Check', 'Paper Payment')


-- Cashier Dimension
INSERT INTO DimCashier (
    Cashier_id, cashier_employee_id, cashier_name, cashier_hire_date, cashier_gender, 
    cashier_address, cashier_zip_code, cashier_phone_number, cashier_email, cashier_department
) VALUES
(5001, 'EMP001', 'Alice Johnson', '2020-01-15', 'Female', '123 Elm St, Springfield', '62701', '555-1234', 'alice.johnson@example.com', 'Sales'),
(5002, 'EMP002', 'Bob Smith', '2019-03-22', 'Male', '456 Oak Rd, Rivertown', '54321', '555-5678', 'bob.smith@example.com', 'Customer Service'),
(5003, 'EMP003', 'Carol Davis', '2021-06-10', 'Female', '789 Pine Ln, Lakeview', '67890', '555-8765', 'carol.davis@example.com', 'Checkout'),
(5004, 'EMP004', 'David Lee', '2018-11-05', 'Male', '101 Maple Ave, Greenfield', '43210', '555-4321', 'david.lee@example.com', 'Sales'),
(5005, 'EMP005', 'Eva Martinez', '2022-02-19', 'Female', '202 Birch Blvd, Hilltop', '98765', '555-6789', 'eva.martinez@example.com', 'Customer Service'),
(5006, 'EMP006', 'Frank Wilson', '2017-07-30', 'Male', '303 Cedar St, Brookside', '34567', '555-3456', 'frank.wilson@example.com', 'Checkout'),
(5007, 'EMP007', 'Grace Taylor', '2020-08-25', 'Female', '404 Cedar Ct, Sunnydale', '23456', '555-4567', 'grace.taylor@example.com', 'Sales'),
(5008, 'EMP008', 'Hank Brown', '2019-12-15', 'Male', '505 Oak Dr, Downtown', '87654', '555-6543', 'hank.brown@example.com', 'Customer Service'),
(5009, 'EMP009', 'Ivy Clark', '2021-05-05', 'Female', '606 Pine St, Westfield', '56789', '555-7890', 'ivy.clark@example.com', 'Checkout'),
(5010, 'EMP010', 'Jack White', '2022-01-12', 'Male', '707 Elm Ct, Seaside', '45678', '555-8901', 'jack.white@example.com', 'Sales'),
(5011, 'EMP011', 'Hank Taylor', '2022-01-12', 'Male', '731 Elm Ct, Downtown', '13058', '555-8542', 'Hank.Taylor@example.com', 'Sales'),
(5012, 'EMP012', 'Taylor Hank', '2022-01-12', 'Male', '787 Elm Ct, Seaside', '49738', '555-6201', 'Taylor.Hank@example.com', 'Sales')

-- Retail Sales Fact
INSERT INTO FactRetailSales (
    transaction_id, Date_id, Product_id, Store_id, Promotion_id, Payment_id, Cashier_id, 
    POS_Transaction, Sales_Quantity, Regular_Unit_Price, Discount_Unit_Price, Net_Unit_Price, 
    Extended_Discount_Dollar_Amount, Extended_Sales_Dollar_Amount, Extended_Cost_Dollar_Amount, 
    Extended_Gross_Profit_Dollar_Amount
) VALUES
(1, 20240101, 1001, 2001, 3001, 4001, 5001, 123456, 10, 20.00, 15.00, 18.00, 50.00, 180.00, 100.00, 80.00),
(2, 20240102, 1002, 2002, 3002, 4002, 5002, 123457, 5, 35.00, 30.00, 32.00, 25.00, 160.00, 90.00, 70.00),
(3, 20240103, 1003, 2003, 3003, 4003, 5003, 123458, 8, 25.00, 20.00, 22.00, 40.00, 176.00, 85.00, 91.00),
(4, 20240104, 1004, 2004, 3004, 4004, 5004, 123459, 12, 10.00, 8.00, 9.00, 24.00, 108.00, 60.00, 48.00),
(5, 20240105, 1005, 2005, 3005, 4005, 5005, 123460, 7, 50.00, 45.00, 47.00, 35.00, 329.00, 200.00, 129.00),
(6, 20240106, 1006, 2006, 3006, 4006, 5006, 123461, 15, 22.00, 17.00, 19.00, 75.00, 285.00, 150.00, 135.00),
(7, 20240107, 1007, 2007, 3007, 4007, 5007, 123462, 9, 40.00, 35.00, 37.00, 45.00, 333.00, 180.00, 153.00),
(8, 20240108, 1008, 2008, 3008, 4008, 5008, 123463, 11, 30.00, 25.00, 27.00, 55.00, 297.00, 165.00, 132.00),
(9, 20240109, 1009, 2009, 3010, 4009, 5009, 123464, 6, 15.00, 10.00, 12.00, 30.00, 72.00, 45.00, 27.00),
(10, 20240110, 1010, 2010, 3011, 4010, 5010, 123465, 14, 28.00, 22.00, 24.00, 56.00, 336.00, 168.00, 168.00),
(11, 20130111, 1011, 2011, 3011, 4011, 5011, 123462, 10, 20.00, 15.00, 18.00, 50.00, 180.00, 100.00, 80.00),
(12, 20130112, 1012, 2012, 3012, 4012, 5012, 123463, 5, 35.00, 30.00, 32.00, 25.00, 160.00, 90.00, 70.00);



