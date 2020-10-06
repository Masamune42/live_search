-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Octobre 2020 à 09:26
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tbl_customer`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `city` varchar(250) CHARACTER SET latin1 NOT NULL,
  `postal_code` varchar(30) CHARACTER SET latin1 NOT NULL,
  `country` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `customer_name`, `address`, `city`, `postal_code`, `country`) VALUES
(1, 'John Doe', '42 rue de la providence', 'Quimper', '29000', 'France'),
(2, 'John Smith', '57 avenue Bakerstreet', 'London', 'E16AN', 'United Kingdom'),
(3, 'Jean Serrien', '29 boulevard françois miterrand', 'Champs-sur-marne', '77420', 'France'),
(4, 'Yves Cote de Porc', '2 rue de la mairie', '35000', 'Rennes', 'France');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
