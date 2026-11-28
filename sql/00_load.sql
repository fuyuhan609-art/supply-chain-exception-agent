-- 00_load.sql：把 Olist 的 9 个 CSV 导入 olist.duckdb
CREATE OR REPLACE TABLE customers AS
SELECT * FROM read_csv_auto('data/olist_customers_dataset.csv',
                            types={'customer_zip_code_prefix': 'VARCHAR'});
                            
CREATE OR REPLACE TABLE items AS
SELECT * FROM read_csv_auto('data/olist_order_items_dataset.csv');

CREATE OR REPLACE TABLE geolocation AS
SELECT * FROM read_csv_auto('data/olist_geolocation_dataset.csv');

CREATE OR REPLACE TABLE reviews AS
SELECT * FROM read_csv_auto('data/olist_order_reviews_dataset.csv');

CREATE OR REPLACE TABLE orders AS
SELECT * FROM read_csv_auto('data/olist_orders_dataset.csv');

CREATE OR REPLACE TABLE products AS
SELECT * FROM read_csv_auto('data/olist_products_dataset.csv');

CREATE OR REPLACE TABLE sellers AS
SELECT * FROM read_csv_auto('data/olist_sellers_dataset.csv');

CREATE OR REPLACE TABLE category AS
SELECT * FROM read_csv_auto('data/product_category_name_translation.csv');

CREATE OR REPLACE TABLE payments AS
SELECT * FROM read_csv_auto('data/olist_order_payments_dataset.csv');



-- 接着照这个格式写另外 8 张表：
-- customers, order_items, order_payments, order_reviews,
-- products, sellers, geolocation, category_translation