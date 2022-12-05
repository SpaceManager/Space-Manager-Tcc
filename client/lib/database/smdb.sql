-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Dez-2022 às 19:36
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
(1, 'Administrador', 'spacemanagergr@gmail.com', '$2b$10$tH3FpJSfFtHCfX9Rg7ozYebGSXg5wDBavTx4JN4CELuuFBY0xlVma', '0', '(00)00000-0000', 1, 'admin', '2022-12-05 18:35:53', '2022-12-05 18:35:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smcurs`
--

CREATE TABLE `smcurs` (
  `idCurs` int(4) NOT NULL,
  `curCurs` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `smespas`
--

CREATE TABLE `smespas` (
  `idEspa` int(4) NOT NULL,
  `espEspa` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `smhoras`
--

CREATE TABLE `smhoras` (
  `idHora` int(4) NOT NULL,
  `horsHora` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `smmats`
--

CREATE TABLE `smmats` (
  `idMat` int(4) NOT NULL,
  `matsMat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `idUser` int(4) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `idCad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `smcurs`
--
ALTER TABLE `smcurs`
  MODIFY `idCurs` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smespas`
--
ALTER TABLE `smespas`
  MODIFY `idEspa` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smhoras`
--
ALTER TABLE `smhoras`
  MODIFY `idHora` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smmats`
--
ALTER TABLE `smmats`
  MODIFY `idMat` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smrelacionamentoreservas`
--
ALTER TABLE `smrelacionamentoreservas`
  MODIFY `idRel` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smrelacionamentousermats`
--
ALTER TABLE `smrelacionamentousermats`
  MODIFY `idRel` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `smres`
--
ALTER TABLE `smres`
  MODIFY `idRes` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
