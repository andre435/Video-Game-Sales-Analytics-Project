/*📌 Comparação Regional*/

SELECT
    "Platform",
    ROUND(SUM("NA_Sales")::numeric,2) AS vendas_america,
    ROUND(SUM("EU_Sales")::numeric,2) AS vendas_europa,
    ROUND(SUM("JP_Sales")::numeric,2) AS vendas_japao,
    ROUND(SUM("Global_Sales")::numeric,2) AS faturamento
FROM gvendas
GROUP BY "Platform"
ORDER BY faturamento DESC;

/*🌍 Principais Insights
PS2 apresentou o maior domínio global.
Nintendo DS demonstrou forte presença no Japão.
O gênero Action domina na América do Norte.
Jogos Role-Playing apresentam maior força relativa no Japão.
Algumas plataformas apresentam forte dependência regional.*/