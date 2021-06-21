-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: cnpibk
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `detil_barang`
--

DROP TABLE IF EXISTS `detil_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detil_barang` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `SERI_BRG` varchar(6) DEFAULT NULL,
  `HS_CODE` varchar(12) DEFAULT NULL,
  `UR_BRG` varchar(140) DEFAULT NULL,
  `KD_NEG_ASAL` varchar(2) DEFAULT NULL,
  `JML_KMS` int unsigned DEFAULT NULL,
  `JNS_KMS` varchar(2) DEFAULT NULL,
  `CIF` varchar(12) DEFAULT NULL,
  `KD_SAT_HRG` varchar(3) DEFAULT NULL,
  `JML_SAT_HRG` int unsigned DEFAULT NULL,
  `FL_BEBAS` tinyint(1) DEFAULT NULL COMMENT 'Elemen BOOLEAN sebagai flag pembebasan (0=Bayar, 1=Bebas)',
  `NO_SKEP` varchar(30) DEFAULT NULL,
  `TGL_SKEP` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_barang`
--

LOCK TABLES `detil_barang` WRITE;
/*!40000 ALTER TABLE `detil_barang` DISABLE KEYS */;
INSERT INTO `detil_barang` VALUES (1,'AB1234','ABCDEF123456','\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt','SG',104,'B1','HIJKLM121212','AA1',2,0,'315274093400225855875232506536','20170619');
/*!40000 ALTER TABLE `detil_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_pungutan`
--

DROP TABLE IF EXISTS `detil_pungutan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detil_pungutan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `KD_PUNGUTAN` varchar(1) DEFAULT NULL,
  `NILAI` decimal(22,2) DEFAULT NULL,
  `KD_TARIF` varchar(1) DEFAULT NULL,
  `KD_SAT_TARIF` varchar(20) DEFAULT NULL,
  `JML_SAT` int unsigned DEFAULT NULL,
  `TARIF` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_pungutan`
--

LOCK TABLES `detil_pungutan` WRITE;
/*!40000 ALTER TABLE `detil_pungutan` DISABLE KEYS */;
INSERT INTO `detil_pungutan` VALUES (1,'B',29090276262477734000.00,'C','ABCDE12345FGHIJ67890',6,'111');
/*!40000 ALTER TABLE `detil_pungutan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `JNS_AJU` varchar(1) DEFAULT NULL,
  `KD_JNS_PIBK` varchar(1) DEFAULT NULL,
  `NO_BARANG` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_KANTOR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_JNS_ANGKUT` varchar(1) DEFAULT NULL,
  `NM_PENGANGKUT` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NO_FLIGHT` int unsigned DEFAULT NULL,
  `KD_PEL_MUAT` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_PEL_BONGKAR` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_GUDANG` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NO_INVOICE` varchar(20) DEFAULT NULL,
  `KD_NEGARA_ASAL` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `JML_BRG` int unsigned DEFAULT NULL,
  `NO_BC11` varchar(29) DEFAULT NULL,
  `TGL_BC11` date DEFAULT NULL,
  `NO_POS_BC11` int unsigned DEFAULT NULL,
  `NO_SUBPOS_BC11` int unsigned DEFAULT NULL,
  `NO_SUBSUBPOS_BC11` int unsigned DEFAULT NULL,
  `NO_MASTER_BLAWB` int unsigned DEFAULT NULL,
  `TGL_HOUSE_BLAWB` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_NEG_PENGIRIM` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NM_PENGIRIM` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AL_PENGIRIM` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `JNS_ID_PENERIMA` int unsigned DEFAULT NULL,
  `NO_ID_PENERIMA` varchar(30) DEFAULT NULL,
  `NM_PENERIMA` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AL_PENERIMA` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TELP_PENERIMA` varchar(20) DEFAULT NULL,
  `JNS_ID_PEMBERITAHU` int unsigned DEFAULT NULL,
  `NO_ID_PEMBERITAHU` int unsigned DEFAULT NULL,
  `NM_PEMBERITAHU` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `AL_PEMBERITAHU` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NO_IZIN_PEMBERITAHU` int unsigned DEFAULT NULL,
  `TGL_IZIN_PEMBERITAHU` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `KD_VAL` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NDPBM` decimal(9,4) DEFAULT NULL,
  `FOB` decimal(18,2) DEFAULT NULL,
  `ASURANSI` decimal(14,2) DEFAULT NULL,
  `FREIGHT` decimal(16,2) DEFAULT NULL,
  `CIF` decimal(18,2) DEFAULT NULL,
  `NETTO` decimal(18,4) DEFAULT NULL,
  `BRUTO` decimal(18,4) DEFAULT NULL,
  `TOT_DIBAYAR` decimal(15,2) DEFAULT NULL,
  `KD_GUDANG_2` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'DUPLICATE, RENAMED KD_GUDANG TO KD_GUDANG_2',
  `NPWP_BILLING` varchar(15) DEFAULT '0',
  `NAMA_BILLING` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '-',
  `NO_HOUSE_BLAWB` varchar(30) DEFAULT NULL,
  `TGL_MASTER_BLAWB` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES (1,'A','A','ABCDEFGHIJKLMNOPQRSTUVWXYZ1234','123456','B','ABCDEFGHIJKLMNOPQRSTUVWXYZ1234ABCDEFGHIJKLMNOPQRSTUVWXYZ1234ABCDEFGHIJKLMNOPQRSTUVWXYZ12340123456789',2397727176,'A1234','B4321','C123','272500078895545093','ID',8,'-746969346','2021-06-18',1234,1123,1134,1122398653,'20200219','12','Andi','Jl. Galaxy Palem A03',1,'-1250504191','Ani','Jl. Taman Palem B91','+4073422691955479605',2,1755265932,'Ayu','Jl. Palem Palem A77',685728658,'20190619','$32',56855.6481,91324706823447.70,728976053845.61,93141162609981.06,9040100320983530.00,33700754399370.4020,96701311235112.5800,6224841038202.62,'ABCD1234','734641075422252','Adi','-148855277','20180618');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_pungutan`
--

DROP TABLE IF EXISTS `header_pungutan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_pungutan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `KD_PUNGUTAN` varchar(1) DEFAULT NULL,
  `NILAI` decimal(22,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_pungutan`
--

LOCK TABLES `header_pungutan` WRITE;
/*!40000 ALTER TABLE `header_pungutan` DISABLE KEYS */;
INSERT INTO `header_pungutan` VALUES (1,'B',97584698775075650000.00);
/*!40000 ALTER TABLE `header_pungutan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cnpibk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 15:27:58
