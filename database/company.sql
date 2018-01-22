-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22/01/2018 às 18:40
-- Versão do servidor: 10.2.12-MariaDB-log
-- Versão do PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `idsgeo5_forum`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `company`
--

INSERT INTO `company` (`id`, `company_name`, `location`, `description`, `created_at`, `update_at`) VALUES
(1, 'Vanhack', 'Vancouver', 'VanHack is a community of tech talent that is looking for a job abroad. We help companies hire amazing tech talent from all over the world.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Dominode', 'New York ', 'Dominode is an Equal Opportunity Employer with a globally distributed team.', '2018-01-22 05:00:00', '2018-01-22 05:00:00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
