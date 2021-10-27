-- MySQL dump 10.13  Distrib 5.7.34, for Linux (x86_64)
--
-- Host: localhost    Database: nilgiri_med_plants
-- ------------------------------------------------------
-- Server version	5.7.34-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `family_id` int(11) NOT NULL,
  `family` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (101,'Liliaceae'),(102,'Pteridaceae'),(103,'Asteraceae'),(104,'Basellaceae'),(105,'Berberidaceae'),(106,'Orchidaceae'),(107,'Capparaceae'),(108,'Fabaceae'),(109,'Cycadaceae'),(110,'Menispermaceae'),(111,'Asclepiadaceae'),(112,'Mimosaceae'),(113,'Dioscoreaceae'),(114,'Rubiaceae'),(115,'Gnetaceae'),(116,'Acanthaceae'),(117,'Lamiaceae'),(118,'Lauraceae'),(119,'Icacinaceae'),(120,'Piperaceae'),(121,'Myrsinaceae'),(122,'Araceae'),(123,'Ericace'),(124,'Myrtaceae'),(125,'Asparagaceae'),(126,'Malvaceae'),(127,'Scrophulariaceae'),(128,'Aristolochiaceae'),(129,'Rutaceae');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitat`
--

DROP TABLE IF EXISTS `habitat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitat` (
  `habit_code` varchar(2) CHARACTER SET utf8 NOT NULL,
  `habitat` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`habit_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitat`
--

LOCK TABLES `habitat` WRITE;
/*!40000 ALTER TABLE `habitat` DISABLE KEYS */;
INSERT INTO `habitat` VALUES ('CS','Climbeing Shrubs'),('H','Herbs'),('L','Liana'),('S','Shrubs'),('T','Trees'),('TW','Twiners');
/*!40000 ALTER TABLE `habitat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_names`
--

DROP TABLE IF EXISTS `plant_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant_names` (
  `plant_id` int(11) NOT NULL,
  `botanical_name` varchar(71) CHARACTER SET utf8 DEFAULT NULL,
  `local_name` varchar(17) CHARACTER SET utf8 DEFAULT NULL,
  `habit_code` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`plant_id`),
  KEY `family_id` (`family_id`),
  KEY `habit_code` (`habit_code`),
  CONSTRAINT `plant_names_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `family` (`family_id`),
  CONSTRAINT `plant_names_ibfk_2` FOREIGN KEY (`habit_code`) REFERENCES `habitat` (`habit_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_names`
--

LOCK TABLES `plant_names` WRITE;
/*!40000 ALTER TABLE `plant_names` DISABLE KEYS */;
INSERT INTO `plant_names` VALUES (1,'Asparagus racemosus Willd.','Sadhavari','CS',101),(2,'Actiniopteris radiata (Sw.) Link','Mayilviri','H',102),(3,'Anaphalis neelgerryana\n(DC.) DC.','Katel','H',103),(4,'Anaphalis subdecurrens\nGamble','Kodayars','H',103),(5,'Basella alba L.','Vasala dahu','TW',104),(6,'Berberis tinctoria Lesch.','Oosipalam','S',105),(7,'Bulbophyllum fimbriatum\n(Lindl.) Rchb.f.','Maramalli','H',106),(8,'Bulbophyllum neilgherensis\nWight','Marakaai','H',106),(9,'Capparis grandis L.f.','Thoratti maram','T',107),(10,'Crotalaria biflora L.','Odambuvali chedi','H',108),(11,'Cycas circinalis L.','Eendhu','S',109),(12,'Cyclea peltata (Lam.) Hook.f. & Thomson','Pavatta','TW',110),(13,'Decalepis hamiltonii Wight & Arn.','Mahaali Kizhanku','TW',111),(14,'Dichrostachys cinerea (L.) Wight & Arn.','Vedathalai','T',112),(15,'Dioscorea oppositifolia L.','Riyang kesanku','TW',113),(16,'Eupatorium adenophorum\nSpreng.','Sarmanthor','H',103),(17,'Galium asperifolium Wall.','Kuributhur','H',114),(18,'Gloriosa superba L.','Kanivili kizhangu','H',101),(19,'Gnetum ula Brogn.','Oolai kai','L',115),(20,'Justicia gendarussa Burm.f.','Karunochi','S',116),(21,'Leucas lamiifolia Desf.','Thumbai','H',117),(22,'Leucas vestita Benth.','Thumbai','H',117),(23,'Litsea deccanensis Gamble','Jakkatha maram','T',118),(24,'Neonotonia wightii (Wight & Arn.) J.A.Lackey','Kattusolu chedi','TW',108),(25,'Nothapodytes nimmoniana\n(J.Graham) Mabb.','Kokud','T',119),(26,'Piper umbellatum L.','Kapya illai','CS',120),(27,'Rapanea wightiana (Wall. ex A. DC.) Mez','Kallumaram','T',121),(28,'Remusatia vivipara (Roxb.) Schott','Para chembu','H',122),(29,'Rhododendron arboreum\nsubsp. nilagiricum (Zenker)\nTagg, J. B. Stevenson','Katturoja','T',123),(30,'Rhodomyrtus tomentosa (Ai ton) Hassk.','Thavutu palam','T',124),(31,'Rhynchostylis retusa (L.) Blume','Sevuttu olai','H',106),(32,'Rubia cordifolia L.','Karappa chedi','CS',114),(33,'Sansevieria roxburghiana\nSchult. & Schult.f.','Manji','H',125),(34,'Sida acuta L.','Kurnthotti','H',126),(35,'Scoparia dulcis L.',NULL,'H',127),(36,'Syzygium cumini (L.) Skeels','Navaal','T',124),(37,'Thottea siliquosa Lam.','Murthikai','S',128),(38,'Zanthoxylum ovalifolium\nTutcher','Machiyakodi','T',129);
/*!40000 ALTER TABLE `plant_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_part`
--

DROP TABLE IF EXISTS `plant_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant_part` (
  `part_id` int(11) NOT NULL,
  `part_of_the_plant` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_part`
--

LOCK TABLES `plant_part` WRITE;
/*!40000 ALTER TABLE `plant_part` DISABLE KEYS */;
INSERT INTO `plant_part` VALUES (201,'Leaves'),(202,'Whole plant'),(203,'Stem'),(204,'Bulb'),(205,'Seeds'),(206,'Tuber'),(207,'Bark'),(208,'Fruit'),(209,'Roots'),(210,'Stem bark'),(211,'Wood');
/*!40000 ALTER TABLE `plant_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uses`
--

DROP TABLE IF EXISTS `uses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uses` (
  `plant_no` int(11) NOT NULL,
  `direction_of_use` varchar(104) CHARACTER SET utf8 DEFAULT NULL,
  `ethnobotanical_Uses` varchar(61) CHARACTER SET utf8 DEFAULT NULL,
  `used_part` int(11) DEFAULT NULL,
  PRIMARY KEY (`plant_no`),
  KEY `used_part` (`used_part`),
  CONSTRAINT `uses_ibfk_1` FOREIGN KEY (`used_part`) REFERENCES `plant_part` (`part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uses`
--

LOCK TABLES `uses` WRITE;
/*!40000 ALTER TABLE `uses` DISABLE KEYS */;
INSERT INTO `uses` VALUES (1,'¾ of fresh cow milk with leaf paste is mixed and\nintaken','Cures White\ndischarge for women',201),(2,'Whole plant is shade dried and powdered; mixed with milk and in\ntaken','Removes stones from Urinary tract',202),(3,'Leaves with coconut oil is heated and applied on\nswelled area','Cures swelling',201),(4,'Sap of the stem is applied on\nwounds','Wound healer',203),(5,'Sap of the leaves are heated with castor oil; applied on bones and tied tightly\nwith a cloth','Recovers from bone fracture',201),(6,'Leaves rawly in taken daily','Used as food supplement',201),(7,'A dried and powdered pseudobulb is applied on body before the bath.','Recover sfrom hypothermia',204),(8,'Powdered bulb is heated with oil; applied on legs and\nhands','Recovers from sprain',204),(9,'Leaves paste with jaggery\nis in taken','Cures cough',201),(10,'Leaves are crushed and its extract is applied on the body at\nevening only','Recovers from body pain and fever',201),(11,'Seeds soaked into water for 15 days and added with rice flour on dosa and idli\npreparation','Edible – Food supplement',205),(12,'Tubers are crushed; mixed with honey and in\ntaken','Cures Stomach pain/disorder s',206),(13,'Tuber is rawly in\ntaken','Appetizer',206),(14,'Bark is crushed, made into paste with lemon and in\ntaken','Recovers from snake bite',207),(15,'Tuber is stream cooked, mixed with honey and in\ntakens','Removes stones from Urinary tract and used as food\nsupplement',206),(16,'Leaves are crushed and its extract applied on\ncut wounds','Wound healers',201),(17,'Leaves with Rubus ellipticus leaves, a pinch of mud and buffalo dung are crushed and in taken with\nwater','Recovers from fever',201),(18,'Flowers or tubers crushed and extracts are given in drops for eye','Cures eye pain',206),(19,'The fruit heated in the fire and\neaten','Edible',208),(20,'Leaves are boiled the water and\nbath it','Recovers body pain',201),(21,'Leaves are crushed and its extract are applied\non body','Recover from fever',201),(22,'Leaf paste','Removes wartz',201),(23,'Roots are grinded and its extract\nare in taken','Cures stomach pain',209),(24,'Roots are crushed with few cumin seeds and its extract are in taken in empty\nstomach','Recovers from stomach lumps',209),(25,'Bark is dried, powdered and boiled, extract is in\ntaken','Recovers from stomach lumps',207),(26,'Leaf extract with milk','Cures from any stomach disorders',201),(27,'Bark\'s sap is mixed with water and kept overnight; washed the mouth and\nteeth','Recovers from tooth pain',210),(28,'Cooked and in taken','Edible and removes hair or thread from\nstomach',203),(29,'The fresh woods are\ncarved','Handle for cooking',211),(30,'Tender leaves are crushed and its extract is\nin taken','Recover from dysentery',201),(31,'Sap of leaves are used as\near drops','Cures from ear pain',201),(32,'Leaf extract and breast milk is used\nas eye drops','Cures from eye infections',201),(33,'Leaf paste are applied on leg','Recover from filariasis',201),(34,'Leaves are crushed and its extract is\nin taken','Cure sever stomach pain',201),(35,'Leaves are finely made into paste and in taken\nwith buttermilk','Removes stones from Urinary tract',201),(36,'Bark is boiled and its steamed in\ntaken orally','Cures tooth pain',207),(37,'Dried fruit is made into paste and mixed with luke warm\nwater','Recover stomach aches for children',208),(38,'Root is crushed and applied over\npainful area','Cures swelling or pain',207);
/*!40000 ALTER TABLE `uses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20 23:56:03
