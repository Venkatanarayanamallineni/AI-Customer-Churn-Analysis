-- Churn by tenure group
SELECT
  Tenure_Group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customers
GROUP BY Tenure_Group;
