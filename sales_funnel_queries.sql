CREATE DATABASE sales_funnel_db;
USE sales_funnel_db;
CREATE TABLE sales_data (
    lead_id INT,
    stage VARCHAR(20),
    region VARCHAR(50),
    created_date DATE
);
INSERT INTO sales_data VALUES
(1,'Lead','South','2024-01-05'),
(2,'Opportunity','South','2024-01-10'),
(3,'Won','South','2024-01-15'),
(4,'Lead','North','2024-02-01'),
(5,'Opportunity','North','2024-02-07'),
(6,'Lead','East','2024-02-10'),
(7,'Won','East','2024-02-20'),
(8,'Lead','West','2024-03-01'),
(9,'Opportunity','West','2024-03-08'),
(10,'Won','West','2024-03-15');
SELECT * FROM sales_data;
SELECT 
    region,
    stage,
    COUNT(*) AS stage_count
FROM sales_data
GROUP BY region, stage;
