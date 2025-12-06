SELECT Ninja.nome AS nome_ninja,
    COUNT(tm.id_missao) AS total_missoes,
    SUM(CASE WHEN Missao.ranking = 'S' THEN 1 ELSE 0 END) AS missoes_rank_s,
    ROUND(
        CAST(SUM(CASE WHEN Missao.ranking = 'S' THEN 1 ELSE 0 END) AS NUMERIC) / 
        NULLIF(COUNT(tm.id_missao), 0) * 100, 2
    ) AS porcentagem_rank_s
FROM Ninja 
INNER JOIN Ninja_Time nt ON Ninja.id_ninja = nt.id_ninja
INNER JOIN Time_Missao tm ON nt.id_time = tm.id_time
INNER JOIN Missao ON tm.id_missao = Missao.id_missao
GROUP BY Ninja.nome;
