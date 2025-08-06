-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: europa-park
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `europa-park`
--

/*!40000 DROP DATABASE IF EXISTS `europa-park`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `europa-park` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `europa-park`;

--
-- Table structure for table `addition_restaurant`
--

DROP TABLE IF EXISTS `addition_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addition_restaurant` (
  `NomRestaurant` varchar(255) NOT NULL,
  `NoClient` int NOT NULL,
  `DateHeure` datetime NOT NULL,
  `PrixResto` float DEFAULT NULL,
  PRIMARY KEY (`NomRestaurant`,`NoClient`,`DateHeure`),
  KEY `NoClient` (`NoClient`),
  CONSTRAINT `addition_restaurant_ibfk_1` FOREIGN KEY (`NomRestaurant`) REFERENCES `restauration` (`NomRestaurant`),
  CONSTRAINT `addition_restaurant_ibfk_2` FOREIGN KEY (`NoClient`) REFERENCES `client` (`NoClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addition_restaurant`
--

LOCK TABLES `addition_restaurant` WRITE;
/*!40000 ALTER TABLE `addition_restaurant` DISABLE KEYS */;
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Adventure Food Station',2,'2024-05-01 12:15:00',10.75);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Bar chez Marianne',3,'2024-05-01 14:00:00',8.2);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Biergarten Badois Bavarois',4,'2024-05-01 13:45:00',12.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Biergarten Erdinger',5,'2024-05-04 12:00:00',15.3);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Bistro Tomi Ungerer',6,'2024-05-04 19:00:00',25);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Burger Porter',7,'2024-05-04 11:30:00',9.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Burger Porter',7,'2024-05-04 14:00:00',8);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Burger Porter',46,'2024-06-01 14:00:00',10.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Café Benedetto',8,'2024-05-04 16:45:00',6.8);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Casa Atlantica',9,'2024-05-05 13:00:00',20);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Cave à vin valaisanne',10,'2024-05-05 18:30:00',18.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('CMAK - Russian Food and Burger',11,'2024-05-05 12:30:00',11);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('CocaCola Refreshing Station',1,'2024-05-01 10:30:00',5.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Crocodile Bar',13,'2024-05-08 17:00:00',9);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('DELI Refresh - Glaces et boissons',14,'2024-05-08 11:15:00',5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('DELI Refresh - Glaces et boissons',45,'2024-06-01 11:30:00',6);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Europa-Park Rock Café',15,'2024-05-08 13:30:00',14);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Fashion World Lounge',16,'2024-05-11 15:00:00',8.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Fiskehuset',17,'2024-05-11 18:00:00',20);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('FJORD Restaurant',18,'2024-05-11 12:45:00',16);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('FoodLoop',19,'2024-05-12 13:15:00',22.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('FoodLoop',47,'2024-06-01 13:15:00',22.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Friethuys',20,'2024-05-12 11:30:00',9.2);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Gelateria',21,'2024-05-12 14:45:00',6);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Gelateria',48,'2024-06-01 16:45:00',5.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Heladeria Estrellas',22,'2024-05-12 16:00:00',7.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Is Huset',23,'2024-05-15 12:15:00',18.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Jacks DELI',24,'2024-05-15 13:30:00',9);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Kaffi Hus',25,'2024-05-18 10:45:00',4);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('La petite boulangerie',26,'2024-05-18 12:00:00',5.2);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Langnese Happiness Station Silver Star',27,'2024-05-18 14:30:00',6.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Magellan Lounge',28,'2024-05-18 16:00:00',9);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Magnum pleasure store',29,'2024-05-19 11:00:00',5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Maison de la Forêt noire',30,'2024-05-19 13:00:00',12);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Marios Pizza',31,'2024-05-19 18:00:00',10.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Melusina snacks and drinks',32,'2024-05-19 14:30:00',8);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Moby Dick Hot-dogs',33,'2024-05-22 11:15:00',6);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Molencafé',34,'2024-05-22 12:45:00',7);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Motosports bar',35,'2024-05-25 11:00:00',5.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Pastaria di Enzo',36,'2024-05-25 12:30:00',14);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Pizzeria Venezia',37,'2024-05-25 13:45:00',11.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant bamboe bai',39,'2024-05-26 12:00:00',17.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant du château Balthasar',40,'2024-05-26 19:00:00',25);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant du lac',41,'2024-05-26 14:15:00',18);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant Mille Fleurs',42,'2024-05-26 12:30:00',15.5);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant petite France',43,'2024-05-29 13:15:00',13);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant Spices',44,'2024-05-29 14:00:00',18);
INSERT INTO `addition_restaurant` (`NomRestaurant`, `NoClient`, `DateHeure`, `PrixResto`) VALUES ('Restaurant The Three Piglets',38,'2024-05-25 16:00:00',9);
/*!40000 ALTER TABLE `addition_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attraction`
--

DROP TABLE IF EXISTS `attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attraction` (
  `NomAttraction` varchar(255) NOT NULL,
  `AgeMinSeul` int DEFAULT NULL,
  `AgeMinAccompagne` int DEFAULT NULL,
  `TailleMinSeul` int DEFAULT NULL,
  `TailleMinAccompagne` int DEFAULT NULL,
  `AgeLimite` int DEFAULT NULL,
  `IdPays` int DEFAULT NULL,
  `Coordonnees` varchar(255) DEFAULT NULL,
  `DateOuverture` date DEFAULT NULL,
  `DateFermeture` date DEFAULT NULL,
  `IndicationGrossesse` varchar(3) DEFAULT NULL,
  `DureeParcours` time DEFAULT NULL,
  `VitesseMax` float DEFAULT NULL,
  PRIMARY KEY (`NomAttraction`),
  KEY `IdPays` (`IdPays`),
  CONSTRAINT `attraction_ibfk_1` FOREIGN KEY (`IdPays`) REFERENCES `pays` (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attraction`
--

LOCK TABLES `attraction` WRITE;
/*!40000 ALTER TABLE `attraction` DISABLE KEYS */;
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('À la découverte d’Atlantis',8,0,130,130,NULL,65,'48.2662350, 7.7203100','2024-03-23','2025-01-12','Non','00:06:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Aire de jeu Würmchen Wies’n',0,0,0,0,12,10,'48.2626550, 7.7228710','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Aire de jeux aquatique',0,0,0,0,12,194,'48.2632540, 7.7217240','2024-03-23','2024-11-03','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Alpenexpress Coastiality',6,8,130,100,NULL,10,'48.2620514, 7.7225032','2024-03-23','2025-01-12','Non','00:01:40',45);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Animatronique Tesla',0,0,0,0,NULL,42,'48.2660891, 7.7195594','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Arena of Football',8,4,130,100,NULL,183,'48.2655830, 7.7212630','2024-03-23','2025-01-12','Non','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('ARTHUR',6,4,120,100,NULL,195,'48.2637941, 7.7237550','2024-03-23','2025-01-12','Non','00:04:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Atlantica SuperSplash',8,4,130,100,NULL,140,'48.2620550, 7.7214790','2024-03-23','2024-11-03','Non','00:03:35',80);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Avions Jungfrau Gletscherflieger',10,6,130,120,NULL,167,'48.2668840, 7.7207110','2024-03-23','2025-01-12','Non','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Baaa Express',6,3,120,90,NULL,79,'48.2662370, 7.7232234','2024-03-23','2025-01-12','Non','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Bateau à vapeur Danube',6,0,120,0,NULL,10,'48.2630787, 7.7227149','2024-03-23','2024-09-27','Oui','00:05:10',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Blue Fire Megacoster',7,7,130,130,NULL,74,'48.2627630, 7.7188157','2024-03-23','2025-01-12','Non','00:02:20',100);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Bobsleigh Suisse',8,6,130,120,NULL,167,'48.2664350, 7.7213360','2024-03-23','2025-01-12','Non','00:02:05',50);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Carrousel la ronde des Mühl Mühls',4,0,100,0,NULL,195,'48.2641804, 7.7241713','2024-03-23','2025-01-12','Non',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Casa d’à Aventura',3,NULL,NULL,NULL,12,140,'48.2621390, 7.7217840','2024-03-23','2025-01-12','Non',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Cendrillon',8,4,130,100,NULL,196,'48.2628150, 7.7231420','2024-03-23','2025-01-12',NULL,NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Château de la Belle au bois dormant',8,6,130,120,NULL,167,'48.2644360, 7.7225430','2024-03-23','2025-01-12',NULL,NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Château hanté',8,0,130,0,NULL,81,'48.2678403, 7.7219688','2024-03-23','2025-01-12','Non','00:04:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Circuit Silverston',10,3,130,90,NULL,183,'48.2648530, 7.7213400','2024-03-23','2025-01-12','Non','00:01:45',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Crazy Taxi',6,3,120,90,NULL,183,'48.2655300, 7.7223070','2024-03-23','2025-01-12','Non','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Dame Hiver',0,0,0,0,NULL,196,'48.2639240, 7.7229080','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Dancing Dingie',8,3,130,90,NULL,79,'48.2665180, 7.7239050','2024-03-23','2025-01-12','Non','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Docteur je sais tout',NULL,NULL,NULL,NULL,NULL,196,'48.2631110, 7.7231410','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('EP Express Station Espagne',6,0,120,0,NULL,162,'48.2619390, 7.7217890','2024-03-23','2025-01-12','Oui','00:13:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('EP Express Station Grèce',6,0,120,0,NULL,65,'48.2663160, 7.7200230','2024-03-23','2025-01-12','Oui','00:13:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('EP Express Station Hotels',6,0,120,0,NULL,NULL,'48.2605600, 7.7226230','2024-03-23','2025-01-12','Oui','00:13:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Euro Mir',8,8,130,130,NULL,143,'48.2650678, 7.7201820','2024-03-23','2025-01-12','Non','00:05:00',80);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Euro Tower',6,6,120,120,NULL,59,'48.2671380, 7.7219540','2024-03-23','2025-01-12','Oui','00:03:37',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Eurosat Cancan Coaster',8,6,130,120,NULL,59,'48.2673450, 7.7211300','2024-03-23','2025-01-12','Non','00:03:30',60);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Eurosat Coastiality',12,12,130,130,NULL,59,'48.2674841, 7.7205561','2024-03-23','2025-01-12','Non','00:07:00',60);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Exposition Croatian Inspiration',0,0,0,0,NULL,42,'48.2660141, 7.7193501','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Exposition de poupées Kathe Kruse',0,0,0,0,NULL,196,'48.2671902, 7.7210617','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Express des Alpes Enzian',8,4,130,100,NULL,10,'48.2622090, 7.7226440','2024-03-23','2025-01-12','Non','00:01:40',45);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Feria Swing',10,4,130,100,NULL,162,'48.2614750, 7.7230230','2024-03-23','2025-01-12','Non','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Fjord Rafting',8,4,130,100,NULL,197,'48.2627930, 7.7199010','2024-03-23','2024-11-03','Non','00:04:25',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gare du train panoramique Allemagne',6,0,120,0,NULL,63,'48.2679600, 7.7232540','2024-03-23','2025-01-12','Oui','00:15:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gare du train panoramique Espagne',6,0,120,0,NULL,162,'48.2616000, 7.7229340','2024-03-23','2025-01-12','Oui','00:15:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gare du train panoramique Paddington Station',6,0,120,0,NULL,183,'48.2652631, 7.7219822','2024-03-23','2025-01-12','Oui','00:15:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gare du train panoramique Russie',6,0,120,0,NULL,143,'48.2650550, 7.7205980','2024-03-23','2025-01-12','Oui','00:15:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gare EP Express Alexanderplatz',6,0,120,0,NULL,63,'48.2688835, 7.7220115','2024-03-23','2025-01-12','Oui','00:13:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Gondole des elfes',6,6,120,120,NULL,63,'48.2674350, 7.7227080','2024-03-23','2025-01-12','Oui','00:05:15',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Hall Mercedes Benz',0,0,0,0,NULL,59,'48.2678942, 7.7200671','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Hansel et Gretel',0,0,0,0,NULL,196,'48.2642700, 7.7225140','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Hollandais volant',8,4,130,100,NULL,123,'48.2639458, 7.7207680','2024-03-23','2025-01-12','Non','00:01:35',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Jim Bouton Voyage à travers Lummerland',6,0,120,0,NULL,63,'48.2672320, 7.7227590','2024-03-23','2025-01-12','Oui','00:03:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Josefina et son voyage magique',6,0,120,0,NULL,10,'48.2635010, 7.7218080','2024-03-23','2025-01-12','Oui','00:08:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Koffiekopjes',8,4,130,100,NULL,123,'48.2638943, 7.7204736','2024-03-23','2025-01-12','Non','00:02:50',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Kolumbusjolle',8,4,130,100,NULL,162,'48.2615950, 7.7231120','2024-03-23','2025-01-12','Non','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('L’éclair du Cervin Matterhorn Blitz',8,6,130,120,NULL,167,'48.2669130, 7.7204900','2024-03-23','2025-01-12','Non','00:02:20',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('L’oie d’or',0,0,0,0,NULL,196,'48.2629490, 7.7232140','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('L’univers des marionnettes',6,0,120,0,NULL,63,'48.2669660, 7.7229990','2024-03-23','2025-01-12','Oui','00:04:40',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('La malédiction de Cassandre',8,5,130,110,NULL,65,'48.2663090, 7.7195500','2024-03-23','2025-01-12','Non','00:03:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('La petite table, l\'âne et le baton',0,0,0,0,NULL,196,'48.2628630, 7.7229500','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Le roi Grenouille',0,0,0,0,NULL,196,'48.2639660, 7.7228810','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Le vaillant petit tailleur',0,0,0,0,NULL,196,'48.2631340, 7.7229590','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Les chaises volantes de Vienne',6,4,120,100,NULL,10,'48.2623405, 7.7229756','2024-03-23','2025-01-12','Non','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Les Montgolfières du Liechtenstein',6,0,120,0,NULL,99,'48.2659119, 7.7217131','2024-03-23','2025-01-12','Oui','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Les rapides du Tyrol',8,4,130,100,NULL,10,'48.2626360, 7.7220910','2024-03-23','2024-11-03','Non','00:04:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Limerick Castle',4,NULL,NULL,NULL,12,79,'48.2661000, 7.7235810','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Litill Island Aire de jeux aquatiques hansgrohe',4,4,NULL,NULL,12,74,'48.2615910, 7.7200830','2024-03-23','2024-09-27','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Little Lambs Land',0,0,0,0,NULL,79,'48.2661704, 7.7229774','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('London Bus',6,0,120,0,NULL,183,'48.2653888, 7.7223032','2024-03-23','2025-01-12','Non','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Madame Freudenreich Curiosités',8,0,130,0,NULL,59,'48.2671902, 7.7210617','2024-03-23','2025-01-12','Oui','00:05:50',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Manège Flocon de neige',6,0,120,0,NULL,143,'48.2651875, 7.7204504','2024-03-23','2025-01-12','Oui','00:02:25',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Monorail Island',6,0,120,0,NULL,74,'48.2619820, 7.7198340','2024-03-23','2025-01-12','Oui','00:07:10',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Monorail Luxembourg',6,0,120,0,NULL,101,'48.2644950, 7.7206070','2024-03-23','2025-01-12','Oui','00:07:10',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Musée du Carnaval',0,0,0,0,NULL,63,'48.2680392, 7.7224633','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Old Macdonalds Tractor',6,0,120,0,NULL,79,'48.2664010, 7.7230510','2024-03-23','2025-01-12','Oui','00:01:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Parcours de tacots',8,0,130,0,NULL,63,'48.2647710, 7.7206180','2024-03-23','2025-01-12','Oui','00:02:38',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Paul playboat',0,0,0,0,12,79,'48.2664650, 7.7233540','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Pegasus',8,4,130,100,NULL,65,'48.2677860, 7.7193510','2024-03-23','2025-01-12','Non','00:02:11',65);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Piccolo Mondo',6,0,120,0,NULL,81,'48.2674487, 7.7219302','2024-03-23','2025-01-12','Oui','00:03:10',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Pirates de Batavia',8,0,130,0,NULL,123,'48.2635708, 7.7204008','2024-03-23','2025-01-12','Oui','00:08:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Poseidon grand huit aquatique',8,6,130,120,NULL,65,'48.2665768, 7.7194430','2024-03-23','2025-01-12','Non','00:05:50',70);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Queens Diamonds',10,10,NULL,NULL,NULL,183,'48.2653290, 7.7221280','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Raiponce',0,0,0,0,NULL,196,'48.2629738, 7.7229701','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Salle des Trésors',0,0,0,0,NULL,63,'48.2685000, 7.7225660','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Sentier Découverte des Yomis',5,5,0,0,NULL,10,'48.2641196, 7.7227773','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Sheep Rock',6,0,120,0,NULL,79,'48.2663094, 7.7229039','2024-03-23','2025-01-12','Oui',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Silverstar',11,11,140,140,NULL,59,'48.2660593, 7.7213630','2024-03-23','2025-01-12','Non','00:03:00',130);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Snorri Touren',8,0,130,0,NULL,197,'48.2628633, 7.7201675','2024-03-23','2025-01-12','Oui','00:04:30',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Spinning Dragons',6,4,130,120,NULL,79,'48.2663094, 7.7229039','2024-03-23','2025-01-12','Non','00:01:45',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('The british Carousel',6,0,120,0,NULL,183,'48.2647530, 7.7215340','2024-03-23','2025-01-12','Oui','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Tourlicots',6,4,120,100,NULL,195,'48.2648530, 7.7213400','2024-03-23','2025-01-12','Non',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Tower Tow',8,3,130,95,NULL,79,'48.2661990, 7.7226920','2024-03-23','2025-01-12','Non','00:01:40',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Vindjammer',8,4,130,100,NULL,197,'48.2627100, 7.7207260','2024-03-23','2025-01-12','Non','00:02:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Voletarium',8,4,130,100,NULL,63,'48.2691820, 7.7224300','2024-03-23','2025-01-12','Non','00:04:45',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Volo da Vinci',8,3,130,90,NULL,81,'48.2676620, 7.7222910','2024-03-23','2025-01-12','Oui','00:05:00',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Voltron nevera powered by Rimac',8,8,130,130,NULL,42,'48.2657545, 7.7196329','2024-03-23','2025-01-12','Non','00:03:00',100);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Voyage à Rulantica',8,8,130,130,NULL,101,'48.2645200, 7.7206300','2024-03-23','2025-01-12','Non',NULL,NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Whale adventures northern lights',8,0,130,0,NULL,74,'48.2617700, 7.7192260','2024-03-23','2025-01-12','Oui','00:04:40',NULL);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Woodan Timburcoaster',8,6,130,120,NULL,74,'48.2616710, 7.7185668','2024-03-23','2025-01-12','Non','00:02:30',100);
INSERT INTO `attraction` (`NomAttraction`, `AgeMinSeul`, `AgeMinAccompagne`, `TailleMinSeul`, `TailleMinAccompagne`, `AgeLimite`, `IdPays`, `Coordonnees`, `DateOuverture`, `DateFermeture`, `IndicationGrossesse`, `DureeParcours`, `VitesseMax`) VALUES ('Yullbe go au blue fire dome',8,5,0,0,NULL,63,'48.2627960, 7.7187710','2024-03-23','2025-01-12','Non',NULL,NULL);
/*!40000 ALTER TABLE `attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billet`
--

DROP TABLE IF EXISTS `billet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billet` (
  `NoBillet` int NOT NULL,
  `NoClient` int NOT NULL,
  `DateDebutValidite` date DEFAULT NULL,
  `IdCategorie` int NOT NULL,
  PRIMARY KEY (`NoBillet`),
  KEY `NoClient` (`NoClient`),
  KEY `IdCategorie` (`IdCategorie`),
  CONSTRAINT `billet_ibfk_1` FOREIGN KEY (`NoClient`) REFERENCES `client` (`NoClient`),
  CONSTRAINT `billet_ibfk_2` FOREIGN KEY (`IdCategorie`) REFERENCES `categorie_billet` (`IdCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billet`
--

LOCK TABLES `billet` WRITE;
/*!40000 ALTER TABLE `billet` DISABLE KEYS */;
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (1,1,'2024-05-01',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (2,2,'2024-05-01',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (3,3,'2024-05-01',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (4,4,'2024-05-01',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (5,5,'2024-05-04',6);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (6,6,'2024-05-04',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (7,7,'2024-05-04',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (8,8,'2024-05-04',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (9,9,'2024-05-05',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (10,10,'2024-05-05',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (11,11,'2024-05-05',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (12,12,'2024-05-05',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (13,13,'2024-05-08',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (14,14,'2024-05-08',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (15,15,'2024-05-08',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (16,16,'2024-05-11',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (17,17,'2024-05-11',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (18,18,'2024-05-11',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (19,19,'2024-05-12',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (20,20,'2024-05-12',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (21,21,'2024-05-12',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (22,22,'2024-05-12',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (23,23,'2024-05-15',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (24,24,'2024-05-15',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (25,25,'2024-05-18',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (26,26,'2024-05-18',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (27,27,'2024-05-18',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (28,28,'2024-05-18',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (29,29,'2024-05-19',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (30,30,'2024-05-19',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (31,31,'2024-05-19',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (32,32,'2024-05-19',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (33,33,'2024-05-22',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (34,34,'2024-05-22',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (35,35,'2024-05-25',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (36,36,'2024-05-25',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (37,37,'2024-05-25',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (38,38,'2024-05-25',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (39,39,'2024-05-26',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (40,40,'2024-05-26',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (41,41,'2024-05-26',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (42,42,'2024-05-26',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (43,43,'2024-05-29',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (44,44,'2024-05-29',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (45,45,'2024-06-01',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (46,46,'2024-06-01',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (47,47,'2024-06-01',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (48,48,'2024-06-01',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (49,49,'2024-06-02',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (50,50,'2024-06-02',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (51,51,'2024-06-02',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (52,52,'2024-06-02',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (53,53,'2024-06-05',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (54,54,'2024-06-05',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (55,55,'2024-06-08',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (56,56,'2024-06-08',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (57,57,'2024-06-08',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (58,58,'2024-06-08',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (59,59,'2024-06-09',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (60,60,'2024-06-09',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (61,61,'2024-06-09',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (62,62,'2024-06-09',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (63,63,'2024-06-12',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (64,64,'2024-06-12',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (65,65,'2024-06-15',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (66,66,'2024-06-15',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (67,67,'2024-06-15',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (68,68,'2024-06-15',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (69,69,'2024-06-16',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (70,70,'2024-06-16',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (71,71,'2024-06-16',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (72,72,'2024-06-16',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (73,73,'2024-06-19',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (74,74,'2024-06-19',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (75,75,'2024-06-22',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (76,76,'2024-06-22',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (77,77,'2024-06-22',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (78,78,'2024-06-22',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (79,79,'2024-06-23',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (80,80,'2024-06-23',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (81,81,'2024-06-23',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (82,82,'2024-06-23',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (83,83,'2024-06-26',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (84,84,'2024-06-26',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (85,85,'2024-06-29',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (86,86,'2024-06-29',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (87,87,'2024-06-29',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (88,88,'2024-06-29',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (89,89,'2024-06-30',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (90,90,'2024-06-30',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (91,91,'2024-06-30',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (92,92,'2024-06-30',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (93,93,'2024-07-03',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (94,94,'2024-07-03',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (95,95,'2024-07-06',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (96,96,'2024-07-06',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (97,97,'2024-07-06',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (98,98,'2024-07-06',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (99,99,'2024-07-07',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (100,100,'2024-07-07',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (101,101,'2024-07-07',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (102,102,'2024-07-07',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (103,103,'2024-07-10',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (104,104,'2024-07-10',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (105,105,'2024-07-13',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (106,106,'2024-07-13',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (107,107,'2024-07-13',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (108,108,'2024-07-13',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (109,109,'2024-07-14',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (110,110,'2024-07-14',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (111,111,'2024-07-14',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (112,112,'2024-07-14',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (113,113,'2024-07-17',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (114,114,'2024-07-17',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (115,115,'2024-07-20',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (116,116,'2024-07-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (117,117,'2024-07-20',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (118,118,'2024-07-20',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (119,119,'2024-07-21',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (120,120,'2024-07-21',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (121,121,'2024-07-21',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (122,122,'2024-07-21',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (123,123,'2024-07-24',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (124,124,'2024-07-24',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (125,125,'2024-07-27',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (126,126,'2024-07-27',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (127,127,'2024-07-27',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (128,128,'2024-07-27',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (129,129,'2024-07-28',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (130,130,'2024-07-28',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (131,131,'2024-07-28',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (132,132,'2024-07-28',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (133,133,'2024-07-31',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (134,134,'2024-07-31',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (135,135,'2024-08-03',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (136,136,'2024-08-03',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (137,137,'2024-08-03',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (138,138,'2024-08-03',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (139,139,'2024-08-04',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (140,140,'2024-08-04',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (141,141,'2024-08-04',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (142,142,'2024-08-04',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (143,143,'2024-08-07',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (144,144,'2024-08-07',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (145,145,'2024-08-10',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (146,146,'2024-08-10',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (147,147,'2024-08-10',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (148,148,'2024-08-10',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (149,149,'2024-08-11',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (150,150,'2024-08-11',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (151,151,'2024-08-11',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (152,152,'2024-08-11',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (153,153,'2024-08-14',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (154,154,'2024-08-14',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (155,155,'2024-08-17',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (156,156,'2024-08-17',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (157,157,'2024-08-17',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (158,158,'2024-08-17',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (159,159,'2024-08-18',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (160,160,'2024-08-18',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (161,161,'2024-08-18',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (162,162,'2024-08-18',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (163,163,'2024-08-21',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (164,164,'2024-08-21',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (165,165,'2024-08-24',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (166,166,'2024-08-24',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (167,167,'2024-08-24',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (168,168,'2024-08-24',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (169,169,'2024-08-25',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (170,170,'2024-08-25',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (171,171,'2024-08-25',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (172,172,'2024-08-25',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (173,173,'2024-08-28',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (174,174,'2024-08-28',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (175,175,'2024-08-31',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (176,176,'2024-08-31',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (177,177,'2024-08-31',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (178,178,'2024-08-31',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (179,179,'2024-09-01',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (180,180,'2024-09-01',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (181,181,'2024-09-01',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (182,182,'2024-09-01',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (183,183,'2024-09-04',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (184,184,'2024-09-04',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (185,185,'2024-09-07',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (186,186,'2024-09-07',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (187,187,'2024-09-07',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (188,188,'2024-09-07',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (189,189,'2024-09-08',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (190,190,'2024-09-08',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (191,191,'2024-09-08',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (192,192,'2024-09-08',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (193,193,'2024-09-11',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (194,194,'2024-09-11',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (195,195,'2024-09-14',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (196,196,'2024-09-14',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (197,197,'2024-09-14',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (198,198,'2024-09-14',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (199,199,'2024-09-15',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (200,200,'2024-09-15',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (201,201,'2024-09-15',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (202,202,'2024-09-15',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (203,203,'2024-09-18',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (204,204,'2024-09-18',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (205,205,'2024-09-21',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (206,206,'2024-09-21',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (207,207,'2024-09-21',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (208,208,'2024-09-21',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (209,209,'2024-09-22',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (210,210,'2024-09-22',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (211,211,'2024-09-22',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (212,212,'2024-09-22',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (213,213,'2024-09-25',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (214,214,'2024-09-25',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (215,215,'2024-09-28',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (216,216,'2024-09-28',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (217,217,'2024-09-28',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (218,218,'2024-09-28',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (219,219,'2024-09-29',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (220,220,'2024-09-29',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (221,221,'2024-09-29',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (222,222,'2024-09-29',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (223,223,'2024-10-02',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (224,224,'2024-10-02',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (225,225,'2024-10-05',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (226,226,'2024-10-05',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (227,227,'2024-10-05',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (228,228,'2024-10-05',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (229,229,'2024-10-06',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (230,230,'2024-10-06',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (231,231,'2024-10-06',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (232,232,'2024-10-06',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (233,233,'2024-10-09',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (234,234,'2024-10-09',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (235,235,'2024-10-12',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (236,236,'2024-10-12',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (237,237,'2024-10-12',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (238,238,'2024-10-12',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (239,239,'2024-10-13',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (240,240,'2024-10-13',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (241,241,'2024-10-13',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (242,242,'2024-10-13',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (243,243,'2024-10-16',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (244,244,'2024-10-16',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (245,245,'2024-10-19',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (246,246,'2024-10-19',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (247,247,'2024-10-19',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (248,248,'2024-10-19',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (249,249,'2024-10-20',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (250,250,'2024-10-20',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (251,251,'2024-10-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (252,252,'2024-10-20',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (253,253,'2024-10-23',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (254,254,'2024-10-23',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (255,255,'2024-10-26',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (256,256,'2024-10-26',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (257,257,'2024-10-26',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (258,258,'2024-10-26',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (259,259,'2024-10-27',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (260,260,'2024-10-27',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (261,261,'2024-10-27',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (262,262,'2024-10-27',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (263,263,'2024-10-30',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (264,264,'2024-10-30',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (265,265,'2024-11-02',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (266,266,'2024-11-02',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (267,267,'2024-11-02',2);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (268,268,'2024-11-02',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (269,269,'2024-11-03',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (270,146,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (271,98,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (272,71,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (273,104,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (274,25,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (275,140,'2024-08-20',3);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (276,142,'2024-08-20',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (277,160,'2024-08-25',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (278,148,'2024-08-26',7);
INSERT INTO `billet` (`NoBillet`, `NoClient`, `DateDebutValidite`, `IdCategorie`) VALUES (279,140,'2024-08-27',3);
/*!40000 ALTER TABLE `billet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_billet`
--

DROP TABLE IF EXISTS `categorie_billet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie_billet` (
  `IdCategorie` int NOT NULL,
  `PrixBillet` float DEFAULT NULL,
  `NombreJour` int DEFAULT NULL,
  `AgeMin` int DEFAULT NULL,
  `AgeMax` int DEFAULT NULL,
  PRIMARY KEY (`IdCategorie`),
  CONSTRAINT `chk_age` CHECK (((`AgeMin` is not null) and (`AgeMax` is not null) and (`AgeMax` >= `AgeMin`))),
  CONSTRAINT `chk_PrixBillet` CHECK ((`PrixBillet` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_billet`
--

LOCK TABLES `categorie_billet` WRITE;
/*!40000 ALTER TABLE `categorie_billet` DISABLE KEYS */;
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (1,0,1,0,3);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (2,52,1,4,11);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (3,61.5,1,12,59);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (4,52,1,60,150);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (5,0,2,0,3);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (6,96,2,4,11);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (7,116.5,2,12,59);
INSERT INTO `categorie_billet` (`IdCategorie`, `PrixBillet`, `NombreJour`, `AgeMin`, `AgeMax`) VALUES (8,96,2,60,150);
/*!40000 ALTER TABLE `categorie_billet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `NoClient` int NOT NULL,
  `NomClient` varchar(255) DEFAULT NULL,
  `PrenomClient` varchar(255) DEFAULT NULL,
  `TailleClient` int DEFAULT NULL,
  `AgeClient` int DEFAULT NULL,
  `IndicationGrossesse` varchar(3) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `IdPays` int DEFAULT NULL,
  PRIMARY KEY (`NoClient`),
  KEY `IdPays` (`IdPays`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`IdPays`) REFERENCES `pays` (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (1,'Dupont','Marie',165,30,'Non','marie.dupont@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (2,'Martin','Jean',178,42,'Non','jean.martin@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (3,'Schmidt','Anna',170,28,'Oui','anna.schmidt@outlook.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (4,'Müller','Thomas',180,35,'Non','thomas.muller@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (5,'Garcia','Maria',160,26,'Oui','maria.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (6,'Rossi','Marco',175,40,'Non','marco.rossi@yahoo.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (7,'Smith','John',182,45,'Non','john.smith@outlook.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (8,'Kowalski','Jan',172,33,'Non','jan.kowalski@gmail.com',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (9,'Dubois','Claire',168,32,'Non','claire.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (10,'Lopez','Carlos',180,38,'Non','carlos.lopez@outlook.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (11,'Brown','Emma',165,29,'Oui','emma.brown@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (12,'Weber','Paul',178,41,'Non','paul.weber@gmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (13,'Moreau','Lucie',170,27,'Non','lucie.moreau@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (14,'Hofer','Peter',177,36,'Non','peter.hofer@outlook.com',10);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (15,'Novak','Elena',162,25,'Non','elena.novak@gmail.com',45);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (16,'Smirnov','Igor',185,44,'Non','igor.smirnov@yahoo.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (17,'Janssen','Emma',167,31,'Oui','emma.janssen@outlook.com',123);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (18,'De Jong','Luke',173,39,'Non','luke.dejong@hotmail.com',123);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (19,'Becker','Lisa',160,29,'Oui','lisa.becker@gmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (20,'Bianchi','Luca',178,37,'Non','luca.bianchi@yahoo.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (21,'Mendoza','Laura',168,33,'Oui','laura.mendoza@outlook.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (22,'Wilson','James',180,43,'Non','james.wilson@gmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (23,'Fernandez','Sofia',162,28,'Oui','sofia.fernandez@yahoo.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (24,'Richter','Max',182,35,'Non','max.richter@outlook.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (25,'Lefevre','Julie',164,30,'Oui','julie.lefevre@hotmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (26,'Nakamura','Yuki',172,34,'Non','yuki.nakamura@gmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (27,'Kim','Minho',176,38,'Non','minho.kim@yahoo.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (28,'Chen','Li',170,32,'Non','li.chen@outlook.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (29,'Park','Jiwoo',165,29,'Oui','jiwoo.park@hotmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (30,'Wang','Wei',180,41,'Non','wei.wang@gmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (31,'Bernard','Lucas',140,12,'Non','lucas.bernard@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (32,'Weiss','Emma',135,10,'Non','emma.weiss@gmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (33,'Rossi','Giulia',150,14,'Non','giulia.rossi@outlook.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (34,'Fernandez','Diego',145,13,'Non','diego.fernandez@hotmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (35,'Leroy','Chloe',130,8,'Non','chloe.leroy@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (36,'Schneider','Max',155,16,'Non','max.schneider@yahoo.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (37,'Garcia','Laura',138,11,'Non','laura.garcia@outlook.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (38,'Martinez','Juan',142,12,'Non','juan.martinez@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (39,'Nguyen','Kim',148,15,'Non','kim.nguyen@yahoo.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (40,'Smith','Emily',137,9,'Non','emily.smith@outlook.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (41,'Dumont','Nicolas',172,34,'Non','nicolas.dumont@hotmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (42,'Bauer','Sophia',164,29,'Oui','sophia.bauer@gmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (43,'Tanaka','Hiroshi',178,41,'Non','hiroshi.tanaka@yahoo.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (44,'Khan','Aisha',162,27,'Non','aisha.khan@outlook.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (45,'Petrov','Sergei',185,36,'Non','sergei.petrov@hotmail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (46,'Silva','Lucas',175,32,'Non','lucas.silva@gmail.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (47,'Andersen','Freja',167,31,'Oui','freja.andersen@yahoo.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (48,'Kaur','Simran',160,25,'Non','simran.kaur@outlook.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (49,'Nguyen','Thanh',172,33,'Non','thanh.nguyen@hotmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (50,'Lopez','Sofia',168,30,'Oui','sofia.lopez@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (51,'Meier','Laura',170,28,'Non','laura.meier@yahoo.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (52,'Ricci','Alessandro',180,38,'Non','alessandro.ricci@outlook.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (53,'Young','Liam',183,37,'Non','liam.young@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (54,'Hansen','Oliver',175,35,'Non','oliver.hansen@gmail.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (55,'Fischer','Lena',165,29,'Oui','lena.fischer@yahoo.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (56,'Leclerc','Paul',178,42,'Non','paul.leclerc@outlook.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (57,'Novak','Nina',162,26,'Non','nina.novak@gmail.com',45);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (58,'Kim','Jiho',177,34,'Non','jiho.kim@yahoo.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (59,'Johansson','Elin',168,31,'Oui','elin.johansson@outlook.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (60,'Müller','Lucas',180,39,'Non','lucas.muller@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (61,'Moretti','Giulia',165,28,'Non','giulia.moretti@gmail.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (62,'Smith','Ethan',182,36,'Non','ethan.smith@yahoo.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (63,'Garcia','Isabella',160,27,'Non','isabella.garcia@outlook.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (64,'Kovacs','David',174,40,'Non','david.kovacs@hotmail.com',73);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (65,'Keller','Emma',168,29,'Oui','emma.keller@gmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (66,'Schwarz','Martin',180,41,'Non','martin.schwarz@yahoo.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (67,'Bianchi','Alessia',170,28,'Non','alessia.bianchi@outlook.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (68,'Wong','Aaron',176,34,'Non','aaron.wong@hotmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (69,'Yildiz','Elif',162,25,'Non','elif.yildiz@gmail.com',177);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (70,'Papadopoulos','Nikos',185,44,'Non','nikos.papadopoulos@yahoo.com',65);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (71,'Gupta','Aarav',170,32,'Non','aarav.gupta@outlook.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (72,'Park','Soojin',165,29,'Oui','soojin.park@hotmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (73,'Zhou','Wei',172,33,'Non','wei.zhou@gmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (74,'Patel','Priya',160,27,'Non','priya.patel@yahoo.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (75,'Santos','Diego',180,38,'Non','diego.santos@outlook.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (76,'Kowalski','Anna',165,28,'Non','anna.kowalski@gmail.com',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (77,'Ivanov','Dmitry',185,36,'Non','dmitry.ivanov@yahoo.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (78,'Kumar','Anjali',162,26,'Non','anjali.kumar@outlook.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (79,'Smirnov','Elena',167,31,'Oui','elena.smirnov@hotmail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (80,'Lopez','Jose',175,34,'Non','jose.lopez@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (81,'Nikolic','Marija',160,25,'Non','marija.nikolic@yahoo.com',152);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (82,'Bakker','Lucas',180,37,'Non','lucas.bakker@outlook.com',123);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (83,'Eriksson','Maja',165,29,'Oui','maja.eriksson@hotmail.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (84,'Chen','Wei',170,32,'Non','wei.chen@gmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (85,'Almeida','Rafael',178,40,'Non','rafael.almeida@yahoo.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (86,'Rodriguez','Carmen',160,26,'Non','carmen.rodriguez@outlook.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (87,'Taylor','Oliver',182,35,'Non','oliver.taylor@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (88,'Anderson','Emily',165,29,'Oui','emily.anderson@gmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (89,'Van Dijk','Liam',180,42,'Non','liam.vandijk@yahoo.com',123);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (90,'Blake','Sophia',167,28,'Non','sophia.blake@outlook.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (91,'Rodriguez','Paola',165,28,'Non','paola.rodr@mail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (92,'Gupta','Rohan',172,36,'Non','r.gupta123@yahoo.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (93,'Hernandez','Miguel',180,29,'Non','miguelh@example.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (94,'Choi','Jisoo',167,30,'Non','choij82@hotpop.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (95,'Johnson','Alice',160,25,'Oui','alicej@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (96,'Kimura','Lily',162,27,'Non','lilyk27@ymail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (97,'Martinez','Isabella',170,34,'Non','ismart@mail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (98,'Garcia','Hans',175,42,'Non','hg42@mail.net',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (99,'Wu','Chen',185,35,'Non','chenwu@webmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (100,'Lopez','Sabrina',160,28,'Oui','sab_lopez@mailservice.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (101,'Bhatt','Amit',178,33,'Non','amitb33@webmail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (102,'Moreno','Luis',175,38,'Non','l.moreno@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (103,'Peterson','Clara',165,30,'Non','clara_p123@service.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (104,'Stein','Lukas',172,41,'Non','lstein@ymail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (105,'Silva','Lucia',168,29,'Oui','lucia.silva@mailbox.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (106,'Popov','Olga',170,26,'Non','olgapop@mailservice.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (107,'Thompson','William',180,43,'Non','william_th@yahoo.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (108,'Nguyen','Jin',165,32,'Non','jin.nguyen@mail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (109,'Jones','Oliver',178,27,'Non','oliverj27@webmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (110,'Ricci','Valentina',162,28,'Oui','vricci_italy@mailservice.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (111,'Nowak','Adam',172,36,'Non','a.nowak@mail.com',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (112,'Vasilev','Marko',180,34,'Non','markov123@yahoo.com',26);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (113,'Yang','Minji',160,25,'Non','minjiy@gmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (114,'Ortega','Juan',178,38,'Non','juan_ortega@mail.net',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (115,'Yamamoto','Yuki',165,29,'Oui','yuki_yama@hotpop.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (116,'Lacroix','Philippe',180,35,'Non','ph_lacroix@mailbox.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (117,'Perez','Elodie',167,28,'Oui','elodie_prz@hotmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (118,'Bauer','Peter',172,39,'Non','peter_bauer@mail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (119,'Fischer','Hanna',160,27,'Non','hfischer27@ymail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (120,'Ali','Omar',178,41,'Non','oali41@gmail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (121,'Gonzalez','Ana',165,29,'Oui','anagonz@mailservice.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (122,'Johansson','Erik',175,42,'Non','erik.john@mail.net',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (123,'Sharma','Priya',162,26,'Non','priya_s@mailbox.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (124,'Huang','Minh',170,34,'Non','minh.huang@webmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (125,'Bellucci','Pedro',172,37,'Non','pedro_b@mail.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (126,'Kovac','Anna',165,31,'Oui','anna_kovac@hotmail.com',42);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (127,'Grossi','Matteo',180,32,'Non','mgrossi@mail.net',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (128,'Smith','Emma',160,28,'Non','esmith123@ymail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (129,'Christensen','Nina',168,27,'Oui','ninach@mail.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (130,'Svensson','Daniel',175,36,'Non','d.svensson@mailbox.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (131,'Durand','Sophie',162,29,'Non','sophied@mail.net',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (132,'Horvath','Elena',170,33,'Oui','e.horvath@yahoo.com',73);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (133,'Park','Jihoon',172,28,'Non','jpark@mail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (134,'Andersen','Linda',165,30,'Oui','linda.anders@hotpop.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (135,'Kowalski','Stefan',180,40,'Non','skowalski@mail.net',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (136,'Gallo','Alessia',160,26,'Non','alessiagallo@gmail.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (137,'Turner','James',178,35,'Non','jturner@mailservice.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (138,'Ramirez','Carmen',165,28,'Non','carmenr123@webmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (139,'Farkas','Peter',172,34,'Non','pfarkas@ymail.com',73);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (140,'Lang','Marie',168,31,'Oui','marie.lang@mail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (141,'Wolff','Lukas',175,39,'Non','lukasw@mailbox.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (142,'Rizzo','Giulia',162,26,'Non','grizzo123@yahoo.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (143,'Huang','David',170,37,'Non','davidh78@webmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (144,'Yilmaz','Ayla',165,29,'Oui','aylayil@yahoo.com',177);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (145,'Georgiou','Elena',160,27,'Non','egeorgiou@hotpop.com',65);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (146,'Raj','Karan',178,32,'Non','k.raj@mail.net',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (147,'Kwon','Jisoo',165,30,'Oui','jisookwon@gmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (148,'Liu','Mei',170,25,'Non','meiliu@webmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (149,'Shah','Rohan',172,33,'Non','rohan.s@mail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (150,'De Souza','Elena',165,29,'Oui','elena.ds@service.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (151,'Tomas','Maria',160,28,'Non','maria.tomas@yahoo.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (152,'Sokolov','Alexei',185,36,'Non','asokolov@mailbox.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (153,'Patel','Neha',162,26,'Non','neha.p@ymail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (154,'Orlov','Natalia',167,31,'Oui','natalia.o@mail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (155,'Romero','Carlos',175,34,'Non','carlosrom@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (156,'Nikolic','Ivan',180,37,'Non','ivan.n@yahoo.com',152);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (157,'Dumont','Emma',165,29,'Oui','emmad@mailservice.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (158,'Olsson','Lukas',170,32,'Non','lukas.olsson@webmail.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (159,'Liu','Wei',176,30,'Non','weiliu@hotmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (160,'Alves','Julia',160,27,'Non','juliaa@mail.net',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (161,'Diaz','Diego',178,38,'Non','diegod123@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (162,'Bell','Sophia',165,29,'Oui','sophiabell@ymail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (163,'Williams','Michael',180,36,'Non','michaelw@webmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (164,'Janssen','Elise',162,28,'Non','elisej@yahoo.com',123);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (165,'Harris','Matthew',172,34,'Non','matthewh@hotpop.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (166,'Schmidt','Maria',160,30,'Oui','maria.s@mailbox.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (167,'Ribeiro','Andres',178,37,'Non','aribeiro@mailservice.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (168,'Pham','Linh',165,28,'Non','linhp123@yahoo.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (169,'Garcia','Johann',180,35,'Non','johann.g@mail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (170,'Taylor','Sophie',162,29,'Oui','sophiet@webmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (171,'Hernandez','Daniel',170,32,'Non','danielh@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (172,'Lee','Chun',175,38,'Non','chunl@mail.net',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (173,'Zhang','Ming',160,27,'Non','mingz@mailbox.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (174,'Al-Farsi','Farah',165,26,'Oui','farah.af@webmail.com',130);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (175,'Santos','Jose',180,34,'Non','jose.santos@gmail.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (176,'Pham','Hoa',162,30,'Non','hoapham@hotpop.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (177,'Gruber','Felix',175,36,'Non','fgruber@mailservice.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (178,'Ito','Akira',170,31,'Non','akira.ito@yahoo.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (179,'Romero','Ana',160,25,'Non','anar@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (180,'Nguyen','Grace',165,28,'Oui','gracen@ymail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (181,'Kowalski','Sophie',105,5,'Non','sophie.kowalski@yahoo.com',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (182,'Schneider','Tom',110,6,'Non','tom.schneider@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (183,'Garcia','Anna',115,7,'Non','anna.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (184,'Rossi','Mia',120,8,'Non','mia.rossi@yahoo.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (185,'Smith','Noah',125,9,'Non','noah.smith@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (186,'Nguyen','Linh',130,10,'Non','linh.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (187,'Dubois','Chloe',135,11,'Non','chloe.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (188,'Yamamoto','Yuki',140,12,'Non','yuki.yamamoto@hotmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (189,'Ivanov','Dmitri',145,13,'Non','dmitri.ivanov@gmail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (190,'Hansen','Emma',150,14,'Non','emma.hansen@yahoo.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (191,'Andersen','Oscar',155,15,'Non','oscar.andersen@hotmail.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (192,'Chen','Wei',160,16,'Non','wei.chen@gmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (193,'Bernard','Léa',100,4,'Non','lea.bernard@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (194,'Dubois','Hugo',105,5,'Non','hugo.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (195,'Kumar','Arya',110,6,'Non','arya.kumar@hotmail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (196,'Nguyen','Tuan',115,7,'Non','tuan.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (197,'Silva','Lucas',120,8,'Non','lucas.silva@yahoo.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (198,'Connor','Siobhan',125,9,'Non','siobhan.oconnor@hotmail.com',79);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (199,'Tremblay','Sophie',130,10,'Non','sophie.tremblay@gmail.com',32);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (200,'Martin','Louis',135,11,'Non','louis.martin@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (201,'Garcia','Isabella',140,12,'Non','isabella.garcia@hotmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (202,'Smith','Oliver',145,13,'Non','oliver.smith@gmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (203,'Dubois','Emma',150,14,'Non','emma.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (204,'Liu','Mei',155,15,'Non','mei.liu@hotmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (205,'Yamamoto','Aiko',100,4,'Non','aiko.yamamoto@gmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (206,'Rossi','Marco',105,5,'Non','marco.rossi@yahoo.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (207,'Schneider','Lena',110,6,'Non','lena.schneider@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (208,'Garcia','Juan',115,7,'Non','juan.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (209,'Smith','Emily',120,8,'Non','emily.smith@yahoo.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (210,'Dubois','Nathan',125,9,'Non','nathan.dubois@hotmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (211,'Nguyen','Anh',130,10,'Non','anh.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (212,'Kowalski','Anna',135,11,'Non','anna.kowalski@yahoo.com',139);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (213,'Yamamoto','Haruto',140,12,'Non','haruto.yamamoto@hotmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (214,'Ivanov','Olga',145,13,'Non','olga.ivanov@gmail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (215,'Hansen','Lucas',150,14,'Non','lucas.hansen@yahoo.com',46);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (216,'Andersen','Freja',155,15,'Non','freja.andersen@hotmail.com',166);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (217,'Chen','Li',160,16,'Non','li.chen@gmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (218,'Bernard','Marie',100,4,'Non','marie.bernard@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (219,'Dubois','Victor',105,5,'Non','victor.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (220,'Kumar','Ravi',110,6,'Non','ravi.kumar@hotmail.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (221,'Nguyen','Lan',115,7,'Non','lan.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (222,'Silva','Maria',120,8,'Non','maria.silva@yahoo.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (223,'Connor','Sean',125,9,'Non','sean.oconnor@hotmail.com',79);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (224,'Tremblay','Liam',130,10,'Non','liam.tremblay@gmail.com',32);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (225,'Martin','Clara',135,11,'Non','clara.martin@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (226,'Garcia','Mateo',140,12,'Non','mateo.garcia@hotmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (227,'Smith','Ava',145,13,'Non','ava.smith@gmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (228,'Dubois','Noah',150,14,'Non','noah.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (229,'Liu','Xiao',155,15,'Non','xiao.liu@hotmail.com',36);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (230,'Yamamoto','Rin',160,16,'Non','rin.yamamoto@gmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (231,'Kim','Jisoo',100,4,'Non','jisoo.kim@gmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (232,'Patel','Anya',105,5,'Non','anya.patel@yahoo.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (233,'Smith','Liam',110,6,'Non','liam.smith@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (234,'Garcia','Carlos',115,7,'Non','carlos.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (235,'Brown','Emma',120,8,'Non','emma.brown@yahoo.com',184);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (236,'Lee','Minho',125,9,'Non','minho.lee@hotmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (237,'Martin','Chloe',130,10,'Non','chloe.martin@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (238,'Tremblay','Lucas',135,11,'Non','lucas.tremblay@yahoo.com',32);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (239,'Rossi','Giulia',140,12,'Non','giulia.rossi@hotmail.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (240,'Nguyen','Binh',145,13,'Non','binh.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (241,'Dubois','Alice',150,14,'Non','alice.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (242,'Schneider','Max',155,15,'Non','max.schneider@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (243,'Garcia','Sofia',160,16,'Non','sofia.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (244,'Ivanov','Alexei',100,4,'Non','alexei.ivanov@yahoo.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (245,'Kim','Hana',105,5,'Non','hana.kim@hotmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (246,'Silva','Pedro',110,6,'Non','pedro.silva@gmail.com',140);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (247,'Connor','Liam',115,7,'Non','liam.oconnor@yahoo.com',79);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (248,'Smith','Isabella',120,8,'Non','isabella.smith@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (249,'Yamamoto','Sakura',125,9,'Non','sakura.yamamoto@gmail.com',83);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (250,'Kumar','Neha',130,10,'Non','neha.kumar@yahoo.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (251,'Nguyen','Duc',135,11,'Non','duc.nguyen@hotmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (252,'Dubois','Juliette',140,12,'Non','juliette.dubois@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (253,'Schneider','Lisa',145,13,'Non','lisa.schneider@yahoo.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (254,'Garcia','Miguel',150,14,'Non','miguel.garcia@hotmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (255,'Ivanov','Nikolai',155,15,'Non','nikolai.ivanov@gmail.com',143);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (256,'Kim','Hyun',160,16,'Non','hyun.kim@yahoo.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (257,'Martin','Elena',100,4,'Non','elena.martin@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (258,'Patel','Rohan',105,5,'Non','rohan.patel@yahoo.com',75);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (259,'Smith','Ava',110,6,'Non','ava.smith@hotmail.com',183);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (260,'Garcia','Javier',115,7,'Non','javier.garcia@gmail.com',162);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (261,'Brown','Olivia',120,8,'Non','olivia.brown@yahoo.com',184);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (262,'Lee','Jiho',125,9,'Non','jiho.lee@hotmail.com',89);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (263,'Dubois','Theo',130,10,'Non','theo.dubois@gmail.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (264,'Tremblay','Sophie',135,11,'Non','sophie.tremblay@yahoo.com',32);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (265,'Rossi','Luca',140,12,'Non','luca.rossi@hotmail.com',81);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (266,'Nguyen','Mai',145,13,'Non','mai.nguyen@gmail.com',190);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (267,'Dubois','Mathis',150,14,'Non','mathis.dubois@yahoo.com',59);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (268,'Schneider','Lea',155,15,'Non','lea.schneider@hotmail.com',63);
INSERT INTO `client` (`NoClient`, `NomClient`, `PrenomClient`, `TailleClient`, `AgeClient`, `IndicationGrossesse`, `Email`, `IdPays`) VALUES (269,'Garcia','Daniel',160,16,'Non','daniel.garcia@gmail.com',162);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pays` (
  `IdPays` int NOT NULL,
  `Pays` varchar(255) NOT NULL,
  PRIMARY KEY (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (1,'Afghanistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (2,'Albanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (3,'Algérie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (4,'Andorre');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (5,'Angola');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (6,'Antigua-et-Barbuda');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (7,'Argentine');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (8,'Arménie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (9,'Australie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (10,'Autriche');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (11,'Azerbaïdjan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (12,'Bahamas');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (13,'Bahreïn');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (14,'Bangladesh');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (15,'Barbade');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (16,'Biélorussie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (17,'Belgique');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (18,'Belize');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (19,'Bénin');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (20,'Bhoutan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (21,'Bolivie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (22,'Bosnie-Herzégovine');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (23,'Botswana');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (24,'Brésil');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (25,'Brunei');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (26,'Bulgarie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (27,'Burkina Faso');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (28,'Burundi');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (29,'Cabo Verde');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (30,'Cambodge');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (31,'Cameroun');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (32,'Canada');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (33,'Centrafrique');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (34,'Tchad');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (35,'Chili');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (36,'Chine');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (37,'Colombie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (38,'Comores');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (39,'Congo (Brazzaville)');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (40,'Congo (Kinshasa)');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (41,'Costa Rica');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (42,'Croatie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (43,'Cuba');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (44,'Chypre');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (45,'République Tchèque');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (46,'Danemark');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (47,'Djibouti');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (48,'Dominique');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (49,'Équateur');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (50,'Égypte');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (51,'Salvador');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (52,'Guinée Équatoriale');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (53,'Érythrée');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (54,'Estonie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (55,'Eswatini');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (56,'Éthiopie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (57,'Fidji');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (58,'Finlande');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (59,'France');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (60,'Gabon');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (61,'Gambie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (62,'Géorgie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (63,'Allemagne');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (64,'Ghana');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (65,'Grèce');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (66,'Grenade');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (67,'Guatemala');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (68,'Guinée');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (69,'Guinée-Bissau');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (70,'Guyane');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (71,'Haïti');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (72,'Honduras');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (73,'Hongrie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (74,'Islande');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (75,'Inde');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (76,'Indonésie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (77,'Iran');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (78,'Irak');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (79,'Irlande');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (80,'Israël');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (81,'Italie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (82,'Jamaïque');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (83,'Japon');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (84,'Jordanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (85,'Kazakhstan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (86,'Kenya');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (87,'Kiribati');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (88,'Corée du Nord');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (89,'Corée du Sud');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (90,'Kosovo');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (91,'Koweït');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (92,'Kirghizistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (93,'Laos');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (94,'Lettonie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (95,'Liban');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (96,'Lesotho');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (97,'Liberia');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (98,'Libye');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (99,'Liechtenstein');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (100,'Lituanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (101,'Luxembourg');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (102,'Madagascar');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (103,'Malawi');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (104,'Malaisie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (105,'Maldives');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (106,'Mali');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (107,'Malte');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (108,'Iles Marshall');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (109,'Mauritanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (110,'Maurice');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (111,'Mexique');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (112,'Micronésie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (113,'Moldavie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (114,'Monaco');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (115,'Mongolie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (116,'Monténégro');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (117,'Maroc');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (118,'Mozambique');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (119,'Myanmar');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (120,'Namibie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (121,'Nauru');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (122,'Népal');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (123,'Pays-Bas');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (124,'Nouvelle-Zélande');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (125,'Nicaragua');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (126,'Niger');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (127,'Nigeria');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (128,'Macédoine du Nord');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (129,'Norvège');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (130,'Oman');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (131,'Pakistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (132,'Palaos');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (133,'Palestine');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (134,'Panama');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (135,'Papouasie-Nouvelle-Guinée');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (136,'Paraguay');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (137,'Pérou');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (138,'Philippines');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (139,'Pologne');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (140,'Portugal');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (141,'Qatar');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (142,'Roumanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (143,'Russie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (144,'Rwanda');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (145,'Saint-Kitts-et-Nevis');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (146,'Sainte-Lucie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (147,'Saint-Vincent-et-les-Grenadines');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (148,'Samoa');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (149,'San Marino');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (150,'Arabie Saoudite');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (151,'Sénégal');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (152,'Serbie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (153,'Seychelles');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (154,'Sierra Leone');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (155,'Singapour');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (156,'Slovaquie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (157,'Slovénie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (158,'Îles Salomon');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (159,'Somalie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (160,'Afrique du Sud');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (161,'Soudan du Sud');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (162,'Espagne');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (163,'Sri Lanka');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (164,'Soudan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (165,'Suriname');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (166,'Suède');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (167,'Suisse');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (168,'Syrie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (169,'Tadjikistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (170,'Tanzanie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (171,'Thaïlande');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (172,'Timor oriental');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (173,'Togo');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (174,'Tonga');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (175,'Trinité-et-Tobago');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (176,'Tunisie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (177,'Turquie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (178,'Turkménistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (179,'Tuvalu');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (180,'Ouganda');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (181,'Ukraine');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (182,'Émirats arabes unis');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (183,'Royaume-Uni');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (184,'États-Unis');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (185,'Uruguay');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (186,'Ouzbékistan');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (187,'Vanuatu');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (188,'Vatican');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (189,'Venezuela');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (190,'Vietnam');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (191,'Yémen');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (192,'Zambie');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (193,'Zimbabwe');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (194,'Univers de l’Aventure');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (195,'Royaume des Minimoys');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (196,'Forêt enchantée Grimm');
INSERT INTO `pays` (`IdPays`, `Pays`) VALUES (197,'Scandinavie');
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_spectacle`
--

DROP TABLE IF EXISTS `reservation_spectacle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_spectacle` (
  `NoSpectacle` int NOT NULL,
  `NoClient` int NOT NULL,
  `DateSpectacle` date NOT NULL,
  `HeureDebutSpectacle` time DEFAULT NULL,
  PRIMARY KEY (`NoSpectacle`,`NoClient`,`DateSpectacle`),
  KEY `NoClient` (`NoClient`),
  CONSTRAINT `reservation_spectacle_ibfk_1` FOREIGN KEY (`NoSpectacle`) REFERENCES `spectacle` (`NoSpectacle`),
  CONSTRAINT `reservation_spectacle_ibfk_2` FOREIGN KEY (`NoClient`) REFERENCES `client` (`NoClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_spectacle`
--

LOCK TABLES `reservation_spectacle` WRITE;
/*!40000 ALTER TABLE `reservation_spectacle` DISABLE KEYS */;
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,1,'2024-05-01','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,10,'2024-05-05','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,29,'2024-05-19','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,39,'2024-05-26','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,49,'2024-06-02','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,59,'2024-06-09','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,69,'2024-06-16','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (1,79,'2024-06-23','13:00:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (2,8,'2024-05-04','15:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,12,'2024-05-05','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,32,'2024-05-19','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,42,'2024-05-26','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,52,'2024-06-02','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,62,'2024-06-09','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,82,'2024-06-23','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (3,92,'2024-06-30','12:15:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,5,'2024-05-04','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,26,'2024-05-18','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,36,'2024-05-25','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,46,'2024-06-01','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,56,'2024-06-08','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,66,'2024-06-15','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (4,76,'2024-06-22','15:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,11,'2024-05-05','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,21,'2024-05-12','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,30,'2024-05-19','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,40,'2024-05-26','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,50,'2024-06-02','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,60,'2024-06-09','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,80,'2024-06-23','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (5,90,'2024-06-30','09:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (6,6,'2024-05-04','13:20:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (7,3,'2024-05-01','11:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (7,25,'2024-05-18','11:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (7,35,'2024-05-25','11:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (7,65,'2024-06-15','11:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (7,75,'2024-06-22','11:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,24,'2024-05-15','14:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,34,'2024-05-22','14:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,54,'2024-06-05','14:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,64,'2024-06-12','14:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,74,'2024-06-19','14:30:00');
INSERT INTO `reservation_spectacle` (`NoSpectacle`, `NoClient`, `DateSpectacle`, `HeureDebutSpectacle`) VALUES (8,94,'2024-07-03','14:30:00');
/*!40000 ALTER TABLE `reservation_spectacle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restauration`
--

DROP TABLE IF EXISTS `restauration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restauration` (
  `NomRestaurant` varchar(255) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `IdPays` int DEFAULT NULL,
  `Coordonnees` varchar(255) DEFAULT NULL,
  `Cuisine` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NomRestaurant`),
  KEY `IdPays` (`IdPays`),
  CONSTRAINT `restauration_ibfk_1` FOREIGN KEY (`IdPays`) REFERENCES `pays` (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restauration`
--

LOCK TABLES `restauration` WRITE;
/*!40000 ALTER TABLE `restauration` DISABLE KEYS */;
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Adventure Food Station','Snack-bar',194,'48.2634500, 7.7215895','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Bar chez Marianne','Café',59,'48.2670170, 7.7213030','Français');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Biergarten Badois Bavarois','Snack-bar',63,'48.2678490, 7.7239210','Allemand');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Biergarten Erdinger','Restaurant en libre-service',10,'48.2625900, 7.7226240','Allemand');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Bistro Tomi Ungerer','Service à table',59,'48.2675810, 7.7213120','Français');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Burger Porter','Snack-bar',63,NULL,'Burger');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Café Benedetto','Café',81,'48.2679979, 7.7226755','Italien');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Casa Atlantica','Restaurant en libre-service',140,'48.2625880, 7.7213390','Méditerranéen');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Cave à vin valaisanne','Restaurant en libre-service',167,'48.2666368, 7.7212757',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('CMAK - Russian Food and Burger','Snack-bar',143,'48.2652050, 7.7201550','Burger');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('CocaCola Refreshing Station','Stand de glaces',167,'48.2660593, 7.7213630',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Crêperie Nadine','Stand de glaces',59,'48.2676990, 7.7211300','Français');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Crocodile Bar','Bar',194,'48.2631933, 7.7215260',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('DELI Refresh - Glaces et boissons','Stand de glaces',195,'48.2639548, 7.7239795','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Europa-Park Rock Café','Service à table',63,'48.2685725, 7.7221930','Burger');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Fashion World Lounge','Bar',197,'48.2634000, 7.7208870',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Fiskehuset','Snack-bar',197,NULL,'Scandinave');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('FJORD Restaurant','Restaurant en libre-service',197,'48.2630130, 7.7200950','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('FoodLoop','Service à table',101,'48.2642160, 7.7208330','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Friethuys','Snack-bar',123,'48.2637291, 7.7206400',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Gelateria','Stand de glaces',81,'48.2679910, 7.7225640',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Heladeria Estrellas','Stand de glaces',162,'48.2612582, 7.7223704',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Is Huset','Service à table',197,'48.2633430, 7.7206630','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Jacks DELI','Snack-bar',195,'48.2639932, 7.7242907',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Kaffi Hus','Café',74,'48.2624624, 7.7192609',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('La petite boulangerie','Café',59,NULL,NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Langnese Happiness Station Silver Star','Stand de glaces',59,'48.2675380, 7.7201540','Glaces');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Langnese Happiness Station Voletarium','Stand de glaces',63,'48.2692461, 7.7222236','Glaces');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Magellan Lounge','Bar',140,'48.2619270, 7.7214760',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Magnum pleasure store','Stand de glaces',74,'48.2621904, 7.7194651',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Maison de la Forêt noire','Snack-bar',63,'48.2684260, 7.7233650','Allemand');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Marios Pizza','Snack-bar',81,'48.2680311, 7.7228984','Italien');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Melusina snacks and drinks','Snack-bar',101,'48.2645130, 7.7211310','Italien');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Moby Dick Hot-dogs','Snack-bar',74,'48.2619430, 7.7199140',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Molencafé','Café',123,'48.2640254, 7.7205235',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Motosports bar','Snack-bar',59,'48.2676434, 7.7202422',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Pastaria di Enzo','Snack-bar',81,'48.2677109, 7.7218709','Italien');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Pizzeria Venezia','Restaurant en libre-service',81,'48.2675669, 7.7217910','Italien');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant bamboe bai','Restaurant en libre-service',123,'48.2638310, 7.7201520','Asiatique');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant du château Balthasar','Service à table',63,'48.2683920, 7.7249730','Allemand');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant du lac','Restaurant en libre-service',10,NULL,'International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant Mille Fleurs','Restaurant en libre-service',59,'48.2673655, 7.7214542','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant petite France','Restaurant en libre-service',59,'48.2668890, 7.7226070','Français');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant Spices','Restaurant en libre-service',194,'48.2632327, 7.7212295','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant Spirello','Snack-bar',167,'48.2662172, 7.7212730','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant The Three Piglets','Snack-bar',183,'48.2648980, 7.7218590','Burger');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Restaurant valaisan','Snack-bar',167,'48.2666368, 7.7212757',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Snack Cevapcici','Restaurant en libre-service',42,'48.2658236, 7.7188553','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Snack du Tyrol','Snack-bar',10,NULL,NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Stand de gaufres','Stand de glaces',81,'48.2678460, 7.7227390','Allemand');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Stand de saumon flambé','Snack-bar',74,'48.2619525, 7.7195467',NULL);
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Stand de tartes flambées','Snack-bar',59,'48.2666810, 7.7220320','Français');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Sunce i lavanda','Stand de glaces',42,'48.2660284, 7.7194467','Glaces');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Taverna Miconos','Restaurant en libre-service',65,'48.2664258, 7.7199871','Méditerranéen');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('The baltic Coffee and Lounge','Café',74,'48.2628615, 7.7186902','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('The OMackays Café and pub','Restaurant en libre-service',79,'48.2662070, 7.7235600','International');
INSERT INTO `restauration` (`NomRestaurant`, `Type`, `IdPays`, `Coordonnees`, `Cuisine`) VALUES ('Walters Wurst Bude','Snack-bar',63,'48.2692700, 7.7223059','Allemand');
/*!40000 ALTER TABLE `restauration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spectacle`
--

DROP TABLE IF EXISTS `spectacle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spectacle` (
  `NoSpectacle` int NOT NULL,
  `NomSpectacle` varchar(255) DEFAULT NULL,
  `IdPays` int DEFAULT NULL,
  `Coordonnees` varchar(255) DEFAULT NULL,
  `DateDebutSpectacle` date DEFAULT NULL,
  `DateFinSpectacle` date DEFAULT NULL,
  `DureeSpectacle` time DEFAULT NULL,
  `HeureDebut` time DEFAULT NULL,
  PRIMARY KEY (`NoSpectacle`),
  KEY `IdPays` (`IdPays`),
  CONSTRAINT `spectacle_ibfk_1` FOREIGN KEY (`IdPays`) REFERENCES `pays` (`IdPays`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spectacle`
--

LOCK TABLES `spectacle` WRITE;
/*!40000 ALTER TABLE `spectacle` DISABLE KEYS */;
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (1,'Misterio',81,'48.2679620, 7.7223590','2024-03-23','2024-09-27','00:30:00','13:00:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (2,'Misterio',81,'48.2679620, 7.7223590','2024-03-23','2024-09-27','00:30:00','15:15:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (3,'Surpri\'Ice Presents Energ\'Ice',65,'48.2661113, 7.7206705','2024-03-23','2024-09-27','00:30:00','12:15:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (4,'Surpri\'Ice Presents Energ\'Ice',65,'48.2661113, 7.7206705','2024-03-23','2024-09-27','00:30:00','15:30:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (5,'Voltron 4D',59,'48.2678150, 7.7213580','2024-03-23','2025-01-12','00:13:00','09:20:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (6,'Voltron 4D',59,'48.2678150, 7.7213580','2024-03-23','2025-01-12','00:13:00','13:20:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (7,'Funny Library 2',183,'48.2652430, 7.7216100','2024-03-23','2024-09-27','00:25:00','11:30:00');
INSERT INTO `spectacle` (`NoSpectacle`, `NomSpectacle`, `IdPays`, `Coordonnees`, `DateDebutSpectacle`, `DateFinSpectacle`, `DureeSpectacle`, `HeureDebut`) VALUES (8,'Funny Library 2',183,'48.2652430, 7.7216100','2024-03-23','2024-09-27','00:25:00','14:30:00');
/*!40000 ALTER TABLE `spectacle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'europa-park'
--

--
-- Dumping routines for database 'europa-park'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 21:29:51
