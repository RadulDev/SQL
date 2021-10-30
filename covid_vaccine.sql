-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: covid_vaccine
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Advantages_disadvantages`
--

DROP TABLE IF EXISTS `Advantages_disadvantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Advantages_disadvantages` (
  `ExNo` int DEFAULT NULL,
  `Type_ID` varchar(52) DEFAULT NULL,
  `Advantages` varchar(38) DEFAULT NULL,
  `Disadvantages` varchar(53) DEFAULT NULL,
  `Example` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Advantages_disadvantages`
--

LOCK TABLES `Advantages_disadvantages` WRITE;
/*!40000 ALTER TABLE `Advantages_disadvantages` DISABLE KEYS */;
INSERT INTO `Advantages_disadvantages` VALUES (1,'1008','Strong and longlasting immune response','protential risk of disease',1),(2,'1008','Broad antigenic profile','Requirement for biosafety facilities',NULL),(3,'1006','Broad antigenic profile','Reduced immune response',2),(4,'1006','_','Requirement for biosafety facilities',NULL),(5,'1006','_','Lower purity',NULL),(6,'1001','Noninfectious','Limited capability in inducing cell mediated-immunity',3),(7,'1001','Targeting key antigens','Adjuvent often needed',NULL);
/*!40000 ALTER TABLE `Advantages_disadvantages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidates_in_clinical_trial`
--

DROP TABLE IF EXISTS `Candidates_in_clinical_trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidates_in_clinical_trial` (
  `vaccine_name` varchar(11) DEFAULT NULL,
  `Developer_ID` varchar(77) DEFAULT NULL,
  `Clinical_stage` varchar(7) DEFAULT NULL,
  `Root_of_Administation` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidates_in_clinical_trial`
--

LOCK TABLES `Candidates_in_clinical_trial` WRITE;
/*!40000 ALTER TABLE `Candidates_in_clinical_trial` DISABLE KEYS */;
INSERT INTO `Candidates_in_clinical_trial` VALUES ('Astrazeneca','1','phase 4','IM'),('COVI-VAC','2','phase 1','IN'),('CoronaVac','3','phase 4','IM'),('BBIBP-CorV','5','phase 3','IM'),('Covaxin','6','phase 3','IM');
/*!40000 ALTER TABLE `Candidates_in_clinical_trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Developer`
--

DROP TABLE IF EXISTS `Developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Developer` (
  `Developer_ID` int DEFAULT NULL,
  `Developer` varchar(49) DEFAULT NULL,
  `Country` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Developer`
--

LOCK TABLES `Developer` WRITE;
/*!40000 ALTER TABLE `Developer` DISABLE KEYS */;
INSERT INTO `Developer` VALUES (1,'Johnson and Johnson','USA'),(2,'Codagenix/Serum institute ofIndia','INDIA'),(3,'Sinovac','CHINA'),(4,'Wuhan institute of Biologicl Products/Sinopharm','CHINA'),(5,'Beijing Institute ofBiological Products/Sinopharm','CHINA'),(6,'Bharath Biotech','INDIA'),(7,'Erciyes University','TURKEY');
/*!40000 ALTER TABLE `Developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Examples`
--

DROP TABLE IF EXISTS `Examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Examples` (
  `Ex_No` int DEFAULT NULL,
  `Type_ID` varchar(46) DEFAULT NULL,
  `Example_1` varchar(11) DEFAULT NULL,
  `Example_2` varchar(7) DEFAULT NULL,
  `Example_3` varchar(12) DEFAULT NULL,
  `Example_4` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Examples`
--

LOCK TABLES `Examples` WRITE;
/*!40000 ALTER TABLE `Examples` DISABLE KEYS */;
INSERT INTO `Examples` VALUES (1,'1001','Smallpox','Measels','Tuberculosis','Polio'),(2,'_','Hepatitis A','Polio','Rabies','Influenza'),(3,'_','Hepatitis B','DTP','_','_');
/*!40000 ALTER TABLE `Examples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Full_forms`
--

DROP TABLE IF EXISTS `Full_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Full_forms` (
  `Abbreviations` varchar(2) DEFAULT NULL,
  `Full_form` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Full_forms`
--

LOCK TABLES `Full_forms` WRITE;
/*!40000 ALTER TABLE `Full_forms` DISABLE KEYS */;
INSERT INTO `Full_forms` VALUES ('IM','intramuscular'),('IN','intranasal'),('SC','subcutaneous');
/*!40000 ALTER TABLE `Full_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Types_names`
--

DROP TABLE IF EXISTS `Types_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Types_names` (
  `Type_ID` int DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Vaccine_name` varchar(11) DEFAULT NULL,
  `CASRN` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Types_names`
--

LOCK TABLES `Types_names` WRITE;
/*!40000 ALTER TABLE `Types_names` DISABLE KEYS */;
INSERT INTO `Types_names` VALUES (1001,'Live-attenuated','COVI-VAC','_'),(1006,'Inactivated','CoronaVac','2480309-93-9'),(1006,'Inactivated','BBIBP-CorV','2503126-65-4'),(1006,'Inactivated','Covaxin','2501889-19-4'),(1006,'Inactivated','QazCovid-in','2541708-50-1'),(1006,'Inactivated','VLA2001','_'),(1006,'Inactivated','ERUCOV-VAC','_');
/*!40000 ALTER TABLE `Types_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribution`
--

DROP TABLE IF EXISTS `distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribution` (
  `type_id` int DEFAULT NULL,
  `type` varchar(41) DEFAULT NULL,
  `distribution` decimal(3,1) DEFAULT NULL,
  `preclinical` int DEFAULT NULL,
  `clinical` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribution`
--

LOCK TABLES `distribution` WRITE;
/*!40000 ALTER TABLE `distribution` DISABLE KEYS */;
INSERT INTO `distribution` VALUES (1001,'Protein based',35.9,68,24),(1002,'Non replicating vector',13.3,22,12),(1003,'Mrna',12.1,23,8),(1004,'DNA',10.2,15,11),(1005,'Replicating viral vector',9.8,19,6),(1006,'Incactivated',8.2,11,10),(1007,'VLP',7.8,18,2),(1008,'Line attenuated',2.0,4,2);
/*!40000 ALTER TABLE `distribution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 15:04:32
