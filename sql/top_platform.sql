SELECT 
    "Platform",
    ROUND(SUM("Global_Sales")::numeric,2) AS faturamento
FROM gvendas
GROUP BY "Platform"
ORDER BY faturamento DESC
LIMIT 10;