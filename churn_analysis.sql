CREATE DATABASE telco_churn;
USE telco_churn;
CREATE TABLE customers (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(30),
    MonthlyCharges FLOAT,
    TotalCharges VARCHAR(20),
    Churn VARCHAR(5)
);
SELECT COUNT(*) FROM customers;
-- Overall churn rate
SELECT Churn, COUNT(*) AS total, 
       ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM customers),2) AS percentage
FROM customers
GROUP BY Churn;
-- Churn by contract type
SELECT Contract, Churn, COUNT(*) AS total
FROM customers
GROUP BY Contract, Churn
ORDER BY Contract;
-- Churn by tenure buckets
SELECT 
  CASE 
    WHEN tenure <= 12 THEN '0-1 year'
    WHEN tenure <= 24 THEN '1-2 years'
    WHEN tenure <= 48 THEN '2-4 years'
    ELSE '4+ years'
  END AS tenure_group,
  Churn, COUNT(*) AS total
FROM customers
GROUP BY tenure_group, Churn
ORDER BY tenure_group;
-- Average monthly charges: churned vs not
SELECT Churn, AVG(MonthlyCharges) AS avg_monthly_charge
FROM customers
GROUP BY Churn;
