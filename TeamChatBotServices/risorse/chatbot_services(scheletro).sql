-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Ott 10, 2018 alle 09:04
-- Versione del server: 5.7.21
-- Versione PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot_services`
--
CREATE DATABASE IF NOT EXISTS `chatbot_services` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `chatbot_services`;

-- --------------------------------------------------------

--
-- Struttura della tabella `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `PK_SERVIZIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIZIONE` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STATO` int(11) NOT NULL,
  PRIMARY KEY (`PK_SERVIZIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `services_users`
--

DROP TABLE IF EXISTS `services_users`;
CREATE TABLE IF NOT EXISTS `services_users` (
  `FK_PK_SERVIZIO` int(11) NOT NULL,
  `FK_PK_UTENTE` int(11) NOT NULL,
  KEY `FK_PK_UTENTE` (`FK_PK_UTENTE`),
  KEY `FK_PK_SERVIZIO` (`FK_PK_SERVIZIO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `PK_UTENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `COGNOME` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `USER` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_SESSION` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PK_UTENTE`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
