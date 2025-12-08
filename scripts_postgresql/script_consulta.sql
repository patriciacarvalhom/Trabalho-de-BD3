SELECT 
    Ninja.id_ninja,
    Vila.id_vila,
    tm.id_time,
    Missao.id_missao,
    COUNT(*) OVER (PARTITION BY Ninja.id_ninja, Vila.id_vila) AS total_missoes,
    ROUND(CAST(1 AS NUMERIC) / COUNT(*) OVER (PARTITION BY Ninja.id_ninja, Vila.id_vila) * 100, 2) AS pct_s_ninja
FROM Ninja
INNER JOIN Vila ON Ninja.id_vila = Vila.id_vila
INNER JOIN Ninja_Time nt ON Ninja.id_ninja = nt.id_ninja
INNER JOIN Time_Missao tm ON nt.id_time = tm.id_time
INNER JOIN Missao ON tm.id_missao = Missao.id_missao
WHERE Missao.ranking = 'S'
ORDER BY Ninja.id_ninja, tm.id_time, Missao.id_missao;