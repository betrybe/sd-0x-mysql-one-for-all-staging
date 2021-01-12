CREATE VIEW faturamento_atual AS
SELECT MIN(plan.value) AS `faturamento_minimo`,
MAX(plan.value) AS `faturamento_maximo`,
ROUND(AVG(plan.value), 2) AS `faturamento_medio`,
SUM(plan.value) AS `faturamento_total`
FROM users AS user 
JOIN plans AS plan ON user.plan_id = plan.plan_id;