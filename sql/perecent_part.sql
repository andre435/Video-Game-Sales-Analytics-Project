/*📊 2. Participação percentual de mercado
🎯 Objetivo

Descobrir quanto cada plataforma representa do mercado global.*/

SELECT
    "Platform",

    ROUND(SUM("Global_Sales")::numeric,2) AS faturamento,

    ROUND(
        (
            SUM("Global_Sales")
            /
            SUM(SUM("Global_Sales")) OVER()
        )::numeric * 100,
        2
    ) AS market_share

FROM gvendas

GROUP BY "Platform"

ORDER BY market_share DESC;