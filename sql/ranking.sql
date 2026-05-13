/*📊 1. Ranking das plataformas usando Window Function
🎯 Objetivo

Rankear plataformas por faturamento global.*/

SELECT
    "Platform",
    ROUND(SUM("Global_Sales")::numeric,2) AS faturamento,

    RANK() OVER(
        ORDER BY SUM("Global_Sales") DESC
    ) AS ranking

FROM gvendas

GROUP BY "Platform";