-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour avenger
CREATE DATABASE IF NOT EXISTS `avenger` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `avenger`;

-- Export de la structure de la table avenger. acteur
CREATE TABLE IF NOT EXISTS `acteur` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.acteur : ~0 rows (environ)
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;

-- Export de la structure de la table avenger. civil
CREATE TABLE IF NOT EXISTS `civil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `civiliter` varchar(255) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `dateDeces` datetime DEFAULT NULL,
  `dateNaissance` datetime DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.civil : ~3 rows (environ)
/*!40000 ALTER TABLE `civil` DISABLE KEYS */;
INSERT INTO `civil` (`id`, `adresse`, `civiliter`, `commentaire`, `dateDeces`, `dateNaissance`, `nom`, `prenom`, `pseudo`) VALUES
	(1, '395 rue des Héros', '1', 'Le légendaire Valentin', NULL, '2019-04-16 10:22:19', 'Maillard', 'Valentin', 'Le Légendaire'),
	(2, '27 rue des Sages', '1', 'Il maîtrise mille sort', NULL, '2019-04-17 10:23:00', 'Couerbe', 'Christophe', 'Le magicien'),
	(3, '395 rue de Verdun', 'Monsieur', 'dsqdsq', '2019-04-13 22:00:00', '2019-04-05 22:00:00', 'Maillard', 'Valentin', 'Test');
/*!40000 ALTER TABLE `civil` ENABLE KEYS */;

-- Export de la structure de la table avenger. crise
CREATE TABLE IF NOT EXISTS `crise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `degat` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `litige_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4pampd59br59sjmk1l77fxeop` (`litige_id`),
  CONSTRAINT `FK4pampd59br59sjmk1l77fxeop` FOREIGN KEY (`litige_id`) REFERENCES `litige` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.crise : ~2 rows (environ)
/*!40000 ALTER TABLE `crise` DISABLE KEYS */;
INSERT INTO `crise` (`id`, `commentaire`, `degat`, `description`, `titre`, `litige_id`) VALUES
	(1, 'C\'est une crise internationale', 'Catastrophe écologiqu', 'Il a des lunettes et il est méchant', 'La crise du siècle', 1),
	(2, 'Test', 'Destruction planétaire totale', 'Le vilain suspect', 'La crise du siècle 2019', 2);
/*!40000 ALTER TABLE `crise` ENABLE KEYS */;

-- Export de la structure de la table avenger. film
CREATE TABLE IF NOT EXISTS `film` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `realisateur_id` bigint(20) DEFAULT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe7leu8rukf4qrff834klkp9rn` (`realisateur_id`),
  CONSTRAINT `FKe7leu8rukf4qrff834klkp9rn` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.film : ~0 rows (environ)
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
/*!40000 ALTER TABLE `film` ENABLE KEYS */;

-- Export de la structure de la table avenger. film_acteur
CREATE TABLE IF NOT EXISTS `film_acteur` (
  `Film_id` bigint(20) NOT NULL,
  `acteurs_id` bigint(20) NOT NULL,
  KEY `FKbbq6tnwwlxk8tksrmqeephfmu` (`acteurs_id`),
  KEY `FKkqy1tltc8x9kfj4jr8bf8rxx8` (`Film_id`),
  CONSTRAINT `FKbbq6tnwwlxk8tksrmqeephfmu` FOREIGN KEY (`acteurs_id`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FKkqy1tltc8x9kfj4jr8bf8rxx8` FOREIGN KEY (`Film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.film_acteur : ~0 rows (environ)
/*!40000 ALTER TABLE `film_acteur` DISABLE KEYS */;
/*!40000 ALTER TABLE `film_acteur` ENABLE KEYS */;

-- Export de la structure de la table avenger. incident
CREATE TABLE IF NOT EXISTS `incident` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `civil_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK17v601jcgret6qc5yl68i5udk` (`civil_id`),
  CONSTRAINT `FK17v601jcgret6qc5yl68i5udk` FOREIGN KEY (`civil_id`) REFERENCES `civil` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.incident : ~4 rows (environ)
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` (`id`, `date`, `description`, `titre`, `civil_id`) VALUES
	(1, '2019-04-17 11:36:54', 'test', 'titre', 1),
	(2, '2019-04-17 09:47:21', 'Description\r\n                            ', 'titre', NULL),
	(3, '2019-04-17 12:05:23', 'dsqx', 'titre', 3),
	(4, '2019-04-17 10:18:53', 'Hulk est vert\r\n                            ', 'Attaque à New York', 1);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;

-- Export de la structure de la table avenger. incident_mission
CREATE TABLE IF NOT EXISTS `incident_mission` (
  `CODEINCIDENT` int(11) NOT NULL,
  `CODEMISSION` int(11) NOT NULL,
  PRIMARY KEY (`CODEINCIDENT`,`CODEMISSION`),
  KEY `FK_INCIDENT_INCIDENT__TMISSION` (`CODEMISSION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.incident_mission : 0 rows
/*!40000 ALTER TABLE `incident_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_mission` ENABLE KEYS */;

-- Export de la structure de la table avenger. litige
CREATE TABLE IF NOT EXISTS `litige` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cout` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `objet` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `prejudice_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3j19b8iqd501m7ywi7s4e42js` (`prejudice_id`),
  CONSTRAINT `FK3j19b8iqd501m7ywi7s4e42js` FOREIGN KEY (`prejudice_id`) REFERENCES `prejudice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.litige : ~2 rows (environ)
/*!40000 ALTER TABLE `litige` DISABLE KEYS */;
INSERT INTO `litige` (`id`, `cout`, `date`, `objet`, `type`, `prejudice_id`) VALUES
	(1, 5, '2019-04-03 22:00:00', 'Il m\'a prit mon gouter', 'Relationnel', 1),
	(2, 100, '2019-04-16 22:00:00', 'Il m\'a prit mon gouter 2019', 'Préjudice moral', 2);
/*!40000 ALTER TABLE `litige` ENABLE KEYS */;

-- Export de la structure de la table avenger. litige_crise
CREATE TABLE IF NOT EXISTS `litige_crise` (
  `CODELITIGE` int(11) NOT NULL,
  `CODECRISE` int(11) NOT NULL,
  `HISTORIQUELTIGE` date DEFAULT NULL,
  PRIMARY KEY (`CODELITIGE`,`CODECRISE`),
  KEY `FK_LITIGE_C_LITIGE_CR_TCRISE` (`CODECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.litige_crise : 0 rows
/*!40000 ALTER TABLE `litige_crise` DISABLE KEYS */;
/*!40000 ALTER TABLE `litige_crise` ENABLE KEYS */;

-- Export de la structure de la table avenger. litige_registre
CREATE TABLE IF NOT EXISTS `litige_registre` (
  `CODEVRAC` int(11) NOT NULL,
  `CODELITIGE` int(11) NOT NULL,
  PRIMARY KEY (`CODEVRAC`,`CODELITIGE`),
  KEY `FK_LITIGE_R_LITIGE_RE_TLITIGE` (`CODELITIGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.litige_registre : 0 rows
/*!40000 ALTER TABLE `litige_registre` DISABLE KEYS */;
/*!40000 ALTER TABLE `litige_registre` ENABLE KEYS */;

-- Export de la structure de la table avenger. membre
CREATE TABLE IF NOT EXISTS `membre` (
  `CODECIVILE` int(11) NOT NULL,
  `CODEORGANISATION` int(11) NOT NULL,
  `ESTDIRIGENT` tinyint(1) NOT NULL,
  PRIMARY KEY (`CODECIVILE`,`CODEORGANISATION`),
  KEY `FK_MEMBRE_MEMBRE2_TORGANIS` (`CODEORGANISATION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.membre : 0 rows
/*!40000 ALTER TABLE `membre` DISABLE KEYS */;
/*!40000 ALTER TABLE `membre` ENABLE KEYS */;

-- Export de la structure de la table avenger. mission
CREATE TABLE IF NOT EXISTS `mission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adresseDepart` varchar(255) DEFAULT NULL,
  `adresseMission` varchar(255) DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gravite` varchar(255) DEFAULT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `urgence` varchar(255) DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlookujd73952lj76wh9v1py2c` (`incident_id`),
  CONSTRAINT `FKlookujd73952lj76wh9v1py2c` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.mission : ~3 rows (environ)
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` (`id`, `adresseDepart`, `adresseMission`, `dateDebut`, `dateFin`, `description`, `gravite`, `nature`, `titre`, `urgence`, `incident_id`) VALUES
	(1, 'départ', 'mission adresse', '2019-04-04 22:00:00', '2019-04-03 22:00:00', 'Description', 'Gravissime', 'Nature', 'Test Titre', 'Ouhlala', 2),
	(2, 'QG', 'Empire State', '2019-04-17 22:00:00', '2019-04-26 22:00:00', 'Il est incontrôlable, stopper le', 'Super Grave', 'Arrêter Hulk', 'Hulk le déchainé', 'Ouhlala', 1),
	(3, 'QG', 'Tour Eiffel', '2019-04-18 22:00:00', '2019-04-13 22:00:00', 'Description test', 'Super Grave', 'Calmer Hulk', 'Hulk le déchainé2', 'Ouhlala', 4);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;

-- Export de la structure de la table avenger. mission_rapport
CREATE TABLE IF NOT EXISTS `mission_rapport` (
  `CODERAPPORT` int(11) NOT NULL,
  `CODEMISSION` int(11) NOT NULL,
  PRIMARY KEY (`CODERAPPORT`,`CODEMISSION`),
  KEY `FK_MISSION__MISSION_R_TMISSION` (`CODEMISSION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.mission_rapport : 0 rows
/*!40000 ALTER TABLE `mission_rapport` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission_rapport` ENABLE KEYS */;

-- Export de la structure de la table avenger. prejudice
CREATE TABLE IF NOT EXISTS `prejudice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `victime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.prejudice : ~2 rows (environ)
/*!40000 ALTER TABLE `prejudice` DISABLE KEYS */;
INSERT INTO `prejudice` (`id`, `type`, `victime`) VALUES
	(1, 'Sucide', 'Citoyen Lambda'),
	(2, 'Sucide', 'Adveger Lambda');
/*!40000 ALTER TABLE `prejudice` ENABLE KEYS */;

-- Export de la structure de la table avenger. rapport_crise
CREATE TABLE IF NOT EXISTS `rapport_crise` (
  `CODERAPPORT` int(11) NOT NULL,
  `CODECRISE` int(11) NOT NULL,
  `HISTORIQUEDATE` date DEFAULT NULL,
  PRIMARY KEY (`CODERAPPORT`,`CODECRISE`),
  KEY `FK_RAPPORT__RAPPORT_C_TCRISE` (`CODECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.rapport_crise : 0 rows
/*!40000 ALTER TABLE `rapport_crise` DISABLE KEYS */;
/*!40000 ALTER TABLE `rapport_crise` ENABLE KEYS */;

-- Export de la structure de la table avenger. realisateur
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.realisateur : ~0 rows (environ)
/*!40000 ALTER TABLE `realisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `realisateur` ENABLE KEYS */;

-- Export de la structure de la table avenger. satisfaction_rapport
CREATE TABLE IF NOT EXISTS `satisfaction_rapport` (
  `CODESATISFACTION` int(11) NOT NULL,
  `CODERAPPORT` int(11) NOT NULL,
  PRIMARY KEY (`CODESATISFACTION`,`CODERAPPORT`),
  KEY `FK_SATISFAC_SATISFACT_TRAPPORT` (`CODERAPPORT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.satisfaction_rapport : 0 rows
/*!40000 ALTER TABLE `satisfaction_rapport` DISABLE KEYS */;
/*!40000 ALTER TABLE `satisfaction_rapport` ENABLE KEYS */;

-- Export de la structure de la table avenger. satisfaction_registre
CREATE TABLE IF NOT EXISTS `satisfaction_registre` (
  `CODEVRAC` int(11) NOT NULL,
  `CODESATISFACTION` int(11) NOT NULL,
  PRIMARY KEY (`CODEVRAC`,`CODESATISFACTION`),
  KEY `FK_SATISFAC_SATISFACT_TSATISFA` (`CODESATISFACTION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.satisfaction_registre : 0 rows
/*!40000 ALTER TABLE `satisfaction_registre` DISABLE KEYS */;
/*!40000 ALTER TABLE `satisfaction_registre` ENABLE KEYS */;

-- Export de la structure de la table avenger. sniveaugravite
CREATE TABLE IF NOT EXISTS `sniveaugravite` (
  `CODEGRAVITE` int(11) NOT NULL AUTO_INCREMENT,
  `VALEURGRAVITE` int(11) NOT NULL,
  `NOMGRAVITE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODEGRAVITE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.sniveaugravite : 0 rows
/*!40000 ALTER TABLE `sniveaugravite` DISABLE KEYS */;
/*!40000 ALTER TABLE `sniveaugravite` ENABLE KEYS */;

-- Export de la structure de la table avenger. sniveauurgence
CREATE TABLE IF NOT EXISTS `sniveauurgence` (
  `CODEURGENCE` int(11) NOT NULL AUTO_INCREMENT,
  `NIVEAUXURGENCE` int(11) NOT NULL,
  `NATUREURGENCE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODEURGENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.sniveauurgence : 0 rows
/*!40000 ALTER TABLE `sniveauurgence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sniveauurgence` ENABLE KEYS */;

-- Export de la structure de la table avenger. stypecrise
CREATE TABLE IF NOT EXISTS `stypecrise` (
  `CODETYPECRISE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMTYPECRISE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODETYPECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.stypecrise : 0 rows
/*!40000 ALTER TABLE `stypecrise` DISABLE KEYS */;
/*!40000 ALTER TABLE `stypecrise` ENABLE KEYS */;

-- Export de la structure de la table avenger. stypelitige
CREATE TABLE IF NOT EXISTS `stypelitige` (
  `CODETYPELITIGE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMTYPELITIGE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODETYPELITIGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.stypelitige : 0 rows
/*!40000 ALTER TABLE `stypelitige` DISABLE KEYS */;
/*!40000 ALTER TABLE `stypelitige` ENABLE KEYS */;

-- Export de la structure de la table avenger. s_identifier
CREATE TABLE IF NOT EXISTS `s_identifier` (
  `IDROLE` int(11) NOT NULL,
  `CODECIVILE` int(11) NOT NULL,
  `LOGINUSER` char(40) DEFAULT NULL,
  `LOGINPWD` char(40) DEFAULT NULL,
  PRIMARY KEY (`IDROLE`,`CODECIVILE`),
  KEY `FK_S_IDENTI_S_IDENTIF_TCIVILE` (`CODECIVILE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.s_identifier : 1 rows
/*!40000 ALTER TABLE `s_identifier` DISABLE KEYS */;
INSERT INTO `s_identifier` (`IDROLE`, `CODECIVILE`, `LOGINUSER`, `LOGINPWD`) VALUES
	(1, 1, 'Valentin', 'test');
/*!40000 ALTER TABLE `s_identifier` ENABLE KEYS */;

-- Export de la structure de la table avenger. tadresse
CREATE TABLE IF NOT EXISTS `tadresse` (
  `CODEADRESSE` int(11) NOT NULL AUTO_INCREMENT,
  `NUMERIQUEADRESSE` varchar(64) NOT NULL,
  `CODEPOSTAL` varchar(5) NOT NULL,
  `VILLE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODEADRESSE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tadresse : 0 rows
/*!40000 ALTER TABLE `tadresse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tadresse` ENABLE KEYS */;

-- Export de la structure de la table avenger. tcivile
CREATE TABLE IF NOT EXISTS `tcivile` (
  `CODECIVILE` int(11) NOT NULL AUTO_INCREMENT,
  `CODEADRESSE` int(11) NOT NULL,
  `CODESUPER` int(11) DEFAULT NULL,
  `NOMCIVILE` varchar(32) NOT NULL,
  `PRENOMCIVILE` varchar(32) NOT NULL,
  `CIVILITERCIVILE` smallint(6) DEFAULT NULL,
  `DATENAISSANCE` date NOT NULL,
  `DATEDECES` date DEFAULT NULL,
  `COMMENTAIRECIVIL` varchar(4096) DEFAULT NULL,
  `DATEAJOUTCIVIL` date NOT NULL,
  `DATEDERNIERMODIFCIVIL` date DEFAULT NULL,
  `TELCIVIL` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CODECIVILE`),
  KEY `FK_TCIVILE_ETRE2_TSUPER` (`CODESUPER`),
  KEY `FK_TCIVILE_HABITER_TADRESSE` (`CODEADRESSE`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tcivile : 5 rows
/*!40000 ALTER TABLE `tcivile` DISABLE KEYS */;
INSERT INTO `tcivile` (`CODECIVILE`, `CODEADRESSE`, `CODESUPER`, `NOMCIVILE`, `PRENOMCIVILE`, `CIVILITERCIVILE`, `DATENAISSANCE`, `DATEDECES`, `COMMENTAIRECIVIL`, `DATEAJOUTCIVIL`, `DATEDERNIERMODIFCIVIL`, `TELCIVIL`) VALUES
	(1, 1, NULL, 'Maillard', 'Valentin', 1, '1998-01-10', NULL, NULL, '2019-01-10', NULL, NULL),
	(2, 1, NULL, 'Maillard', 'Valentin', NULL, '2002-04-12', NULL, NULL, '2019-04-16', NULL, NULL),
	(3, 3, NULL, 'Quedeville', 'Tony', NULL, '1983-04-16', NULL, NULL, '2019-04-16', NULL, NULL),
	(4, 2, NULL, 'Couerbe', 'Christophe', NULL, '1996-04-16', NULL, NULL, '2019-04-16', NULL, NULL),
	(5, 2, NULL, 'Bellenoue', 'Antoine', NULL, '2005-04-16', NULL, NULL, '2018-04-16', NULL, NULL);
/*!40000 ALTER TABLE `tcivile` ENABLE KEYS */;

-- Export de la structure de la table avenger. tcrise
CREATE TABLE IF NOT EXISTS `tcrise` (
  `CODECRISE` int(11) NOT NULL AUTO_INCREMENT,
  `CODETYPECRISE` int(11) NOT NULL,
  `NOMCRISE` varchar(32) NOT NULL,
  `DETAILCRISE` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`CODECRISE`),
  KEY `FK_TCRISE_AVOIR2_STYPECRI` (`CODETYPECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tcrise : 0 rows
/*!40000 ALTER TABLE `tcrise` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcrise` ENABLE KEYS */;

-- Export de la structure de la table avenger. tincidents
CREATE TABLE IF NOT EXISTS `tincidents` (
  `CODEINCIDENT` int(11) NOT NULL AUTO_INCREMENT,
  `CODECIVILE` int(11) NOT NULL,
  `CODEORGANISATION` int(11) NOT NULL,
  `CODEADRESSE` int(11) NOT NULL,
  `TITREINCIDENT` varchar(32) NOT NULL,
  `DESCRIPTIONINCIDENT` varchar(4096) NOT NULL,
  `SUIVIEINCIDENT` tinyint(1) NOT NULL,
  PRIMARY KEY (`CODEINCIDENT`),
  KEY `FK_TINCIDEN_CREER_TCIVILE` (`CODECIVILE`),
  KEY `FK_TINCIDEN_DECLARER_TORGANIS` (`CODEORGANISATION`),
  KEY `FK_TINCIDEN_LOCLISER_TADRESSE` (`CODEADRESSE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tincidents : 0 rows
/*!40000 ALTER TABLE `tincidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tincidents` ENABLE KEYS */;

-- Export de la structure de la table avenger. tlitige
CREATE TABLE IF NOT EXISTS `tlitige` (
  `CODELITIGE` int(11) NOT NULL AUTO_INCREMENT,
  `CODETYPELITIGE` int(11) NOT NULL,
  `COUTLITIGE` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`CODELITIGE`),
  KEY `FK_TLITIGE_AVOIR_STYPELIT` (`CODETYPELITIGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tlitige : 0 rows
/*!40000 ALTER TABLE `tlitige` DISABLE KEYS */;
/*!40000 ALTER TABLE `tlitige` ENABLE KEYS */;

-- Export de la structure de la table avenger. tmissions
CREATE TABLE IF NOT EXISTS `tmissions` (
  `CODEMISSION` int(11) NOT NULL AUTO_INCREMENT,
  `CODEGRAVITE` int(11) NOT NULL,
  `CODEURGENCE` int(11) DEFAULT NULL,
  `NATURE` varchar(32) NOT NULL,
  `TITRE` varchar(64) NOT NULL,
  `DATEDEBUTMISSION` date NOT NULL,
  `DATEFINMISSION` date NOT NULL,
  `INFOCOMMENTAIRE` varchar(4092) NOT NULL,
  PRIMARY KEY (`CODEMISSION`),
  KEY `FK_TMISSION_GRAVITE_M_SNIVEAUG` (`CODEGRAVITE`),
  KEY `FK_TMISSION_URGENCE_M_SNIVEAUU` (`CODEURGENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tmissions : 0 rows
/*!40000 ALTER TABLE `tmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmissions` ENABLE KEYS */;

-- Export de la structure de la table avenger. torganisation
CREATE TABLE IF NOT EXISTS `torganisation` (
  `CODEORGANISATION` int(11) NOT NULL AUTO_INCREMENT,
  `CODEADRESSE` int(11) NOT NULL,
  `NOMORGANISATION` varchar(32) NOT NULL,
  `DATEDERNIREMODIFORGANISATION` date DEFAULT NULL,
  `COMMENTAIREORGANISATION` varchar(4096) DEFAULT NULL,
  `DATEJOUTORGANISATION` date DEFAULT NULL,
  PRIMARY KEY (`CODEORGANISATION`),
  KEY `FK_TORGANIS_SIEGER_TADRESSE` (`CODEADRESSE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.torganisation : 0 rows
/*!40000 ALTER TABLE `torganisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `torganisation` ENABLE KEYS */;

-- Export de la structure de la table avenger. trapport
CREATE TABLE IF NOT EXISTS `trapport` (
  `CODERAPPORT` int(11) NOT NULL AUTO_INCREMENT,
  `DETAIL` text NOT NULL,
  PRIMARY KEY (`CODERAPPORT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.trapport : 0 rows
/*!40000 ALTER TABLE `trapport` DISABLE KEYS */;
/*!40000 ALTER TABLE `trapport` ENABLE KEYS */;

-- Export de la structure de la table avenger. tregistre
CREATE TABLE IF NOT EXISTS `tregistre` (
  `CODEVRAC` int(11) NOT NULL AUTO_INCREMENT,
  `CHEMINVRAC` text NOT NULL,
  PRIMARY KEY (`CODEVRAC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tregistre : 0 rows
/*!40000 ALTER TABLE `tregistre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tregistre` ENABLE KEYS */;

-- Export de la structure de la table avenger. trole
CREATE TABLE IF NOT EXISTS `trole` (
  `IDROLE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBROLE` char(40) DEFAULT NULL,
  PRIMARY KEY (`IDROLE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.trole : 0 rows
/*!40000 ALTER TABLE `trole` DISABLE KEYS */;
/*!40000 ALTER TABLE `trole` ENABLE KEYS */;

-- Export de la structure de la table avenger. tsatisfaction
CREATE TABLE IF NOT EXISTS `tsatisfaction` (
  `CODESATISFACTION` int(11) NOT NULL AUTO_INCREMENT,
  `NOTEGLOBAL` int(11) DEFAULT NULL,
  `COMMENTAIRESATISFACTION` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`CODESATISFACTION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tsatisfaction : 0 rows
/*!40000 ALTER TABLE `tsatisfaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsatisfaction` ENABLE KEYS */;

-- Export de la structure de la table avenger. tsuper
CREATE TABLE IF NOT EXISTS `tsuper` (
  `CODESUPER` int(11) NOT NULL AUTO_INCREMENT,
  `CODECIVILE` int(11) NOT NULL,
  `POUVOIRSUPER` varchar(32) NOT NULL,
  `POINTFAIBLESUPER` varchar(32) NOT NULL,
  `SCORESUPER` int(11) NOT NULL,
  `COMMENTAIRESUPER` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`CODESUPER`),
  KEY `FK_TSUPER_ETRE_TCIVILE` (`CODECIVILE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tsuper : 0 rows
/*!40000 ALTER TABLE `tsuper` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsuper` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
