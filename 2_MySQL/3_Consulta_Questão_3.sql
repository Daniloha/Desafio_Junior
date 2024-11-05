----------------------------------------------------------------------------------------------------------------------------------
-- Questão 3:
----------------------------------------------------------------------------------------------------------------------------------
/*   Imagine que você precisa adicionar um campo à tabela pedidos para indicar se o pedido foi enviado ou não.
	 Escreva uma query SQL para adicionar um novo campo booleano chamado enviado à tabela PEDIDOS, com valor padrão FALSE.	*/
----------------------------------------------------------------------------------------------------------------------------------

USE Loja; -- Seleciona o bando de dados Loja criado anteriormente.

----------------------------------------------------------------------------------------------------------------------------------
-- Edição de tabela
----------------------------------------------------------------------------------------------------------------------------------

DELIMITER //                                        -- Muda o delimitador padrão de ; para // 
                                                    -- para permitir a definição de procedimentos/funções armazenados.
                                                    
----------------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE AddEnviadoColumn()                 -- Cria o procedimento/função AddEnviadoColumn().
BEGIN                                               -- Delimitador inicial do bloco de código do procedimento.

    IF NOT EXISTS (                                 -- Verifica se a coluna 'enviado' não existe na tabela 'pedidos'.
        SELECT *
        FROM information_schema.COLUMNS
        WHERE TABLE_SCHEMA = 'Loja'  
        AND TABLE_NAME = 'pedidos'
        AND COLUMN_NAME = 'enviado'
    ) THEN                                          -- Se não existir.
        ALTER TABLE pedidos
        ADD COLUMN enviado BOOLEAN DEFAULT FALSE;   -- Adicionando a coluna 'enviado' do tipo booleano com o valor FALSE por padrão.
    END IF;
END //                                              -- Delimitador final do bloco de código do procedimento.

----------------------------------------------------------------------------------------------------------------------------------
-- Restaura o delimitador padrão para ;
----------------------------------------------------------------------------------------------------------------------------------

DELIMITER ;

-- Executa o procedimento.

CALL AddEnviadoColumn();

----------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM pedidos;                              -- Exibe todos os registros da tabela pedidos

----------------------------------------------------------------------------------------------------------------------------------
-- OBS: Na coluna 'enviado', os valores 0 representam FALSE e 1 TRUE.
----------------------------------------------------------------------------------------------------------------------------------
