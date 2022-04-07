CREATE DATABASE  IF NOT EXISTS `app` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `app`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `idBrand` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `details` mediumtext NOT NULL,
  PRIMARY KEY (`idBrand`),
  UNIQUE KEY `idBrand_UNIQUE` (`idBrand`),
  UNIQUE KEY `brand_UNIQUE` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--
-- ORDER BY:  `idBrand`

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Aston Martin','Aston Martin Lagonda Global Holdings plc is a British independent manufacturer of luxury sports cars and grand tourers. It was founded in 1913 by Lionel Martin and Robert Bamford. Steered from 1947 by David Brown, it became associated with expensive grand touring cars in the 1950s and 1960s, and with the fictional character James Bond following his use of a DB5 model in the 1964 film Goldfinger. Their sports cars are regarded as a British cultural icon. Aston Martin has held a Royal Warrant as purveyor of motorcars to the Prince of Wales since 1982. It has over 150 car dealerships in over 50 countries on six continents, making them a global automobile brand. The company is traded at the London Stock Exchange and is a constituent of the FTSE 250 Index. In 2003 it received the Queen\'s Award for Enterprise for outstanding contribution to international trade. The company has gone bankrupt seven times in its history.'),(2,'BMW','BMW (originally an initialism for Bayerische Motoren Werke in German, or Bavarian Motor Works in English) is a German multinational company which currently produces luxury automobiles and motorcycles, and also produced aircraft engines until 1945.'),(3,'Bugatti','Automobiles Ettore Bugatti was a French car manufacturer of high-performance automobiles, founded in 1909 in the then German city of Molsheim, Alsace by Italian-born Ettore Bugatti. Bugatti cars were known for their design beauty (Ettore Bugatti was from a family of artists and considered himself to be both an artist and builder) and for their many race victories. Famous Bugattis include the Type 35 Grand Prix cars, the Type 41 \"Royale\", the Type 57 \"Atlantic\" and the Type 55 sports car.'),(4,'Chevrolet','Chevrolet, colloquially referred to as Chevy and formally the Chevrolet Division of General Motors Company, is an American automobile division of the American manufacturer General Motors (GM). Louis Chevrolet and ousted General Motors founder William C. Durant started the company on November 3, 1911 as the Chevrolet Motor Car Company. Durant used the Chevrolet Motor Car Company to acquire a controlling stake in General Motors with a reverse merger occurring on May 2, 1918, and propelled himself back to the GM presidency. After Durant\'s second ousting in 1919, Alfred Sloan, with his maxim \"a car for every purse and purpose\", would pick the Chevrolet brand to become the volume leader in the General Motors family, selling mainstream vehicles to compete with Henry Ford\'s Model T in 1919 and overtaking Ford as the best-selling car in the United States by 1929.'),(5,'Dodge','Dodge is an American brand of automobile manufactured by FCA US LLC (formerly known as Fiat Chrysler Group LLC), based in Auburn Hills, Michigan. Dodge vehicles currently include performance cars, though for much of its existence Dodge was Chrysler\'s mid-priced brand above Plymouth.'),(6,'Ferrari','Ferrari is an Italian luxury sports car manufacturer based in Maranello. Founded by Enzo Ferrari in 1939 out of Alfa Romeo\'s race division as Auto Avio Costruzioni, the company built its first car in 1940. However, the company\'s inception as an auto manufacturer is usually recognized in 1947, when the first Ferrari-badged car was completed.'),(7,'Ford','Ford Motor Company, commonly known as Ford, is an American multinational automaker that has its main headquarters in Dearborn, Michigan, a suburb of Detroit. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the Ford brand, and most luxury cars under the Lincoln brand. Ford also owns Brazilian SUV manufacturer Troller, an 8% stake in Aston Martin of the United Kingdom and a 32% stake in Jiangling Motors. It also has joint-ventures in China (Changan Ford), Taiwan (Ford Lio Ho), Thailand (AutoAlliance Thailand), Turkey (Ford Otosan), and Russia (Ford Sollers). The company is listed on the New York Stock Exchange and is controlled by the Ford family; they have minority ownership but the majority of the voting power.'),(8,'Koenigsegg','The Swedish auto industry has some of the finest luxury cars to offer. What is really interesting is that they are on par with other rival car manufacturers like Ferrari, Lamborghini, Volvo and even Aston Martin. Koenigsegg is one such manufacturer that has exceeded expectations with the introduction of hyper-cars. The history of Koenigsegg started from nothing and now has made considerable contributions to the car market. Take a look at the Koenigsegg Logo, history timeline and list of latest models.'),(9,'Lamborghini','Automobili Lamborghini S.p.A. (Italian pronunciation: [lamborˈɡiːni]) is an Italian brand and manufacturer of luxury sports cars and SUVs based in Sant\'Agata Bolognese. The company is owned by the Volkswagen Group through its subsidiary Audi.'),(10,'Mazda','Mazda Motor Corporation, commonly referred to as simply Mazda, is a Japanese multinational automaker based in Fuchū, Aki District, Hiroshima Prefecture, Japan.'),(11,'Mercedes-Benz','Mercedes-Benz is a German global automobile marque and a division of Daimler AG. Mercedes-Benz is known for luxury vehicles, vans, trucks, buses, coaches and ambulances. The headquarters is in Stuttgart, Baden-Württemberg. The name first appeared in 1926 under Daimler-Benz. In 2018, Mercedes-Benz was the largest seller of premium vehicles in the world, having sold 2.31 million passenger cars.'),(12,'Mitsubishi','The Mitsubishi Group is a group of autonomous Japanese multinational companies in a variety of industries.'),(13,'Pagani','Pagani Automobili S.p.A is well-known for creating some of the best super cars in the world. The Pagani history started when the company was founded in 1992 by former Lamborghini Engineer, Horacio Pagani. So, how did he get the idea to start a company of his own? Horacio, from an early age, loved making cars using balsa wood. These designs can also be seen at the Pagani Showroom in Italy, Pagani being one of the biggest names in Italian cars. Continue reading to learn more about the Pagani logo, history timeline and latest models.'),(14,'Porsche','Dr.-Ing. h.c. F. Porsche AG, usually shortened to Porsche AG, is a German automobile manufacturer specializing in high-performance sports cars, SUVs and sedans. The headquarters of Porsche AG is in Stuttgart, and is owned by Volkswagen AG, a controlling stake of which is owned by Porsche Automobil Holding SE. Porsche\'s current lineup includes the 718 Boxster/Cayman, 911, Panamera, Macan, Cayenne and Taycan.'),(15,'Rolls Royce','Rolls-Royce Motor Cars Limited is a British luxury automobile maker. A wholly owned subsidiary of German group BMW, it was established in 1998 after BMW was licensed the rights to the Rolls-Royce brand name and logo from Rolls-Royce plc and acquired the rights to the Spirit of Ecstasy and Rolls-Royce grill shape trademarks from Volkswagen AG. Rolls-Royce Motor Cars Limited operates from purpose-built administrative and production facilities opened in 2003 across from the historic Goodwood Circuit in Goodwood, West Sussex, England, United Kingdom. Rolls-Royce Motors Cars Limited is the exclusive manufacturer of Rolls-Royce branded motor cars since 2003.'),(16,'Toyota','Toyota Motor Corporation is a Japanese multinational automotive manufacturer headquartered in Toyota, Aichi, Japan. In 2017, Toyota\'s corporate structure consisted of 364,445 employees worldwide and, as of December 2019, was the tenth-largest company in the world by revenue. Toyota is the largest automobile manufacturer in Japan, and the second-largest in the world behind Volkswagen, based on 2018 unit sales.'),(17,'Volkswagen','Volkswagen, is a German automaker founded in 1937 by the German Labour Front, known for the iconic \"Beetle\" and headquartered in Wolfsburg. It is the flagship marque of the Volkswagen Group, the largest automaker by worldwide sales in 2016 and 2017. The group\'s biggest market is in China, which delivers 40% of its sales and profits.');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `idCar` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) NOT NULL,
  `model` varchar(25) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `photo` varchar(45) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`idCar`),
  UNIQUE KEY `idCar_UNIQUE` (`idCar`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--
-- ORDER BY:  `idCar`

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'BMW','M3',500,'images/M3.jpg',NULL,2017,1,'Convertible'),(2,'Bugatti','Chiron',950,'images/Chiron.jpg','Height: 1.21 m, Power output: 1,103 kW (1,500 PS; 1,479 hp), Kerb weight: : 1,996 kg (4,400 lb)(est); 1,978 kg (4,360 lb)(est) (Chiron Sport);',2017,1,'Luxurious'),(3,'Koenigsegg','One 1',700,'images/One1.jpg','The Koenigsegg Agera has a power-to-weight ratio of 1.51 kg (3.33 lb) per horsepower.',2011,1,'Luxurious'),(4,'Lamborghini ','Centenario',800,'images/Centenario.jpg',NULL,2016,1,'Luxurious'),(5,'Pagani','Zonda 760 X',600,'images/Zonda760X.jpg',NULL,2015,1,'Luxurious'),(6,'Toyota','Corola',450,'images/Corolla.jpg',NULL,2017,1,'Convertible'),(7,'Chevrolet','Bolt',320,'images/Bolt.png',NULL,2017,1,'Compact'),(8,'Chevrolet','Impala',380,'images/Impala.jpg',NULL,2016,1,'Convertible'),(9,'Toyota','Highlander',500,'images/Highlander.png',NULL,2018,1,'SUV'),(10,'Ford','F-150',550,'images/F150.jpeg',NULL,2018,1,'Truck'),(11,'Mazda','RX-8',250,'images/RX8.jpg',NULL,2005,1,'Sport'),(12,'Aston Martin','DB9',300,'images/DB9.jpg',NULL,2016,1,'Sport'),(13,'Dodge','Viper',500,'images/Viper.jpg',NULL,2017,1,'Luxurious'),(14,'Ford','GT',650,'images/GT.jpg',NULL,2015,1,'Luxurious'),(15,'Lamborghini','Gallardo',480,'images/Gallardo.jpg',NULL,2016,1,'Sport'),(16,'Mazda','RX-7',350,'images/RX7.jpg',NULL,2008,1,'Sport'),(17,'Mercedes-Benz','SL 500',400,'images/SL500.jpg',NULL,2010,1,'Sport'),(18,'Mercedes-Benz','SLR McLaren',700,'images/SLRMcLaren.jpg',NULL,2015,1,'Luxurious'),(19,'Chevrolet','Cobalt SS',350,'images/ColbatSS.jpg','The Cobalt SS was GM\'s first foray into the tuner market, launching with a 205 hp (153 kW; 208 PS) supercharged 2.0 L engine in late 2004 as a 2005 model, paired only with the F35 manual transmission of Opel.',2010,1,'Sport'),(20,'BMW','M3 GTR',800,'images/M3GTR.jpg','Porsche claimed during the 2001 ALMS season that BMW had violated the ALMS entry rules and the spirit of Gran Turismo. This was based on the fact that the V8 engine in the M3 GTR was not available in any road legal BMW M3.',2016,1,'Luxurious'),(21,'Chevrolet','Corvette C6',480,'images/CorvetteC6.png','The Corvette C6 featured new bodywork with exposed headlamps, revised suspension geometry, a larger passenger compartment, a larger 6.0 L (364 cu in; 5967 cc) engine and a higher level of refinement.',2013,1,'Luxurious'),(22,'Mitsubishi','Lancer Evolution VIII',650,'images/LancerEvolutionVIII.jpg',NULL,2012,1,'Convertible'),(23,'Porsche','Carrera GT',750,'images/CarreraGT.jpg','t is the first Carrera S to be powered by the 3.8 litre flat-six producing 350 bhp at 6,600 rpm and 400 Nm (295 lb-ft.) of torque at 4,600 rpm.',2015,1,'Luxurious'),(24,'Bugatti','Divo',1000,'images/Divo.jpg','The car is 8.0 seconds quicker than the Chiron around the Nardo test track according to the manufacturer and generates 456 kg (1,005 lb) of downforce at top speed, 90 kg (198 lb) more than the Chiron.',2018,1,'Luxurious'),(25,'Bugatti','Veyron EB 16.4',850,'images/Veyron.jpeg','The Bugatti Veyron EB 16.4 is a mid-engined sports car, designed and developed in Germany by the Volkswagen Group and manufactured in Molsheim, France, by Bugatti. It was named after the racing driver Pierre Veyron.',2016,1,'Luxurious'),(26,'Ferrari','Burago',800,'images/Burago.jpg',NULL,2015,1,'Luxurious'),(27,'Ferrari','Spider',850,'images/Spider.jpg',NULL,2016,1,'Luxurious'),(28,'Rolls Royce','Cullinan',650,'images/Cullinan.jpg',NULL,2015,1,'SUV');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `idReservation` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idCar` int(11) unsigned NOT NULL,
  `idUser` int(11) unsigned NOT NULL,
  `fullPrice` int(11) unsigned NOT NULL,
  `dateIn` date NOT NULL,
  `dateOut` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`idReservation`),
  UNIQUE KEY `idreservations_UNIQUE` (`idReservation`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--
-- ORDER BY:  `idReservation`

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,26,1,4800,'2020-09-22','2020-09-27',1);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullName` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `admin` tinyint(1) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `idUser_UNIQUE` (`idUser`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--
-- ORDER BY:  `idUser`

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lucio Afonso','lucioafonso@icloud.com','4319e682d889bdb3fbacd69c5615cfe09b7ec8ec87977c9ba620b412bc80d857',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'app'
--

--
-- Dumping routines for database 'app'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17 17:35:30
