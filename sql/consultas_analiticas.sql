

-- 1. Modalidades mais procuradas

SELECT 
    t2.nome,
    COUNT(*) AS total_visitantes
FROM visitantes AS t1
LEFT JOIN modalidades AS t2
    ON t1.modalidade_id = t2.id_modalidade
GROUP BY t2.nome
ORDER BY COUNT(*) DESC;


-- 2. Quantidade de matrículas por consultor

SELECT 
    t2.nome,
    COUNT(*) AS matriculas
FROM visitantes AS t1
LEFT JOIN consultores AS t2
    ON t1.consultor_id = t2.id_consultor
WHERE matriculou = TRUE
GROUP BY t2.nome
ORDER BY matriculas DESC;