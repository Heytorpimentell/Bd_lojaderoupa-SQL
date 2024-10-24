-- TASK 4 (BD - TRIO)

INSERT INTO `Funcionários` (`idFuncionários`, `nome`, `dataNasc`, `cargo`, `salario`, `status`) VALUES
(1, 'João Silva', '1985-05-15', 'Gerente', 5000.00, 'Ativo'),
(2, 'Maria Oliveira', '1990-08-22', 'Vendedora', 3000.00, 'Ativo'),
(3, 'Carlos Souza', '1982-11-30', 'Caixa', 2500.00, 'Ativo'),
(4, 'Ana Lima', '1995-03-10', 'Assistente', 2000.00, 'Ativo'),
(5, 'Pedro Santos', '1988-07-25', 'Supervisor', 4500.00, 'Ativo'),
(6, 'Lucas Almeida', '1992-12-05', 'Estoque', 2200.00, 'Ativo'),
(7, 'Mariana Costa', '1987-09-18', 'RH', 4000.00, 'Ativo'),
(8, 'Fernanda Rocha', '1993-01-20', 'Marketing', 3500.00, 'Ativo'),
(9, 'Rafael Mendes', '1984-04-12', 'TI', 5500.00, 'Ativo'),
(10, 'Juliana Ferreira', '1991-06-28', 'Financeiro', 3800.00, 'Ativo');


INSERT INTO `Clientes` (`idClientes`, `nome`, `email`, `data_nascimento`, `data_cadastro`) VALUES
(1, 'Alice Martins', 'alice.martins@example.com', '1990-01-15', '2024-01-10'),
(2, 'Bruno Lima', 'bruno.lima@example.com', '1985-03-22', '2024-02-11'),
(3, 'Clara Silva', 'clara.silva@example.com', '1992-05-30', '2024-03-12'),
(4, 'Daniel Costa', 'daniel.costa@example.com', '1988-07-18', '2024-04-13'),
(5, 'Eduardo Santos', 'eduardo.santos@example.com', '1995-09-07', '2024-05-14'),
(6, 'Fabiana Almeida', 'fabiana.almeida@example.com', '1983-11-25', '2024-06-15'),
(7, 'Gabriel Rocha', 'gabriel.rocha@example.com', '1991-02-14', '2024-07-16'),
(8, 'Helena Mendes', 'helena.mendes@example.com', '1986-04-08', '2024-08-17'),
(9, 'Igor Ferreira', 'igor.ferreira@example.com', '1994-06-19', '2024-09-18'),
(10, 'Julia Oliveira', 'julia.oliveira@example.com', '1993-08-27', '2024-10-19');


INSERT INTO `Telefone` (`idTelefone`, `numero`, `Funcionários_idFuncionários`, `Clientes_idClientes`) VALUES
(1, '123456789', 1, 1),
(2, '987654321', 2, 2),
(3, '456789123', 3, 3),
(4, '789123456', 4, 4),
(5, '321654987', 5, 5),
(6, '654987321', 6, 6),
(7, '147258369', 7, 7),
(8, '369258147', 8, 8),
(9, '258147369', 9, 9),
(10, '741852963', 10, 10);

INSERT INTO `Fornecedores` (`idFornecedores`, `email`, `nome`, `tipo_fornecedor`, `status`) VALUES
(1, 'fornecedor1@example.com', 'Fornecedor A', 'Nacional', 'Ativo'),
(2, 'fornecedor2@example.com', 'Fornecedor B', 'Importado', 'Inativo'),
(3, 'fornecedor3@example.com', 'Fornecedor C', 'Nacional', 'Ativo'),
(4, 'fornecedor4@example.com', 'Fornecedor D', 'Importado', 'Ativo'),
(5, 'fornecedor5@example.com', 'Fornecedor E', 'Nacional', 'Ativo'),
(6, 'fornecedor6@example.com', 'Fornecedor F', 'Importado', 'Inativo'),
(7, 'fornecedor7@example.com', 'Fornecedor G', 'Nacional', 'Inativo'),
(8, 'fornecedor8@example.com', 'Fornecedor H', 'Importado', 'Inativo'),
(9, 'fornecedor9@example.com', 'Fornecedor I', 'Nacional', 'Ativo'),
(10, 'fornecedor10@example.com', 'Fornecedor J', 'Importado', 'Ativo');



INSERT INTO `Endereco` (`cidade`, `bairro`, `rua`, `cep`, `Clientes_idClientes`, `Fornecedores_idFornecedores`, `Funcionários_idFuncionários`, `complemento`) VALUES
('São Paulo', 'Centro', 'Rua A', '01000-000', 1, 1, 1, 'Casa'),
('Rio de Janeiro', 'Copacabana', 'Rua B', '22000-000', 2, 2, 2, 'Apartamento'),
('Belo Horizonte', 'Savassi', 'Rua C', '30100-000', 3, 3, 3, 'Casa'),
('Porto Alegre', 'Moinhos', 'Rua D', '90500-000', 4, 4, 4, 'Casa'),
('Curitiba', 'Batel', 'Rua E', '80400-000', 5, 5, 5, 'Apartamento'),
('Recife', 'Boa Viagem', 'Rua F', '51000-000', 6, 6, 6, 'Casa'),
('Salvador', 'Barra', 'Rua G', '40100-000', 7, 7, 7, 'Apartamento'),
('Fortaleza', 'Meireles', 'Rua H', '60100-000', 8, 8, 8, 'Apartamento'),
('Brasília', 'Asa Sul', 'Rua I', '70200-000', 9, 9, 9, 'Casa'),
('Manaus', 'Centro', 'Rua J', '69000-000', 10, 10, 10, 'Casa');

INSERT INTO `Produtos` (`idProdutos`, `promocao`, `descricao`, `nome`, `cor`, `tamanho`, `marca`, `preco`, `Fornecedores_idFornecedores`) VALUES
(1, 10.00, 'Produto A', 'Produto A', 'Vermelho', 'M', 'Marca A', 100.00, 1),
(2, 15.00, 'Produto B', 'Produto B', 'Azul', 'G', 'Marca B', 150.00, 2),
(3, 20.00, 'Produto C', 'Produto C', 'Verde', 'P', 'Marca C', 200.00, 3),
(4, 25.00, 'Produto D', 'Produto D', 'Amarelo', 'M', 'Marca D', 250.00, 4),
(5, 30.00, 'Produto E', 'Produto E', 'Preto', 'G', 'Marca E', 300.00, 5),
(6, 35.00, 'Produto F', 'Produto F', 'Branco', 'P', 'Marca F', 350.00, 6),
(7, 40.00, 'Produto G', 'Produto G', 'Cinza', 'M', 'Marca G', 400.00, 7),
(8, 45.00, 'Produto H', 'Produto H', 'Rosa', 'G', 'Marca H', 450.00, 8),
(9, 50.00, 'Produto I', 'Produto I', 'Laranja', 'P', 'Marca I', 500.00, 9),
(10, 55.00, 'Produto J', 'Produto J', 'Roxo', 'M', 'Marca J', 550.00, 10);

INSERT INTO `Categorias` (`idCategorias`, `nome`, `Produtos_idProdutos`, `marca`) VALUES
(1, 'Categoria A', 1, 'Marca A'),
(2, 'Categoria B', 2, 'Marca B'),
(3, 'Categoria C', 3, 'Marca C'),
(4, 'Categoria D', 4, 'Marca D'),
(5, 'Categoria E', 5, 'Marca E'),
(6, 'Categoria F', 6, 'Marca F'),
(7, 'Categoria G', 7, 'Marca G'),
(8, 'Categoria H', 8, 'Marca H'),
(9, 'Categoria I', 9, 'Marca I'),
(10, 'Categoria J', 10, 'Marca J');


INSERT INTO `Estoque` (`idEstoque`, `quantidade`, `localizacao`, `status`, `dataSaida`, `dataEntrada`, `Produtos_idProdutos`) VALUES
(1, 100, 'A1', 'Disponível', '2024-10-01 11:00:00', '2024-09-01 09:00:00', 1),
(2, 200, 'B1', 'Disponível', '2024-10-02 12:00:00', '2024-09-02 10:30:00', 2),
(3, 300, 'C1', 'Disponível', '2024-10-03 13:00:00', '2024-09-03 11:15:00', 3),
(4, 400, 'D1', 'Disponível', '2024-10-04 14:00:00', '2024-09-04 12:45:00', 4),
(5, 500, 'E1', 'Disponível', '2024-10-05 15:00:00', '2024-09-05 13:00:00', 5),
(6, 600, 'F1', 'Disponível', '2024-10-06 16:00:00', '2024-09-06 14:30:00', 6),
(7, 700, 'G1', 'Disponível', '2024-10-07 17:00:00', '2024-09-07 15:15:00', 7),
(8, 800, 'H1', 'Disponível', '2024-10-08 18:00:00', '2024-09-08 16:00:00', 8),
(9, 900, 'I1', 'Disponível', '2024-10-09 19:00:00', '2024-09-09 17:45:00', 9),
(10, 1000, 'J1', 'Disponível', '2024-10-10 20:00:00', '2024-09-10 18:30:00', 10);


INSERT INTO `Venda` (`idVenda`, `valorTotal`, `formaPag`, `data`, `Produtos_idProdutos`, `Produtos_Fornecedores_idFornecedores`, `Clientes_idClientes`, `Funcionários_idFuncionários`, `comissao`) VALUES
(1, 150.00, 'Cartão de Crédito', '2024-10-01 15:00:00', 1, 1, 1, 1, '55'),
(2, 200.00, 'Boleto', '2024-10-02 16:00:00', 2, 2, 2, 2, '100'),
(3, 250.00, 'Dinheiro', '2024-10-03 17:00:00', 3, 3, 3, 3, '37'),
(4, 300.00, 'Cartão de Débito', '2024-10-04 18:00:00', 4, 4, 4, 4, '125'),
(5, 350.00, 'Pix', '2024-10-05 19:00:00', 5, 5, 5, 5, '115'),
(6, 400.00, 'Cartão de Crédito', '2024-10-06 20:00:00', 6, 6, 6, 6, '220'),
(7, 450.00, 'Boleto', '2024-10-07 21:00:00', 7, 7, 7, 7, '35'),
(8, 500.00, 'Dinheiro', '2024-10-08 22:00:00', 8, 8, 8, 8, '170'),
(9, 550.00, 'Cartão de Débito', '2024-10-09 23:00:00', 9, 9, 9, 9, '102'),
(10, 600.00, 'Pix', '2024-10-10 14:00:00', 10, 10, 10, 10, '90');

