SELECT 
    "Genre",
    ROUND(SUM("Global_Sales")::numeric,2) AS faturamento
FROM gvendas
GROUP BY "Genre"
ORDER BY faturamento DESC;

