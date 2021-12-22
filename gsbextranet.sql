-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 déc. 2021 à 13:26
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbextranet`
--

-- --------------------------------------------------------

--
-- Structure de la table `archivagehistoriqueconnexion`
--

DROP TABLE IF EXISTS `archivagehistoriqueconnexion`;
CREATE TABLE IF NOT EXISTS `archivagehistoriqueconnexion` (
  `idMedecin` int(11) NOT NULL,
  `dateDebutLog` datetime NOT NULL,
  `dateFinLog` datetime NOT NULL,
  PRIMARY KEY (`idMedecin`,`dateDebutLog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `archivagemedecin`
--

DROP TABLE IF EXISTS `archivagemedecin`;
CREATE TABLE IF NOT EXISTS `archivagemedecin` (
  `idMedecin` int(11) NOT NULL AUTO_INCREMENT,
  `anneeNaissance` year(4) NOT NULL,
  `dateCreation` datetime NOT NULL,
  PRIMARY KEY (`idMedecin`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagemedecin`
--

INSERT INTO `archivagemedecin` (`idMedecin`, `anneeNaissance`, `dateCreation`) VALUES
(3, 2000, '2021-10-10 00:00:00'),
(4, 2000, '2021-10-10 00:00:00'),
(5, 2002, '2021-11-10 14:16:51'),
(8, 2002, '2021-11-10 14:16:51'),
(9, 2002, '2021-11-12 16:19:56'),
(10, 2002, '2021-11-12 16:35:26'),
(11, 2000, '2021-11-12 16:51:39');

-- --------------------------------------------------------

--
-- Structure de la table `archivageproduit`
--

DROP TABLE IF EXISTS `archivageproduit`;
CREATE TABLE IF NOT EXISTS `archivageproduit` (
  `idMedecin` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  PRIMARY KEY (`idMedecin`,`idProduit`,`Date`,`Heure`),
  KEY `fk_medecinprod_idpro` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivageproduit`
--

INSERT INTO `archivageproduit` (`idMedecin`, `idProduit`, `Date`, `Heure`) VALUES
(3, 1, '2021-10-12', '16:00:00'),
(4, 1, '2021-10-12', '16:00:00'),
(5, 7, '2021-11-12', '16:00:00'),
(8, 7, '2021-11-12', '16:00:00'),
(9, 7, '2021-11-12', '16:00:00'),
(10, 7, '2021-11-12', '16:00:00'),
(11, 7, '2021-11-12', '16:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `archivagevisio`
--

DROP TABLE IF EXISTS `archivagevisio`;
CREATE TABLE IF NOT EXISTS `archivagevisio` (
  `idMedecin` int(11) NOT NULL,
  `idVisio` int(11) NOT NULL,
  `dateInscription` datetime NOT NULL,
  PRIMARY KEY (`idMedecin`,`idVisio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagevisio`
--

INSERT INTO `archivagevisio` (`idMedecin`, `idVisio`, `dateInscription`) VALUES
(3, 8, '2021-06-30 00:00:00'),
(4, 8, '2021-06-30 00:00:00'),
(5, 5, '2021-11-12 00:00:00'),
(8, 5, '2021-11-12 00:00:00'),
(9, 5, '2021-11-12 00:00:00'),
(10, 5, '2021-11-12 00:00:00'),
(11, 5, '2021-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `historiqueconnexion`
--

DROP TABLE IF EXISTS `historiqueconnexion`;
CREATE TABLE IF NOT EXISTS `historiqueconnexion` (
  `idMedecin` int(11) NOT NULL,
  `dateDebutLog` datetime NOT NULL,
  `dateFinLog` datetime DEFAULT NULL,
  PRIMARY KEY (`idMedecin`,`dateDebutLog`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historiqueconnexion`
--

INSERT INTO `historiqueconnexion` (`idMedecin`, `dateDebutLog`, `dateFinLog`) VALUES
(12, '2021-12-22 13:38:01', '2021-12-22 13:38:01'),
(12, '2021-12-22 13:38:44', NULL),
(12, '2021-12-22 14:11:43', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `Etat` int(1) NOT NULL,
  PRIMARY KEY (`Etat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maintenance`
--

INSERT INTO `maintenance` (`Etat`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `dateNaissance` year(4) DEFAULT NULL,
  `motDePasse` varchar(260) DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `rpps` varchar(10) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `dateDiplome` year(4) DEFAULT NULL,
  `dateConsentement` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `nom`, `prenom`, `mail`, `dateNaissance`, `motDePasse`, `dateCreation`, `rpps`, `token`, `dateDiplome`, `dateConsentement`) VALUES
(1, 'Admin', NULL, 'admin@admin.com', NULL, '$2y$10$//O/41fWZYfOwfwSEuOXe.gMDjke.DAluw32Aj1ToEFhm0P9NLSjO', NULL, NULL, NULL, NULL, NULL),
(12, 'Dupire', 'Mathéo', '\':????s????X=<3os/?Y?C5??C??????', 2002, '$2y$10$Nug.sIX9A0SfshHdoxdEDeaynkTZZJKwNDx6BLRiV1TBKNRO/kMGm', '2021-12-22 13:38:01', NULL, NULL, NULL, '2021-12-22');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `medecinaeffacer`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `medecinaeffacer`;
CREATE TABLE IF NOT EXISTS `medecinaeffacer` (
`idMedecin` int(11)
,`dateDebutLog` datetime
,`dateFinLog` datetime
);

-- --------------------------------------------------------

--
-- Structure de la table `medecinproduit`
--

DROP TABLE IF EXISTS `medecinproduit`;
CREATE TABLE IF NOT EXISTS `medecinproduit` (
  `idMedecin` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  PRIMARY KEY (`idMedecin`,`idProduit`,`Date`,`Heure`),
  KEY `idProduit` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `medecinvisio`
--

DROP TABLE IF EXISTS `medecinvisio`;
CREATE TABLE IF NOT EXISTS `medecinvisio` (
  `idMedecin` int(11) NOT NULL,
  `idVisio` int(11) NOT NULL,
  `dateInscription` date NOT NULL,
  PRIMARY KEY (`idMedecin`,`idVisio`),
  KEY `idVisio` (`idVisio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `objectif` mediumtext NOT NULL,
  `information` mediumtext NOT NULL,
  `effetIndesirable` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `objectif`, `information`, `effetIndesirable`) VALUES
(1, 'dsf', 'dsf', 'dsf', 'dsf'),
(7, 'fdsgfdsfdsfds', 'Dofdsfdsfdsfdsnne la mort', 'Tu mefdsfdsfdsurs', 'Explfdsfdsfdsose ton ventre');

-- --------------------------------------------------------

--
-- Structure de la table `visioconference`
--

DROP TABLE IF EXISTS `visioconference`;
CREATE TABLE IF NOT EXISTS `visioconference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomVisio` varchar(100) DEFAULT NULL,
  `objectif` text,
  `url` varchar(100) DEFAULT NULL,
  `dateVisio` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visioconference`
--

INSERT INTO `visioconference` (`id`, `nomVisio`, `objectif`, `url`, `dateVisio`) VALUES
(3, 'egfe', 'dsfdsf', 'www.sfdiujhs.fr', '2025-05-30'),
(4, 'Dupirette', 'Donne la mort', 'www.uhgigegejgoiudfshgi.fr', '2021-02-15'),
(5, 'Dupirette', 'Donne la mort', 'www.uhgigegejgoiudfshgi.fr', '2021-02-15');

-- --------------------------------------------------------

--
-- Structure de la vue `medecinaeffacer`
--
DROP TABLE IF EXISTS `medecinaeffacer`;

DROP VIEW IF EXISTS `medecinaeffacer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `medecinaeffacer`  AS SELECT `historiqueconnexion`.`idMedecin` AS `idMedecin`, `historiqueconnexion`.`dateDebutLog` AS `dateDebutLog`, `historiqueconnexion`.`dateFinLog` AS `dateFinLog` FROM `historiqueconnexion` GROUP BY `historiqueconnexion`.`idMedecin` HAVING (timestampdiff(YEAR,max(`historiqueconnexion`.`dateDebutLog`),now()) >= 3) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `archivagehistoriqueconnexion`
--
ALTER TABLE `archivagehistoriqueconnexion`
  ADD CONSTRAINT `fk_medecinco_idmed` FOREIGN KEY (`idMedecin`) REFERENCES `archivagemedecin` (`idMedecin`);

--
-- Contraintes pour la table `archivageproduit`
--
ALTER TABLE `archivageproduit`
  ADD CONSTRAINT `fk_medecinprod_idmed` FOREIGN KEY (`idMedecin`) REFERENCES `archivagemedecin` (`idMedecin`);

--
-- Contraintes pour la table `archivagevisio`
--
ALTER TABLE `archivagevisio`
  ADD CONSTRAINT `fk_medecinvisio_idmed` FOREIGN KEY (`idMedecin`) REFERENCES `archivagemedecin` (`idMedecin`);

--
-- Contraintes pour la table `historiqueconnexion`
--
ALTER TABLE `historiqueconnexion`
  ADD CONSTRAINT `historiqueconnexion_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`);

--
-- Contraintes pour la table `medecinproduit`
--
ALTER TABLE `medecinproduit`
  ADD CONSTRAINT `medecinproduit_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`),
  ADD CONSTRAINT `medecinproduit_ibfk_2` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `medecinvisio`
--
ALTER TABLE `medecinvisio`
  ADD CONSTRAINT `medecinvisio_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`),
  ADD CONSTRAINT `medecinvisio_ibfk_2` FOREIGN KEY (`idVisio`) REFERENCES `visioconference` (`id`);

DELIMITER $$
--
-- Évènements
--
DROP EVENT IF EXISTS `Efface médecin inactif de 3 ans`$$
CREATE DEFINER=`gsbExtraNet`@`%` EVENT `Efface médecin inactif de 3 ans` ON SCHEDULE EVERY 1 DAY STARTS '2021-10-08 23:59:59' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Efface médecin inactif de 3 ans' DO BEGIN

DELETE FROM medecinproduit WHERE idMedecin IN(SELECT idMedecin FROM medecinaeffacer);

DELETE FROM medecinvisio WHERE idMedecin IN(SELECT idMedecin FROM medecinaeffacer);

CREATE TABLE Temporaire SELECT * FROM medecinaeffacer;

DELETE FROM historiqueconnexion WHERE idMedecin IN(SELECT idMedecin FROM medecinaeffacer);

DELETE FROM medecin WHERE id IN(SELECT idMedecin FROM temporaire);

DROP TABLE Temporaire;

END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
