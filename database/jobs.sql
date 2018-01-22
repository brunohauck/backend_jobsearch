-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22/01/2018 às 18:38
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
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skills` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `location`, `job_type`, `skills`, `description`, `created_at`, `update_at`) VALUES
(1, 1, 'Android Developer', 'Vancouver', 'Permanent', 'Experience: You have at least 3 years of professional experience developing software for Android platform and Java', 'This position is for an experienced Android software engineer local to San Francisco, CA or residents of the United States to join our ~40 person engineering team. We’re looking for someone with a great full-stack knowledge of the Android platform and its tools.', '2018-01-20 05:00:00', '2018-01-21 16:05:33'),
(2, 1, 'Senior Full Stack Developer', 'Remote', 'Remote', 'Writing work in Python/Flask, MySQL, nginx, elastic search, redis, docker etc', 'We\'re looking for an experienced Senior Full Stack Developer who can act like an entrepreneur and own products from idea to execution. Even though you will be joining a small team, you will be able to make a big impact at scale. As a platform we process hundreds of millions of dollars supporting 7,000+ stores, and millions of direct consumers.', '2018-01-20 12:00:00', '2018-01-21 16:05:59'),
(3, 2, 'Front-End Developer\r\n', 'Anywhere', 'Remote', '4+ years professional experience working with NodeJS\r\nA degree in CS, mathematics, EE or similar, or equivalent industry experience\r\nStrong domain knowledge on web fundamentals like HTML, JavaScript, and CSS\r\nStrong React/Redux experience\r\nOther JS framew', 'As a front-end developer you will work remotely with a distributed team building both client-server web applications and decentralized apps (DApps).\r\n\r\nJob Responsibilities:\r\nSoftware development building web applications both for Back-offices and DApps\r\nWork close with the QA team to help implement test plans for our product release\r\nPrimarily programming in NodeJS and JavaScript ', '2018-01-22 05:00:00', '2018-01-22 05:00:00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
