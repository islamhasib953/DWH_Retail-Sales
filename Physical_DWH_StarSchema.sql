-- Date Dimension
CREATE TABLE DimDate (
    Date_id INT PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    full_date_description VARCHAR(50) NOT NULL,
    day_of_week VARCHAR(10) NOT NULL,
    day_number_in_calendar_month INT NOT NULL,
    day_number_in_calendar_year INT NOT NULL,
    day_number_in_fiscal_month INT NOT NULL,
    day_number_in_fiscal_year INT NOT NULL,
    last_day_in_month_indicator VARCHAR(1) NOT NULL,
    calendar_week_ending_date DATE NOT NULL,
    calendar_week_number_in_year INT NOT NULL,
    calendar_month_name VARCHAR(15) NOT NULL,
    calendar_month_number_in_year INT NOT NULL,
    calendar_year_month VARCHAR(7) NOT NULL,
    calendar_quarter INT NOT NULL,
    calendar_year_quarter VARCHAR(7) NOT NULL,
    calendar_year INT NOT NULL,
    fiscal_week INT NOT NULL,
    fiscal_week_number_in_year INT NOT NULL,
    fiscal_month VARCHAR(15) NOT NULL,
    fiscal_month_number_in_year INT NOT NULL,
    fiscal_year_month VARCHAR(7) NOT NULL,
    fiscal_quarter INT NOT NULL,
    fiscal_year_quarter VARCHAR(7) NOT NULL,
    fiscal_half_year VARCHAR(7) NOT NULL,
    fiscal_year INT NOT NULL,
    holiday_indicator VARCHAR(1) NOT NULL,
    weekday_indicator VARCHAR(1) NOT NULL
)

-- Product Dimension
CREATE TABLE DimProduct (
    Product_id INT PRIMARY KEY NOT NULL,
    sku_number VARCHAR(50)  NOT NULL,
    product_description VARCHAR(255),
    brand_description VARCHAR(100),
    subcategory_description VARCHAR(100),
    category_description VARCHAR(100),
    department_number INT NOT NULL,
    department_description VARCHAR(100),
    package_type_description VARCHAR(50),
    package_size VARCHAR(50) NOT NULL,
    fat_content VARCHAR(50) NOT NULL,
    diet_type VARCHAR(50) NOT NULL,
    weight DECIMAL(10, 2) NOT NULL,
    weight_unit_of_measure VARCHAR(20) NOT NULL,
    storage_type VARCHAR(50) NOT NULL,
    shelf_life_type VARCHAR(50) NOT NULL,
    shelf_width DECIMAL(10, 2) NOT NULL,
    shelf_height DECIMAL(10, 2) NOT NULL,
    shelf_depth DECIMAL(10, 2) NOT NULL
)

-- Store Dimension
CREATE TABLE DimStore (
    Store_id INT PRIMARY KEY NOT NULL,
    store_number VARCHAR(50)  NOT NULL,
    store_name VARCHAR(100) NOT NULL,
    store_street_address VARCHAR(255) NOT NULL,
    store_city VARCHAR(100) NOT NULL,
    store_county VARCHAR(100) NOT NULL,
    store_city_state VARCHAR(100) NOT NULL,
    store_state VARCHAR(50) NOT NULL,
    store_zip_code VARCHAR(20) NOT NULL,
    store_manager VARCHAR(100) NOT NULL,
    store_district VARCHAR(100) NOT NULL,
    store_region VARCHAR(100) NOT NULL,
    floor_plan_type VARCHAR(50),
    photo_processing_type VARCHAR(50),
    financial_service_type VARCHAR(50),
    selling_square_footage DECIMAL(10, 2),
    total_square_footage DECIMAL(10, 2),
    first_open_date DATE NOT NULL,
    last_remodel_date DATE NOT NULL
)

-- Promotion Dimension
CREATE TABLE DimPromotion (
    Promotion_id INT PRIMARY KEY NOT NULL,
    promotion_code VARCHAR(50)  NOT NULL,
    promotion_name VARCHAR(100) NOT NULL,
    price_reduction_type VARCHAR(50) NOT NULL,
    promotion_media_type VARCHAR(50) NOT NULL,
    ad_type VARCHAR(50) NOT NULL,
    display_type VARCHAR(50) NOT NULL,
    coupon_type VARCHAR(50) NOT NULL,
    ad_media_name VARCHAR(100) NOT NULL,
    display_provider VARCHAR(100) NOT NULL,
    promotion_cost DECIMAL(10, 2) NOT NULL,
    promotion_begin_date DATE NOT NULL,
    promotion_end_date DATE NOT NULL
)

-- Payment Method Dimension
CREATE TABLE DimPayment (
    Payment_id INT PRIMARY KEY NOT NULL,
    payment_method_description VARCHAR(100) NOT NULL,
    payment_method_group VARCHAR(50) NOT NULL
)

-- Cashier Dimension
CREATE TABLE DimCashier (
    Cashier_id INT PRIMARY KEY NOT NULL,
    cashier_employee_id VARCHAR(50)  NOT NULL,
    cashier_name VARCHAR(100) NOT NULL,
    cashier_hire_date DATE NOT NULL,
    cashier_gender VARCHAR(10) NOT NULL,
    cashier_address VARCHAR(255) NOT NULL,
    cashier_zip_code VARCHAR(20) NOT NULL,
    cashier_phone_number VARCHAR(20) NOT NULL,
    cashier_email VARCHAR(100) NOT NULL,
    cashier_department VARCHAR(50) NOT NULL
)

-- Retail Sales Fact
CREATE TABLE FactRetailSales (
    transaction_id INT PRIMARY KEY NOT NULL, --  identifier for each transaction
    Date_id INT NOT NULL,
    Product_id INT NOT NULL,
    Store_id INT NOT NULL,
	Promotion_id int NOT NULL,
	Cashier_id int NOT NULL,
    Payment_id int NOT NULL,
    POS_Transaction int NOT NULL, -- Degenerate Dimension
    Sales_Quantity int NOT NULL,
    Regular_Unit_Price DECIMAL(10, 2) NOT NULL,
    Discount_Unit_Price DECIMAL(10, 2) NOT NULL,
    Net_Unit_Price DECIMAL(10, 2) NOT NULL,
    Extended_Discount_Dollar_Amount DECIMAL(10, 2) NOT NULL,
    Extended_Sales_Dollar_Amount DECIMAL(10, 2) NOT NULL,
    Extended_Cost_Dollar_Amount DECIMAL(10, 2) NOT NULL,
    Extended_Gross_Profit_Dollar_Amount DECIMAL(10, 2) NOT NULL,

    -- Foreign Key Constraints
    FOREIGN KEY (Date_id) REFERENCES DimDate (Date_id),
    FOREIGN KEY (Product_id) REFERENCES DimProduct(Product_id),
    FOREIGN KEY (Store_id) REFERENCES DimStore(Store_id),
    FOREIGN KEY (Promotion_id) REFERENCES DimPromotion(Promotion_id),
    FOREIGN KEY (Cashier_id) REFERENCES DimCashier(Cashier_id),
    FOREIGN KEY (Payment_id) REFERENCES DimPayment(Payment_id)
);




