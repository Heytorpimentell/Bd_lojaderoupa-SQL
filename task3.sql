-- TASK 3 (BD - TRIO)

-- Desabilita as verificações de chave estrangeira
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

-- Desabilita as verificações de unicidade
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

-- Seleciona o banco de dados
USE lojaderoupa;

-- Remove as tabelas em ordem, considerando as dependências
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Estoque;
DROP TABLE IF EXISTS Categorias;
DROP TABLE IF EXISTS Produtos;
DROP TABLE IF EXISTS Endereco;
DROP TABLE IF EXISTS Telefone;
DROP TABLE IF EXISTS Fornecedores;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Funcionários;

-- Habilita novamente as verificações de chave estrangeira
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

-- Habilita novamente as verificações de unicidade
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;