-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/04/2024 às 21:11
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_livros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `endereco`, `cidade`, `estado`, `cep`, `telefone`, `data_nascimento`, `profissao`) VALUES
(1, 'Maria Oliveira', 'maria@gmail.com', 'Rua das Flores, 123', 'São Paulo', 'São Paulo', '01234-567', '(11) 1234-5678', '1980-01-15', 'Advogada'),
(2, 'João Santos', 'joao@gmail.com', 'Avenida Principal, 456', 'Rio de Janeiro', 'Rio de Janeiro', '23456-789', '(21) 9876-5432', '1975-05-20', 'Médico'),
(3, 'Ana Silva', 'ana@gmail.com', 'Rua das Árvores, 789', 'Belo Horizonte', 'Minas Gerais', '34567-890', '(31) 4567-8901', '1990-09-25', 'Engenheira'),
(4, 'Pedro Souza', 'pedro@gmail.com', 'Travessa das Ruas, 321', 'Salvador', 'Bahia', '45678-901', '(71) 3456-7890', '1988-03-10', 'Professor'),
(5, 'Carla Vieira', 'carla@gmail.com', 'Praça Central, 654', 'Brasília', 'Distrito Federal', '56789-012', '(61) 2345-6789', '1995-12-05', 'Estudante'),
(6, 'Ana Oliveira', 'ana@email.com', 'Rua D, 987', 'Salvador', 'BA', '45678-901', '(71) 98765-4321', '1988-12-05', 'Psicóloga'),
(7, 'Carlos Santos', 'carlos@email.com', 'Avenida E, 654', 'Porto Alegre', 'RS', '56789-012', '(51) 98765-4321', '1975-08-18', 'Contador'),
(8, 'Juliana Souza', 'juliana@email.com', 'Rua F, 321', 'Curitiba', 'PR', '67890-123', '(41) 98765-4321', '1995-04-30', 'Estudante'),
(9, 'Rafaela Lima', 'rafaela@email.com', 'Avenida G, 789', 'Brasília', 'DF', '78901-234', '(61) 98765-4321', '1982-10-08', 'Advogada'),
(10, 'Lucas Silva', 'lucas@email.com', 'Rua H, 543', 'Fortaleza', 'CE', '89012-345', '(85) 98765-4321', '1990-03-25', 'Engenheiro Civil'),
(11, 'Patricia Costa', 'patricia@email.com', 'Avenida I, 876', 'Recife', 'PE', '90123-456', '(81) 98765-4321', '1987-06-14', 'Médica'),
(12, 'Fernando Pereira', 'fernando@email.com', 'Rua J, 210', 'Manaus', 'AM', '12345-678', '(92) 98765-4321', '1978-09-22', 'Professor'),
(13, 'Mariana Rodrigues', 'mariana@email.com', 'Avenida K, 753', 'Belém', 'PA', '23456-789', '(91) 98765-4321', '1998-02-17', 'Estudante'),
(14, 'André Almeida', 'andre@email.com', 'Rua L, 852', 'Natal', 'RN', '34567-890', '(84) 98765-4321', '1984-07-03', 'Engenheiro'),
(15, 'Camila Ferreira', 'camila@email.com', 'Avenida M, 369', 'Florianópolis', 'SC', '45678-901', '(48) 98765-4321', '1993-11-12', 'Designer');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL,
  `editora` varchar(100) DEFAULT NULL,
  `idioma` varchar(50) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL,
  `formato` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livros`
--

INSERT INTO `livros` (`id`, `titulo`, `autor`, `genero`, `ano_publicacao`, `editora`, `idioma`, `paginas`, `formato`, `preco`, `data_publicacao`) VALUES
(1, 'O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937, 'Allen & Unwin', 'Inglês', 310, 'Capa Dura', 39.90, '1937-09-21'),
(2, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', 1997, 'Bloomsbury Publishing', 'Inglês', 223, 'Brochura', 49.90, '1997-06-26'),
(3, 'Orgulho e Preconceito', 'Jane Austen', 'Romance', 1813, 'T. Egerton, Whitehall', 'Inglês', 279, 'Capa Dura', 29.90, '1813-01-28'),
(4, 'Dom Quixote', 'Miguel de Cervantes', 'Romance', 1605, 'Francisco de Robles', 'Espanhol', 863, 'Brochura', 44.90, '1605-01-16'),
(5, 'Cem Anos de Solidão', 'Gabriel García Márquez', 'Realismo Mágico', 1967, 'Editorial Sudamericana', 'Espanhol', 422, 'Capa Dura', 34.90, '1967-05-30'),
(6, 'A Culpa é das Estrelas', 'John Green', 'Romance', 2012, 'Intrínseca', 'Português', 288, 'Físico', 29.90, '2012-01-10'),
(7, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Ficção', 1943, 'Geração Editorial', 'Português', 96, 'Físico', 19.99, '1943-04-06'),
(8, '1984', 'George Orwell', 'Ficção científica', 1949, 'Companhia das Letras', 'Português', 416, 'Físico', 39.90, '1949-06-08'),
(9, 'Orgulho e Preconceito', 'Jane Austen', 'Romance', 1813, 'Nova Fronteira', 'Português', 424, 'Físico', 34.50, '1813-01-28'),
(10, 'O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 1937, 'HarperCollins', 'Português', 320, 'Físico', 45.00, '1937-09-21'),
(11, 'A Menina que Roubava Livros', 'Markus Zusak', 'Drama', 2005, 'Intrínseca', 'Português', 480, 'Físico', 32.00, '2005-09-01'),
(12, 'A Revolução dos Bichos', 'George Orwell', 'Sátira política', 1945, 'Companhia das Letras', 'Português', 152, 'Físico', 27.90, '1945-08-17'),
(13, 'As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 'Fantasia', 1950, 'Martins Fontes', 'Português', 208, 'Físico', 29.99, '1950-10-16'),
(14, 'A Dança dos Dragões', 'George R.R. Martin', 'Fantasia épica', 2011, 'LeYa', 'Português', 1056, 'Físico', 59.90, '2011-07-12'),
(15, 'A Metamorfose', 'Franz Kafka', 'Ficção Absurda', 1915, 'Companhia das Letras', 'Português', 200, 'Físico', 21.50, '1915-10-15');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
