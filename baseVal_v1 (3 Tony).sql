-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           10.3.9-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.civil : ~13 rows (environ)
/*!40000 ALTER TABLE `civil` DISABLE KEYS */;
INSERT INTO `civil` (`id`, `adresse`, `civiliter`, `commentaire`, `dateDeces`, `dateNaissance`, `nom`, `prenom`, `pseudo`) VALUES
	(1, '395 rue des Héros', '1', 'Le légendaire Valentin', NULL, '2019-04-16 10:22:19', 'Maillard', 'Valentin', 'Le Légendaire'),
	(2, '27 rue des Sages', '1', 'Il maîtrise mille sort', NULL, '2019-04-17 10:23:00', 'Couerbe', 'Christophe', 'Le magicien'),
	(3, '395 rue de Verdun', 'Monsieur', 'Victime de guerre', '1918-04-13 22:00:00', '1914-04-05 22:00:00', 'Millor', 'Edouard', 'Poilu'),
	(4, '44 Rue du machin chose', 'Monsieur\r\n\r\n', 'Contaminé par un tenia extra-terreste', '2019-03-19 21:24:58', '1972-07-13 21:24:43', 'Quedeville', 'Tony', 'Toto'),
	(5, '52 Porcherie de la campagne odorante', 'Monsieur', 'Facheuse tendance à tout bouffer. Accepte en cas de décès de faire dons de son corps à la charcuterie.', '2019-03-19 21:28:05', '1985-04-17 21:28:22', 'Autrui', 'Porcinet', 'Speeder Cochon'),
	(6, '44 Rue du machin chose', 'Madame', 'Vieille dame à roulettes', NULL, '1938-04-17 21:35:15', 'Quedeville', 'Mia', NULL),
	(7, '305 rue des Héros', 'Monsieur', NULL, NULL, '2010-11-25 21:39:23', 'Gradubid', 'norbert', 'Superman'),
	(8, 'planete Uranus, Vallée des hémoroïds, Teniahole', '2', 'Tenia Extra-terreste', NULL, '2002-04-17 21:42:30', NULL, NULL, 'Alien'),
	(9, '25 rue des Robots ridicules', 'Monsieur', 'Ridicule', NULL, '1987-11-27 21:45:40', 'Force', 'Bleu', 'Force Bleu'),
	(10, '25 rue des Robots ridicules', 'Monsieur', 'Ridicule', NULL, '1987-11-27 21:45:40', 'Force', 'Rouge', 'Force Rouge'),
	(11, '25 rue des Robots ridicules', 'Monsieur', 'Ridicule', NULL, '1987-11-27 21:45:40', 'Force', 'Vert', 'Force Vert'),
	(12, '25 rue des Robots ridicules', 'Madame', 'Ridicule', NULL, '1987-11-27 08:00:11', 'Force', 'Rose', 'Force Rose'),
	(13, '25 rue des Robots ridicules', 'Monsieur', 'Ridicule', NULL, '1987-11-27 08:00:11', 'Force', 'Jaune', 'Force Jaune devant marron derrière');
/*!40000 ALTER TABLE `civil` ENABLE KEYS */;

-- Export de la structure de la table avenger. crise
CREATE TABLE IF NOT EXISTS `crise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(5000) DEFAULT NULL,
  `degat` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `litige_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4pampd59br59sjmk1l77fxeop` (`litige_id`),
  CONSTRAINT `FK4pampd59br59sjmk1l77fxeop` FOREIGN KEY (`litige_id`) REFERENCES `litige` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.crise : ~4 rows (environ)
/*!40000 ALTER TABLE `crise` DISABLE KEYS */;
INSERT INTO `crise` (`id`, `commentaire`, `degat`, `description`, `titre`, `litige_id`) VALUES
	(1, 'C\'est une crise internationale', 'Catastrophe écologiqu', 'Il a des lunettes et il est méchant', 'La crise du siècle', 1),
	(2, 'Test', 'Destruction planétaire totale', 'Le vilain suspect', 'La crise du siècle 2019', 2),
	(3, 'C\'est la crise sur le gateau !', 'Destruction d\'infrastructure', 'Hulk Défonce la Tour Effeil', 'Hulk gaga', NULL),
	(4, 'L\'Avenger Speeder Cochon en charge d\'intervenir pour sauver le citoyen attaqué par un alien aurait volontairement négligé sa tâche pour satisfaire un insassiable besoin de se nourrir. Le porcin aurait mordu les cuisses de la mère de la victime. La pauvre dame a du être amputé du reste de ses deux jambes. ', NULL, 'Signalement d\'Avenger pas net', 'Attaque d\'aliens', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.incident : ~4 rows (environ)
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` (`id`, `date`, `description`, `titre`, `civil_id`) VALUES
	(1, '2019-04-17 11:36:54', 'test', 'titre', 1),
	(2, '2019-04-17 09:47:21', 'Description\r\n                            ', 'titre', NULL),
	(3, '2019-04-17 12:05:23', 'dsqx', 'titre', 3),
	(4, '2019-04-17 10:18:53', 'Hulk est vert\r\n                            ', 'Attaque à New York', 1),
	(5, '2019-03-23 23:15:01', 'Un citoyen contaminé se fait dévorer le visage par un alien sorti de sa bouche.', 'Attaque d\'alien', NULL);
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;

-- Export de la structure de la table avenger. incident_mission
CREATE TABLE IF NOT EXISTS `incident_mission` (
  `CODEINCIDENT` int(11) NOT NULL,
  `CODEMISSION` int(11) NOT NULL,
  PRIMARY KEY (`CODEINCIDENT`,`CODEMISSION`),
  KEY `FK_INCIDENT_INCIDENT__TMISSION` (`CODEMISSION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.incident_mission : 3 rows
/*!40000 ALTER TABLE `incident_mission` DISABLE KEYS */;
INSERT INTO `incident_mission` (`CODEINCIDENT`, `CODEMISSION`) VALUES
	(1, 1),
	(4, 2),
	(5, 4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.litige : ~3 rows (environ)
/*!40000 ALTER TABLE `litige` DISABLE KEYS */;
INSERT INTO `litige` (`id`, `cout`, `date`, `objet`, `type`, `prejudice_id`) VALUES
	(1, 5, '2019-04-03 22:00:00', 'Il m\'a prit mon gouter', 'Relationnel', 2),
	(2, 100, '2019-04-16 22:00:00', 'Il a bouffer ma pizza', 'Préjudice moral', 2),
	(3, 50000, '2019-03-23 22:14:13', 'Avenger pas bien dans sa tête de cochon', 'Décès', 4);
/*!40000 ALTER TABLE `litige` ENABLE KEYS */;

-- Export de la structure de la table avenger. litige_crise
CREATE TABLE IF NOT EXISTS `litige_crise` (
  `CODELITIGE` int(11) NOT NULL,
  `CODECRISE` int(11) NOT NULL,
  `HISTORIQUELTIGE` date DEFAULT NULL,
  PRIMARY KEY (`CODELITIGE`,`CODECRISE`),
  KEY `FK_LITIGE_C_LITIGE_CR_TCRISE` (`CODECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.litige_crise : 3 rows
/*!40000 ALTER TABLE `litige_crise` DISABLE KEYS */;
INSERT INTO `litige_crise` (`CODELITIGE`, `CODECRISE`, `HISTORIQUELTIGE`) VALUES
	(1, 1, NULL),
	(2, 2, NULL),
	(3, 3, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.mission : ~4 rows (environ)
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` (`id`, `adresseDepart`, `adresseMission`, `dateDebut`, `dateFin`, `description`, `gravite`, `nature`, `titre`, `urgence`, `incident_id`) VALUES
	(1, 'départ', 'mission adresse', '2019-04-04 22:00:00', '2019-04-03 22:00:00', 'Description', 'Grave', 'Nature', 'Test Titre', 'Ouhlala', 2),
	(2, 'QG', 'Empire State', '2019-04-17 22:00:00', '2019-04-26 22:00:00', 'Il est incontrôlable, stopper le', 'Super Grave', 'Arrêter Hulk', 'Hulk le déchainé', 'Ouhlala', 1),
	(3, 'QG', 'Tour Eiffel', '2019-04-18 22:00:00', '2019-04-13 22:00:00', 'Description test', 'Super Grave', 'Calmer Hulk', 'Hulk le déchainé2', 'Ouhlala', 4),
	(4, '52 Porcherie de la campagne odorante', '44 Rue du machin chose', '2019-03-23 23:18:27', '2019-03-23 23:18:38', 'Sauver un citoyen contaminé par un tenia extra-terrestre', 'Super Grave', 'Sauvetage de citoyen', 'Attaque d\'alien', 'Faut y aller !', NULL);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;

-- Export de la structure de la table avenger. mission_rapport
CREATE TABLE IF NOT EXISTS `mission_rapport` (
  `CODERAPPORT` int(11) NOT NULL,
  `CODEMISSION` int(11) NOT NULL,
  PRIMARY KEY (`CODERAPPORT`,`CODEMISSION`),
  KEY `FK_MISSION__MISSION_R_TMISSION` (`CODEMISSION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.mission_rapport : 2 rows
/*!40000 ALTER TABLE `mission_rapport` DISABLE KEYS */;
INSERT INTO `mission_rapport` (`CODERAPPORT`, `CODEMISSION`) VALUES
	(1, 4),
	(2, 3);
/*!40000 ALTER TABLE `mission_rapport` ENABLE KEYS */;

-- Export de la structure de la table avenger. prejudice
CREATE TABLE IF NOT EXISTS `prejudice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `victime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Export de données de la table avenger.prejudice : ~6 rows (environ)
/*!40000 ALTER TABLE `prejudice` DISABLE KEYS */;
INSERT INTO `prejudice` (`id`, `type`, `victime`) VALUES
	(1, 'Egratignure', 'Citoyen Lambda'),
	(2, 'Insulte', 'Adveger Lambda'),
	(3, 'Blessure', NULL),
	(4, 'Amputation', 'Vieille dame à roulette'),
	(5, 'Décès', 'Toto'),
	(6, 'Sucide collectif', NULL);
/*!40000 ALTER TABLE `prejudice` ENABLE KEYS */;

-- Export de la structure de la table avenger. rapport_crise
CREATE TABLE IF NOT EXISTS `rapport_crise` (
  `CODERAPPORT` int(11) NOT NULL,
  `CODECRISE` int(11) NOT NULL,
  `HISTORIQUEDATE` date DEFAULT NULL,
  PRIMARY KEY (`CODERAPPORT`,`CODECRISE`),
  KEY `FK_RAPPORT__RAPPORT_C_TCRISE` (`CODECRISE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.rapport_crise : 2 rows
/*!40000 ALTER TABLE `rapport_crise` DISABLE KEYS */;
INSERT INTO `rapport_crise` (`CODERAPPORT`, `CODECRISE`, `HISTORIQUEDATE`) VALUES
	(1, 4, NULL),
	(2, 2, NULL);
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

-- Export de données de la table avenger.satisfaction_rapport : 2 rows
/*!40000 ALTER TABLE `satisfaction_rapport` DISABLE KEYS */;
INSERT INTO `satisfaction_rapport` (`CODESATISFACTION`, `CODERAPPORT`) VALUES
	(1, 1),
	(2, 2);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.sniveaugravite : 4 rows
/*!40000 ALTER TABLE `sniveaugravite` DISABLE KEYS */;
INSERT INTO `sniveaugravite` (`CODEGRAVITE`, `VALEURGRAVITE`, `NOMGRAVITE`) VALUES
	(1, 1, 'Même pas mal'),
	(2, 2, 'Grave'),
	(3, 3, 'Super grave'),
	(4, 4, 'Gravissime');
/*!40000 ALTER TABLE `sniveaugravite` ENABLE KEYS */;

-- Export de la structure de la table avenger. sniveauurgence
CREATE TABLE IF NOT EXISTS `sniveauurgence` (
  `CODEURGENCE` int(11) NOT NULL AUTO_INCREMENT,
  `NIVEAUXURGENCE` int(11) NOT NULL,
  `NATUREURGENCE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODEURGENCE`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.sniveauurgence : 5 rows
/*!40000 ALTER TABLE `sniveauurgence` DISABLE KEYS */;
INSERT INTO `sniveauurgence` (`CODEURGENCE`, `NIVEAUXURGENCE`, `NATUREURGENCE`) VALUES
	(1, 1, 'Peut attendre'),
	(2, 2, 'Faut y aller'),
	(3, 3, 'Ouh, la, la !'),
	(4, 4, 'Critique'),
	(5, 5, 'Fin du monde');
/*!40000 ALTER TABLE `sniveauurgence` ENABLE KEYS */;

-- Export de la structure de la table avenger. stypecrise
CREATE TABLE IF NOT EXISTS `stypecrise` (
  `CODETYPECRISE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMTYPECRISE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODETYPECRISE`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.stypecrise : 7 rows
/*!40000 ALTER TABLE `stypecrise` DISABLE KEYS */;
INSERT INTO `stypecrise` (`CODETYPECRISE`, `NOMTYPECRISE`) VALUES
	(1, 'Signalement de vilain pas beau'),
	(2, 'Signalement d\'Avenger pas net'),
	(3, 'Signalement de supers ripoux'),
	(4, 'Dégât materiel'),
	(5, 'Destruction d\'infrastructure'),
	(6, 'Catastrophe écologique'),
	(7, 'Destruction planétaire totale');
/*!40000 ALTER TABLE `stypecrise` ENABLE KEYS */;

-- Export de la structure de la table avenger. stypelitige
CREATE TABLE IF NOT EXISTS `stypelitige` (
  `CODETYPELITIGE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMTYPELITIGE` varchar(32) NOT NULL,
  PRIMARY KEY (`CODETYPELITIGE`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.stypelitige : 5 rows
/*!40000 ALTER TABLE `stypelitige` DISABLE KEYS */;
INSERT INTO `stypelitige` (`CODETYPELITIGE`, `NOMTYPELITIGE`) VALUES
	(1, 'Financier'),
	(2, 'Relationnel'),
	(3, 'Transaction immobilière'),
	(4, 'Préjudice moral'),
	(5, 'Handicap physique');
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tadresse : 10 rows
/*!40000 ALTER TABLE `tadresse` DISABLE KEYS */;
INSERT INTO `tadresse` (`CODEADRESSE`, `NUMERIQUEADRESSE`, `CODEPOSTAL`, `VILLE`) VALUES
	(1, '52 Porcherie de la campagne odorante', '76360', 'Barentin'),
	(2, '14 Brigade du joyeux flic', '76000', 'Rouen'),
	(3, '25 rue Super Naze', '75000', 'Paris'),
	(4, '13 avenue rapide', '27000', 'Flers'),
	(5, 'planete Jupiter', '0023x', 'TropoPause'),
	(6, '23 Rue du nipon ridicule', '25041', 'Tokyo'),
	(7, 'Planete jupiter', '0002x', 'Cassini'),
	(8, 'Planete Uranus', '0003c', 'Trouduculdumonde'),
	(9, 'Planete Uranus', '0004c', 'Hémoroïde'),
	(10, 'Planete Mars', '0054s', 'Monseintanien');
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.torganisation : 6 rows
/*!40000 ALTER TABLE `torganisation` DISABLE KEYS */;
INSERT INTO `torganisation` (`CODEORGANISATION`, `CODEADRESSE`, `NOMORGANISATION`, `DATEDERNIREMODIFORGANISATION`, `COMMENTAIREORGANISATION`, `DATEJOUTORGANISATION`) VALUES
	(1, 1, 'Cochon dans l\'espace', NULL, 'Cochons qui sent détruit !', NULL),
	(2, 2, 'Super Flics', NULL, 'Mais que fait la police ?', NULL),
	(3, 3, 'Magiciens nazes', NULL, 'Abracadabra', NULL),
	(4, 5, 'Super Heros', NULL, 'Prend la fuite', NULL),
	(5, 4, 'Super en plastique', NULL, 'Man ken pisse', NULL),
	(6, 6, 'Biomans', NULL, 'Force Couleur', NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Export de données de la table avenger.tsuper : 9 rows
/*!40000 ALTER TABLE `tsuper` DISABLE KEYS */;
INSERT INTO `tsuper` (`CODESUPER`, `CODECIVILE`, `POUVOIRSUPER`, `POINTFAIBLESUPER`, `SCORESUPER`, `COMMENTAIRESUPER`) VALUES
	(1, 5, 'Super laxatif', 'Super dégueu', -12, 'Super mais pas tant que ça'),
	(2, 7, 'Super Costo', 'Super lourd', 5, 'Gras du bide'),
	(3, 1, 'Super Mignon', 'Super mal au cul', 25, 'Legendaire'),
	(4, 2, 'Super Magic', 'Super stressé', 21, 'Taquin'),
	(5, 9, 'Super Bleu', 'Super ridicule', 2, NULL),
	(6, 10, 'Super Rouge', 'Super ridicule', 2, NULL),
	(7, 11, 'Super Vert', 'Super ridicule', 2, NULL),
	(8, 12, 'Super Rose', 'Super ridicule', 2, NULL),
	(9, 13, 'Super Jaune devant...', 'Super ridicule', -2, NULL);
/*!40000 ALTER TABLE `tsuper` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
