/*📊 3. Média móvel de vendas por ano
🎯 Objetivo

Analisar tendência de vendas.*/

SELECT
    "Year",

    ROUND(SUM("Global_Sales")::numeric,2) AS vendas,

    ROUND(
        AVG(SUM("Global_Sales"))
        OVER(
            ORDER BY "Year"
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        )::numeric,
        2
    ) AS media_movel

FROM gvendas

WHERE "Year" IS NOT NULL

GROUP BY "Year"

ORDER BY "Year";