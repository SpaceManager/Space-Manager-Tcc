-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2022 às 12:02
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `smdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `smcads`
--

CREATE TABLE `smcads` (
  `idCad` int(4) NOT NULL,
  `namecCad` varchar(255) NOT NULL,
  `emailCad` varchar(255) NOT NULL,
  `seCad` varchar(255) NOT NULL,
  `rmCad` varchar(255) NOT NULL,
  `teleCad` varchar(255) NOT NULL,
  `stateCad` tinyint(1) NOT NULL DEFAULT 1,
  `typeCad` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `smcads`
--

INSERT INTO `smcads` (`idCad`, `namecCad`, `emailCad`, `seCad`, `rmCad`, `teleCad`, `stateCad`, `typeCad`, `createdAt`, `updatedAt`) VALUES
(1, 'Administração Space Manager', 'spacemanagerGR@gmail.com', '$2b$10$6WYXWBPd.wO.xHC6lhYjyesTN4xg4s6AbpflHZPCV/liEtdXwjFNO', '00000', '(00)00000-0000', 1, 'admin', '2022-11-19 10:20:00', '2022-11-19 10:20:00'),
(2, 'Gustavo Sales', 'gussales14@gmail.com', '$2b$10$Z2GttEpvRdQuL3ZU6QGoJ.23cYeg7XWwyOhe5QijJycYlzC/5eaDe', '00001', '(11)96185-7981', 1, 'coord', '2022-11-19 10:21:37', '2022-11-19 10:25:07'),
(3, 'Gustavo', 'gustavosalles2005@outlook.com', '$2b$10$qQksJsZ4Q5eLUpk1SCsUBunTZokvb0Kv2XSQgh2BOLqA9c/6yGdoK', '00002', '(11)96185-7981', 1, 'prof', '2022-11-19 10:22:33', '2022-11-19 10:22:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smcurs`
--

CREATE TABLE `smcurs` (
  `idCurs` int(4) NOT NULL,
  `curCurs` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smcurs`
--

INSERT INTO `smcurs` (`idCurs`, `curCurs`, `createdAt`, `updatedAt`) VALUES
(9, '1 Informática', '2022-11-19 11:12:01', '2022-11-19 11:12:01'),
(10, '2 Informática', '2022-11-19 11:12:01', '2022-11-19 11:12:01'),
(11, '3 Informática', '2022-11-19 11:12:25', '2022-11-19 11:12:25'),
(12, '1 Administração', '2022-11-19 11:12:25', '2022-11-19 11:12:25'),
(13, '2 Administração', '2022-11-19 11:12:42', '2022-11-19 11:12:42'),
(14, '3 Administração', '2022-11-19 11:12:42', '2022-11-19 11:12:42'),
(15, '1 Contabilidade', '2022-11-19 11:12:57', '2022-11-19 11:12:57'),
(16, '2 Contabilidade', '2022-11-19 11:12:57', '2022-11-19 11:12:57'),
(17, '3 Contabilidade', '2022-11-19 11:13:45', '2022-11-19 11:13:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smespas`
--

CREATE TABLE `smespas` (
  `idEspa` int(4) NOT NULL,
  `espEspa` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smespas`
--

INSERT INTO `smespas` (`idEspa`, `espEspa`, `createdAt`, `updatedAt`) VALUES
(2, 'Quadra', '2022-10-09 16:28:56', '2022-10-09 16:28:56'),
(3, 'Auditório', '2022-10-14 15:11:29', '2022-10-14 15:11:29'),
(4, 'Laboratório 1', '2022-10-14 15:11:45', '2022-10-14 15:11:45'),
(5, 'Laboratório 2', '2022-10-14 15:11:51', '2022-10-14 15:11:51'),
(6, 'Laboratório 3', '2022-10-14 15:11:56', '2022-10-14 15:11:56'),
(7, 'Laboratório 4', '2022-10-14 15:12:01', '2022-10-14 15:12:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smhoras`
--

CREATE TABLE `smhoras` (
  `idHora` int(4) NOT NULL,
  `horsHora` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smhoras`
--

INSERT INTO `smhoras` (`idHora`, `horsHora`, `createdAt`, `updatedAt`) VALUES
(1, '7:10', '2022-10-14 15:16:28', '2022-10-14 15:16:28'),
(2, '8:00', '2022-10-14 15:16:35', '2022-10-14 15:16:35'),
(3, '8:50', '2022-10-14 15:16:40', '2022-10-14 15:16:40'),
(4, '9:40', '2022-10-14 15:16:49', '2022-10-14 15:16:49'),
(5, '10:00', '2022-10-14 15:16:55', '2022-10-14 15:16:55'),
(6, '10:50', '2022-10-15 18:59:16', '2022-10-15 18:59:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smmats`
--

CREATE TABLE `smmats` (
  `idMat` int(4) NOT NULL,
  `matsMat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smmats`
--

INSERT INTO `smmats` (`idMat`, `matsMat`, `createdAt`, `updatedAt`) VALUES
(2, 'Matemática', '2022-10-04 23:17:39', '2022-10-04 23:17:39'),
(3, 'Língua Portuguesa', '2022-10-04 23:18:08', '2022-10-04 23:18:08'),
(4, 'Biologia', '2022-10-05 00:05:02', '2022-10-05 00:05:02'),
(5, 'Quimica', '2022-10-05 00:05:57', '2022-10-05 00:05:57'),
(6, 'Ingles', '2022-10-09 16:25:43', '2022-10-09 16:25:43'),
(7, 'Geografia', '2022-10-30 23:51:50', '2022-10-30 23:51:50'),
(8, 'História', '2022-10-30 23:52:00', '2022-10-30 23:52:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smrelacionamentoreservas`
--

CREATE TABLE `smrelacionamentoreservas` (
  `idRel` int(4) NOT NULL,
  `idHora` varchar(255) NOT NULL,
  `idRes` varchar(255) NOT NULL,
  `espRes` varchar(255) NOT NULL,
  `dayRes` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `smrelacionamentoreservas`
--

INSERT INTO `smrelacionamentoreservas` (`idRel`, `idHora`, `idRes`, `espRes`, `dayRes`, `createdAt`, `updatedAt`) VALUES
(15, '7:10', '7', 'Laboratório 1', 'Novembro 21, 2022', '2022-11-19 10:25:53', '2022-11-19 10:25:53'),
(16, '8:00', '7', 'Laboratório 1', 'Novembro 21, 2022', '2022-11-19 10:25:53', '2022-11-19 10:25:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smrelacionamentousermats`
--

CREATE TABLE `smrelacionamentousermats` (
  `idRel` int(4) NOT NULL,
  `idMat` varchar(255) NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `smrelacionamentousermats`
--

INSERT INTO `smrelacionamentousermats` (`idRel`, `idMat`, `idUser`, `createdAt`, `updatedAt`) VALUES
(4, '4', '6', '2022-11-06 13:17:10', '2022-11-06 13:17:10'),
(5, '5', '6', '2022-11-06 13:17:10', '2022-11-06 13:17:10'),
(6, '5', '3', '2022-11-19 10:22:33', '2022-11-19 10:22:33'),
(7, '8', '3', '2022-11-19 10:22:33', '2022-11-19 10:22:33'),
(8, '4', '3', '2022-11-19 10:22:33', '2022-11-19 10:22:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smres`
--

CREATE TABLE `smres` (
  `idRes` int(5) NOT NULL,
  `userRes` varchar(255) NOT NULL,
  `curRes` varchar(255) NOT NULL,
  `matRes` varchar(255) NOT NULL,
  `dayRes` varchar(255) NOT NULL,
  `horaResDe` varchar(255) NOT NULL,
  `horaResAte` varchar(255) NOT NULL,
  `espaRes` varchar(255) NOT NULL,
  `descriRes` varchar(255) NOT NULL,
  `estaRes` varchar(255) NOT NULL,
  `horSolicRes` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `smres`
--

INSERT INTO `smres` (`idRes`, `userRes`, `curRes`, `matRes`, `dayRes`, `horaResDe`, `horaResAte`, `espaRes`, `descriRes`, `estaRes`, `horSolicRes`, `createdAt`, `updatedAt`) VALUES
(7, 'Gustavo Sales', '1 Informática', 'Geografia', 'Novembro 21, 2022', '7:10', '8:50', 'Laboratório 1', '.', 'yellow', '7:25:53', '2022-11-19 10:25:53', '2022-11-19 10:25:53');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `smcads`
--
ALTER TABLE `smcads`
  ADD PRIMARY KEY (`idCad`);

--
-- Índices para tabela `smcurs`
--
ALTER TABLE `smcurs`
  ADD PRIMARY KEY (`idCurs`);

--
-- Índices para tabela `smespas`
--
ALTER TABLE `smespas`
  ADD PRIMARY KEY (`idEspa`);

--
-- Índices para tabela `smhoras`
--
ALTER TABLE `smhoras`
  ADD PRIMARY KEY (`idHora`);

--
-- Índices para tabela `smmats`
--
ALTER TABLE `smmats`
  ADD PRIMARY KEY (`idMat`);

--
-- Índices para tabela `smrelacionamentoreservas`
--
ALTER TABLE `smrelacionamentoreservas`
  ADD PRIMARY KEY (`idRel`);

--
-- Índices para tabela `smrelacionamentousermats`
--
ALTER TABLE `smrelacionamentousermats`
  ADD PRIMARY KEY (`idRel`);

--
-- Índices para tabela `smres`
--
ALTER TABLE `smres`
  ADD PRIMARY KEY (`idRes`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `smcads`
--
ALTER TABLE `smcads`
  MODIFY `idCad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `smcurs`
--
ALTER TABLE `smcurs`
  MODIFY `idCurs` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `smespas`
--
ALTER TABLE `smespas`
  MODIFY `idEspa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `smhoras`
--
ALTER TABLE `smhoras`
  MODIFY `idHora` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `smmats`
--
ALTER TABLE `smmats`
  MODIFY `idMat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `smrelacionamentoreservas`
--
ALTER TABLE `smrelacionamentoreservas`
  MODIFY `idRel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `smrelacionamentousermats`
--
ALTER TABLE `smrelacionamentousermats`
  MODIFY `idRel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `smres`
--
ALTER TABLE `smres`
  MODIFY `idRes` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
