----------------------------------------------------------------------------------------------------------------------------------
-- Questão 2:
----------------------------------------------------------------------------------------------------------------------------------
/*   Escreva uma consulta SQL que calcule o valor total vendido de cada produto, ordenando os resultados do produto mais vendido
 para o menos vendido.	*/
----------------------------------------------------------------------------------------------------------------------------------

USE Loja; -- Seleciona o bando de dados Loja criado anteriormente.

----------------------------------------------------------------------------------------------------------------------------------
-- Consulta
----------------------------------------------------------------------------------------------------------------------------------


SELECT                                             -- Exibe.
    p.nome_produto,                                -- Nome do(s) produtos e.
    SUM(i.quantidade * i.valor_unitario)           -- A soma da quantidade x Preço do produto.
    AS valor_total_vendido                         -- Atribuindo o resultado deste calculo a valor_total_vendido.
FROM                                               -- De.
    produtos p                                     -- Subconsulta p da tabela produtos.
JOIN                                               -- Junção entre as tabelas produtos e items_pedido.
    items_pedido i ON p.id_produto = i.id_produto  -- Com base no id do produto.
GROUP BY                                           -- Agrupando por.
    p.nome_produto                                 -- Nome do produto.
ORDER BY                                           -- Ordenado por.
    valor_total_vendido DESC;                      -- valor_total_vendido em ordem decrescente.
    
----------------------------------------------------------------------------------------------------------------------------------
