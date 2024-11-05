----------------------------------------------------------------------------------------------------------------------------------
-- Questão 1:
----------------------------------------------------------------------------------------------------------------------------------
/*   Escreva uma consulta SQL que retorne o nome dos clientes que realizaram pedidos com valor total superior a R$ 1000,00
 e a data de nascimento desses clientes. 
	Ordene o resultado por data de nascimento em ordem decrescente.	*/
----------------------------------------------------------------------------------------------------------------------------------

USE Loja; -- Seleciona o bando de dados Loja criado anteriormente.

----------------------------------------------------------------------------------------------------------------------------------
-- Consulta
----------------------------------------------------------------------------------------------------------------------------------

SELECT c.nome, c.data_nascimento,                  -- Seleciona o nome e a data de nascimento dos clientes.
p.valor_total                                      -- Seleciona e exibe também o valor total para estas consultas.
FROM clientes c                                    -- c é uma subconsulta de clientes e p de produtos.
JOIN pedidos p ON c.id_cliente = p.id_cliente      -- Relaciona clientes e seus pedidos efetuando um JOIN entre eles
                                                   -- com base no id_cliente.
WHERE p.valor_total > 1000.00                      -- Filtra apenas os pedidos cujo valor total seja superior a R$ 1000,00.
ORDER BY c.data_nascimento DESC;                   -- Ordena o resultado pela data de nascimento em ordem decrescente.

----------------------------------------------------------------------------------------------------------------------------------
