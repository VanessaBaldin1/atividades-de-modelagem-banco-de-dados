-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/02/2025 às 12:07
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `catalogo_de_filmes`
--
CREATE DATABASE IF NOT EXISTS `catalogo_de_filmes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `catalogo_de_filmes`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `detalhes`
--

CREATE TABLE `detalhes` (
  `id` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  `bilheteria` decimal(16,2) DEFAULT NULL,
  `orcamento` decimal(16,2) DEFAULT NULL,
  `filmes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `detalhes`
--

INSERT INTO `detalhes` (`id`, `duracao`, `sinopse`, `bilheteria`, `orcamento`, `filmes_id`) VALUES
(1, 92, 'Jason X leva o infame assassino Jason Voorhees para o espaço, onde ele se torna uma ameaça ainda mais mortal, caçando um grupo de sobreviventes em uma nave futurista.', 169000.00, NULL, 1),
(2, 192, 'ILha que da Medo na Praia', 10000.96, NULL, 2),
(3, 245, 'Filme da Heloisa no Carnaval', 45000.50, NULL, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `lancamento` date NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filmes`
--

INSERT INTO `filmes` (`id`, `titulo`, `lancamento`, `genero_id`) VALUES
(1, 'JasonX', '2012-04-13', 1),
(2, 'Ilha do Medo', '2010-02-19', 2),
(3, 'A Ilha da Fantasia', '0000-00-00', 3),
(4, 'O Gato de Botas Assassino', '2025-02-28', 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `filmes3`
--

CREATE TABLE `filmes3` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `lancamento` date NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `generos`
--

INSERT INTO `generos` (`id`, `nome`) VALUES
(1, 'Terror'),
(2, 'Suspense'),
(3, 'Fantasia'),
(5, 'Suspense Infantil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `detalhes`
--
ALTER TABLE `detalhes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detalhes_filmes` (`filmes_id`);

--
-- Índices de tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmes_generos` (`genero_id`);

--
-- Índices de tabela `filmes3`
--
ALTER TABLE `filmes3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_filmes2_generos` (`genero_id`);

--
-- Índices de tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `detalhes`
--
ALTER TABLE `detalhes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `filmes3`
--
ALTER TABLE `filmes3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `detalhes`
--
ALTER TABLE `detalhes`
  ADD CONSTRAINT `fk_detalhes_filmes` FOREIGN KEY (`filmes_id`) REFERENCES `filmes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `filmes`
--
ALTER TABLE `filmes`
  ADD CONSTRAINT `fk_filmes_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Restrições para tabelas `filmes3`
--
ALTER TABLE `filmes3`
  ADD CONSTRAINT `fk_filmes2_generos` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
