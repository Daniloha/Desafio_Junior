----------------------------------------------------------------------------------------------------------------------------------
-- Banco de Dados 
-- Criação do bando de dados para as questões.
----------------------------------------------------------------------------------------------------------------------------------

/*
----------------------------------------------------------------------------------------------------------------------------------

Loja online com as seguintes tabelas:

	- clientes:
			>id_cliente(Chave Primaria)
            >nome
            >email
            >data_nascimento
            
	- pedidos:
			>id_pedido(Chave Primaria)
            >id_cliente(Chave Estrangeira)
            >data_pedido
            >valor_total
            
	- items_pedido:
			>id_item(Chave Primaria)
            >id_pedido(Chave Estrangeira)
            >id_produto
            >quantidade
            >valor_unitario
            
	- produtos:
			>id_produto(Chave Primaria)
            >nome_produto
            >descricao
            >preco
            
----------------------------------------------------------------------------------------------------------------------------------
Regras:
	
		- Chaves primarias:
				> Não podem ser nulas.
                > Auto incrementais.
                > Numeros inteiros.
                
		- Preços e valores totais e unitários:
				> Não podem ser nulos.
                > Double ou float.
                
		- Nomes e descrições e emails:
				> Não podem ser nulos.
                > Varchar.
                
		- Datas:
				> Não podem ser nulas.
                > DateTime
                
		- Quantidades:
				> Não podem ser nulos.
                > Numeros inteiros.
                
----------------------------------------------------------------------------------------------------------------------------------
*/
            

CREATE DATABASE Loja; -- Cria o banco de dados Loja.
USE Loja; -- Seleciona o bando de dados Loja para uso e alteração.

----------------------------------------------------------------------------------------------------------------------------------

-- Tabela clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária, não nula, auto-incremento, inteira
    nome VARCHAR(100) NOT NULL,                -- Nome, não nulo, varchar
    email VARCHAR(100) NOT NULL,               -- Email, não nulo, varchar
    data_nascimento DATE NOT NULL              -- Data de nascimento, não nula, datetime
);

----------------------------------------------------------------------------------------------------------------------------------

-- Tabela pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,  -- Chave primária, não nula, auto-incremento, inteira
    id_cliente INT NOT NULL,                   -- Chave estrangeira referenciando id_cliente em clientes
    data_pedido DATETIME NOT NULL,             -- Data do pedido, não nula, datetime
    valor_total DOUBLE NOT NULL,               -- Valor total do pedido, não nulo, double
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) -- Definindo a chave estrangeira
);


----------------------------------------------------------------------------------------------------------------------------------

-- Tabela produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária, não nula, auto-incremento, inteira
    nome_produto VARCHAR(100) NOT NULL,        -- Nome do produto, não nulo, varchar
    descricao VARCHAR(255) NOT NULL,           -- Descrição do produto, não nula, varchar
    preco DOUBLE NOT NULL                      -- Preço do produto, não nulo, double
);

----------------------------------------------------------------------------------------------------------------------------------

-- Tabela items_pedido
CREATE TABLE items_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,    -- Chave primária, não nula, auto-incremento, inteira
    id_pedido INT NOT NULL,                    -- Chave estrangeira referenciando id_pedido em pedidos
    id_produto INT NOT NULL,                   -- ID do produto, chave estrangeira referenciando id_produto em produtos
    quantidade INT NOT NULL,                   -- Quantidade, não nula, inteira
    valor_unitario DOUBLE NOT NULL,            -- Valor unitário, não nulo, double
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido), -- Definindo chave estrangeira para id_pedido
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) -- Definindo chave estrangeira para id_produto
);

----------------------------------------------------------------------------------------------------------------------------------
-- Populando as tabelas com 5 registros de exemplo:
----------------------------------------------------------------------------------------------------------------------------------

-- Inserindo dados na tabela clientes
INSERT INTO clientes (nome, email, data_nascimento) VALUES 
('João Silva', 'joao.silva@example.com', '1990-05-20'),
('Maria Souza', 'maria.souza@example.com', '1985-11-15'),
('Carlos Pereira', 'carlos.pereira@example.com', '1992-01-30'),
('Ana Oliveira', 'ana.oliveira@example.com', '1998-07-22'),
('Bruno Santos', 'bruno.santos@example.com', '1980-03-10');

----------------------------------------------------------------------------------------------------------------------------------

-- Inserindo dados na tabela produtos
INSERT INTO produtos (nome_produto, descricao, preco) VALUES 
('Notebook', 'Notebook com 16GB RAM e 512GB SSD', 3500.00),
('Smartphone', 'Smartphone com 128GB de armazenamento', 1500.00),
('Fone de Ouvido', 'Fone de ouvido sem fio', 200.00),
('Teclado', 'Teclado mecânico RGB', 300.00),
('Monitor', 'Monitor LED de 24 polegadas', 800.00);

----------------------------------------------------------------------------------------------------------------------------------

-- Inserindo dados na tabela pedidos
INSERT INTO pedidos (id_cliente, data_pedido, valor_total) VALUES 
(1, '2024-11-01 10:30:00', 3500.00),
(2, '2024-11-02 11:45:00', 2300.00),
(3, '2024-11-03 09:15:00', 1700.00),
(4, '2024-11-04 14:50:00', 1000.00),
(5, '2024-11-05 16:20:00', 500.00);

----------------------------------------------------------------------------------------------------------------------------------

-- Inserindo dados na tabela items_pedido
INSERT INTO items_pedido (id_pedido, id_produto, quantidade, valor_unitario) VALUES 
(1, 1, 1, 3500.00),  -- Pedido de Notebook
(2, 2, 1, 1500.00),  -- Pedido de Smartphone
(2, 3, 1, 200.00),   -- Pedido de Fone de Ouvido
(3, 4, 1, 300.00),   -- Pedido de Teclado
(3, 5, 1, 800.00),   -- Pedido de Monitor
(4, 3, 2, 200.00),   -- Pedido de 2 Fones de Ouvido
(5, 4, 1, 300.00);   -- Pedido de Teclado
----------------------------------------------------------------------------------------------------------------------------------
