-- TASK 5 & 6 (BD - TRIO)

-- 1: Listar todas as vendas realizadas por um funcionário específico
SELECT 
    f.nome AS "Funcionario", 
    v.idVenda "Venda", 
    v.valorTotal "Valor Total" 
FROM 
    Funcionários f
JOIN 
    Venda v ON f.idFuncionários = v.Funcionários_idFuncionários
WHERE 
    f.nome = 'Maria Oliveira';


-- 2: Listar todos os fornecedores e seus endereços
SELECT 
    f.nome AS "Fornecedo", 
    e.cidade "Cidade", 
    e.bairro "Bairro", 
    e.rua "Rua"
FROM 
    Fornecedores f
JOIN 
    Endereco e ON f.idFornecedores = e.Fornecedores_idFornecedores;

-- 3: Listar os clientes que compraram determinado produto
SELECT 
    c.nome AS "Cliente", 
    p.nome "Produto"
FROM 
    Clientes c
JOIN 
    Venda v ON c.idClientes = v.Clientes_idClientes
JOIN 
    Produtos p ON v.Produtos_idProdutos = p.idProdutos
WHERE 
    p.nome = 'Produto A';

-- 4: Filtrar funcionários com salários acima de 2000
SELECT 
    f.nome AS "Nome Funcionario", 
    f.cargo AS "Cargo Ocupado", 
    f.status AS "Status", 
    f.salario AS "Salário"
FROM 
    Funcionários f
WHERE 
    f.salario > 2000
ORDER BY 
    f.nome ASC;

-- 5: Filtrar fornecedores que estão inativos para loja
SELECT 
    f.nome AS "Nome Fornecedor", 
    f.tipo_fornecedor AS "Tipo Fornecedor", 
    f.status AS "Status"
FROM 
    Fornecedores f
WHERE 
    f.status = 'Inativo'
ORDER BY 
    f.nome ASC;

-- 6: Produtos que pertencem à Categoria B e sua devida Marca
SELECT 
    c.nome AS "Nome Categoria", 
    c.Produtos_idProdutos AS "ID Produto", 
    p.nome AS "Nome Produto", 
    c.marca AS "Marca"
FROM 
    Categorias c 
RIGHT JOIN 
    Produtos p ON p.idProdutos = c.Produtos_idProdutos
WHERE 
    c.nome = 'Categoria B'
ORDER BY 
    c.nome ASC;

-- 7: Listar todos os funcionários e as vendas que realizaram, incluindo funcionários sem vendas
SELECT 
    f.nome AS "Funcionario", 
    v.idVenda "Venda"
FROM 
    Funcionários f
LEFT JOIN 
    Venda v ON f.idFuncionários = v.Funcionários_idFuncionários;

-- 8: Listar todos os produtos em estoque, incluindo os que não estão em estoque
SELECT 
    p.nome AS "Produto", 
    e.quantidade  "Quantidade"
FROM 
    Produtos p
LEFT JOIN 
    Estoque e ON p.idProdutos = e.Produtos_idProdutos;

-- 9: Listar todos os clientes e suas compras, incluindo clientes que não fizeram compras
SELECT 
    c.nome AS "Cliente", 
    v.idVenda "Compra"
FROM 
    Clientes c
LEFT JOIN 
    Venda v ON c.idClientes = v.Clientes_idClientes;

-- 10: Listar todos os produtos e suas categorias, incluindo produtos que não têm categorias
SELECT 
    p.nome AS "Produto", 
    c.nome "Categoria" 
FROM 
    Produtos p
LEFT JOIN 
    Categorias c ON p.idProdutos = c.Produtos_idProdutos;

-- 11: Clientes sem compras nos últimos 6 meses
SELECT 
    c.nome "Cliente" 
FROM 
    Clientes c
LEFT JOIN 
    Venda v ON c.idClientes = v.Clientes_idClientes 
WHERE 
    v.idVenda IS NULL OR v.data < DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY 
    c.idClientes;

-- 12: Consultar os clientes mais ativos
SELECT 
    c.nome "Cliente", 
    COUNT(v.idVenda) "TotalCompras"
FROM 
    Clientes c
JOIN 
    Venda v ON c.idClientes = v.Clientes_idClientes
WHERE 
    v.data >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    c.idClientes
ORDER BY 
    TotalCompras DESC;

-- 13: Promoções de produtos
SELECT 
    p.nome "Nome", 
    p.preco "Preço", 
    p.promocao "Desconto" 
FROM 
    Produtos p
WHERE 
    p.promocao;

-- 14: Vendas por forma de pagamento
SELECT 
    formaPag, 
    SUM(valorTotal) AS TotalVendas 
FROM 
    Venda 
GROUP BY 
    formaPag;

-- 15: Verificação de e-mails duplicados
SELECT 
    email 'Email', 
    COUNT(*) AS Total 
FROM 
    Clientes 
GROUP BY 
    email 
HAVING 
    Total > 1
UNION
SELECT 
    email, 
    COUNT(*) AS Total 
FROM 
    Fornecedores 
GROUP BY 
    email 
HAVING 
    Total > 1;

-- 16: Clientes e seus respectivos endereços, ordenados por ordem alfabética:
SELECT 
	c.nome AS Cliente,
    e.rua "Rua",
    e.bairro "Bairro",
    e.cidade "Cidade"
FROM 
	Clientes c
JOIN 
	Endereco e ON c.idClientes = e.Clientes_idClientes
ORDER BY 
	c.nome ASC;

-- 17: Estoque de produtos com detalhes do fornecedor ordenados por quantidade decrescente:
SELECT 
	p.nome AS "Produto",
    e.quantidade "Quantidade",
    f.nome "Fornecedor"
FROM 
	Estoque e
JOIN 
	Produtos p ON e.Produtos_idProdutos = p.idProdutos
JOIN 
	Fornecedores f ON p.Fornecedores_idFornecedores = f.idFornecedores
ORDER BY 
	e.quantidade DESC;
    
-- 18: Clientes que compraram produtos de um fornecedor específico:
SELECT 
	c.nome AS "Cliente", 
    p.nome "Produto"
FROM 
	Clientes c
JOIN 
	Venda v ON c.idClientes = v.Clientes_idClientes
JOIN 
	Produtos p ON v.Produtos_idProdutos = p.idProdutos
WHERE 
	p.Fornecedores_idFornecedores = 5;
    
-- 19: Funcionários que realizaram vendas acima de um certo valor:

SELECT 
	f.nome AS "Funcionario", 
    SUM(v.valorTotal) "TotalVendas"
FROM 
	Funcionários f
JOIN 
	Venda v ON f.idFuncionários = v.Funcionários_idFuncionários
GROUP BY 
	f.idFuncionários
HAVING 
	TotalVendas > 400; -- Substitua 5000 pelo valor desejado 
    
-- 20: Listar todos os produtos e seus respectivos fornecedores:
SELECT
    p.nome AS "Produto", 
    f.nome "Fornecedor"
FROM 
    Produtos p
JOIN 
    Fornecedores f ON p.Fornecedores_idFornecedores = f.idFornecedores;
    
-- VIEWS
-- 1: Funcionários com Vendas
CREATE VIEW vw_FuncionariosVendas AS
SELECT 
    f.idFuncionários, 
    f.nome AS Funcionario, 
    COUNT(v.idVenda) AS TotalVendas
FROM 
    Funcionários f
LEFT JOIN 
    Venda v ON f.idFuncionários = v.Funcionários_idFuncionários
GROUP BY 
    f.idFuncionários;

-- 2: Clientes e Seus Endereços
CREATE VIEW vw_ClientesEnderecos AS
SELECT 
    c.idClientes, 
    c.nome AS Cliente, 
    e.rua, 
    e.bairro, 
    e.cidade, 
    e.cep
FROM 
    Clientes c
JOIN 
    Endereco e ON c.idClientes = e.Clientes_idClientes;

-- 3: Produtos e Seus Fornecedores
CREATE VIEW vw_ProdutosFornecedores AS
SELECT 
    p.idProdutos, 
    p.nome AS Produto, 
    f.nome AS Fornecedor
FROM 
    Produtos p
JOIN 
    Fornecedores f ON p.Fornecedores_idFornecedores = f.idFornecedores;

-- 4: Produtos em Estoque
CREATE VIEW vw_ProdutosEmEstoque AS
SELECT 
    p.idProdutos, 
    p.nome AS Produto, 
    e.quantidade AS Quantidade
FROM 
    Produtos p
JOIN 
    Estoque e ON p.idProdutos = e.Produtos_idProdutos
WHERE 
    e.quantidade > 0;

-- 5: Vendas e Seus Clientes
CREATE VIEW vw_VendasClientes AS
SELECT 
    v.idVenda, 
    v.valorTotal, 
    c.nome AS Cliente
FROM 
    Venda v
JOIN 
    Clientes c ON v.Clientes_idClientes = c.idClientes;
    
-- 6: Funcionários com Telefone
CREATE VIEW vw_FuncionariosTelefone AS
SELECT 
    f.idFuncionários, 
    f.nome AS Funcionario, 
    t.numero AS Telefone
FROM 
    Funcionários f
LEFT JOIN 
    Telefone t ON f.idFuncionários = t.Funcionários_idFuncionários;

-- 7: Promoções de Produtos
CREATE VIEW vw_ProdutosPromocao AS
SELECT 
    p.idProdutos, 
    p.nome AS Produto, 
    p.preco, 
    p.promocao
FROM 
    Produtos p
WHERE 
    p.promocao IS NOT NULL;

-- 8: Total de Vendas por Funcionário
CREATE VIEW vw_TotalVendasFuncionarios AS
SELECT 
    f.idFuncionários, 
    f.nome AS Funcionario, 
    SUM(v.valorTotal) AS TotalVendas
FROM 
    Funcionários f
JOIN 
    Venda v ON f.idFuncionários = v.Funcionários_idFuncionários
GROUP BY 
    f.idFuncionários;

-- 9: Clientes com Telefone e Endereço
CREATE VIEW vw_ClientesTelefoneEndereco AS
SELECT 
    c.idClientes, 
    c.nome AS Cliente, 
    t.numero AS Telefone, 
    e.rua, 
    e.bairro, 
    e.cidade
FROM 
    Clientes c
LEFT JOIN 
    Telefone t ON c.idClientes = t.Clientes_idClientes
LEFT JOIN 
    Endereco e ON c.idClientes = e.Clientes_idClientes;

-- 10:Estoque de Produtos por Localização
CREATE VIEW vw_EstoquePorLocalizacao AS
SELECT 
    e.localizacao, 
    p.nome AS Produto, 
    e.quantidade
FROM 
    Estoque e
JOIN 
    Produtos p ON e.Produtos_idProdutos = p.idProdutos;

