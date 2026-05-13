/*📊 Top jogo de cada plataforma
🎯 Objetivo*/

Encontrar o jogo mais vendido dentro de cada plataforma.

WITH game_rank AS (

    SELECT
        "Platform",
        "Name",

        ROUND(SUM("Global_Sales")::numeric,2) AS faturamento,

        ROW_NUMBER() OVER(
            PARTITION BY "Platform"
            ORDER BY SUM("Global_Sales") DESC
        ) AS ranking

    FROM gvendas

    GROUP BY "Platform", "Name"
)

SELECT *

FROM game_rank

WHERE ranking = 1;