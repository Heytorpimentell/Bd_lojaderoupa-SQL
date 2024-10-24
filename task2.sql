-- TASK 2 (BD - TRIO)

-- Categorias
ALTER TABLE categorias ADD COLUMN marca VARCHAR(45);

-- Clientes
ALTER TABLE clientes ADD COLUMN data_nascimento DATE;
ALTER TABLE clientes ADD COLUMN data_cadastro DATE;
ALTER TABLE clientes ADD COLUMN status ENUM('ativo', 'inativo') DEFAULT 'ativo';


-- Endereco
ALTER TABLE endereco ADD COLUMN complemento VARCHAR(15);

-- Estoque

-- Fornecedores 
ALTER TABLE fornecedores ADD COLUMN tipo_fornecedor ENUM('Nacional', 'Importado');
ALTER TABLE fornecedores ADD COLUMN status ENUM('Ativo', 'Inativo');

-- Funcionários
ALTER TABLE funcionários ADD COLUMN salario DECIMAL(10, 2);
ALTER TABLE funcionários ADD COLUMN status ENUM('Ativo', 'Inativo');

-- Produtos

-- Telefone


-- Venda
ALTER TABLE venda ADD COLUMN comissao DECIMAL(10, 2);