-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sequelmovie
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB-1:10.5.9+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artiste` (
  `artisteID` int(5) NOT NULL,
  `artisteName` varchar(50) NOT NULL,
  `artisteNationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`artisteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artiste`
--

LOCK TABLES `artiste` WRITE;
/*!40000 ALTER TABLE `artiste` DISABLE KEYS */;
INSERT INTO `artiste` VALUES (1,'Thomas Newman','American'),(2,'Nino Rota','Italian'),(3,'Joe Bloggs','British'),(4,'Carmine Coppola','Italian'),(5,'Hans Zimmer','Germamn'),(6,'Hughie Lewis','American'),(7,'Edsel Dope','American'),(8,'Acey Slade','American'),(9,'Racci Shay','American'),(10,'Virus','American'),(11,'John Hurley','American'),(12,'Neil Diamond','American'),(13,'Robert Bell','American'),(14,'Ronald Bell','American'),(15,'George Brown','American'),(16,'Lavell Evans','American'),(17,'Amir Bayyan','American'),(18,'Marilyn Manson','American'),(19,'Liam Howlett','British'),(20,'Keith Flint','British'),(21,'Maxim','British'),(22,'Till Lindemann','German'),(23,'Richard Z. Kruspe','German'),(24,'Paul Landers','German'),(25,'Christoph Schneider',NULL),(26,'Rob Zombie',NULL),(27,'Baauer',NULL),(28,'Jim Croce',NULL),(29,'David Julyan','American'),(30,'Joe Cuba',NULL),(31,'Bo Diddley','American'),(32,'Howlin Wolf','American');
/*!40000 ALTER TABLE `artiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artiste_band`
--

DROP TABLE IF EXISTS `artiste_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artiste_band` (
  `artiste_bandID` int(5) NOT NULL,
  `bandRole` varchar(50) DEFAULT NULL,
  `a_artisteID` int(5) NOT NULL,
  `b_bandID` int(5) NOT NULL,
  PRIMARY KEY (`artiste_bandID`),
  KEY `artiste_band_fk_artiste` (`a_artisteID`),
  KEY `artiste_band_fk_band` (`b_bandID`),
  CONSTRAINT `artiste_band_fk_artiste` FOREIGN KEY (`a_artisteID`) REFERENCES `artiste` (`artisteID`),
  CONSTRAINT `artiste_band_fk_band` FOREIGN KEY (`b_bandID`) REFERENCES `band` (`bandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artiste_band`
--

LOCK TABLES `artiste_band` WRITE;
/*!40000 ALTER TABLE `artiste_band` DISABLE KEYS */;
INSERT INTO `artiste_band` VALUES (1,'lead vocals',7,1),(2,'bass',8,1),(3,'drums',9,1),(4,'lead guitar',10,1),(5,'bass',13,2),(6,'saxophone',14,2),(7,'drums',15,2),(8,'lead vocals',16,2),(9,'guitar',17,2),(10,'Keyboards',19,3),(11,'dancer',20,3),(12,'MC',21,3),(14,'lead vocals',22,4),(15,'lead guitar',23,4),(16,'bass',24,4),(17,'drums',25,4);
/*!40000 ALTER TABLE `artiste_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `bandID` int(5) NOT NULL,
  `bandName` varchar(25) NOT NULL,
  PRIMARY KEY (`bandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
INSERT INTO `band` VALUES (1,'Dope'),(2,'Kool and the Gang'),(3,'The Prodigy'),(4,'Rammstein');
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genreID` int(5) NOT NULL,
  `genreType` varchar(25) NOT NULL,
  `genreDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Drama','Drama film is a genre that relies on the emotional and relational development of realistic characters'),(2,'Crime','Films that focus on crime'),(3,'Action','Action film is a film genre in which the protagonist or protagonists end up in a series of challenges that typically include violence, extended fighting, physical feats, and frantic chases.'),(4,'Comic Book','Film adaptions from comic books and graphic novels'),(5,'Sci-Fi','Films of speculative fiction, typically dealing with imaginative concepts such as futuristic science and tech'),(6,'Mystery','Is a type of fiction in which a detective, or other professional, solves a crime or series of crimes'),(7,'Adventure','An adventure is an event or series of events that happens outside the course of the protagonist\'s ordinary life, usually accompanied by danger, often by physical action.'),(8,'Comedy','Comedy is a genre of film in which the main emphasis is on humor. ');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movieID` int(5) NOT NULL,
  `movieTitle` varchar(50) NOT NULL,
  `movieDesc` varchar(150) DEFAULT NULL,
  `movieReleaseDate` date DEFAULT NULL,
  `movieRuntime` int(3) DEFAULT NULL CHECK (`movieRuntime` > 25),
  `movieCertificate` varchar(4) DEFAULT NULL CHECK (`movieCertificate` in ('N/A','PG','12','12A','15','15A','16','18')),
  `movieRating` int(1) DEFAULT NULL CHECK (`movieRating` > 0 and `movieRating` <= 5),
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Shawshank Redemption','Two imprisoned men bond over a number of years','1994-10-14',142,'18',5),(2,'The Godfather','The aging patriarch of an organized crime dynasty transfers control to his son','1972-03-24',175,'18',5),(3,'The Dark Knight','The menace known as the joker wreaks havoc on Gotham City','2008-07-18',152,'12',5),(4,'American Psycho','A wealthy New York investment banking executive hides his alternate psychopathic ego','2000-04-14',102,'18',4),(5,'Pulp Fiction','The lives of two mod hit men, a boxer, a gangster`s wife are all inter twinned','1994-10-14',154,'18',4),(6,'The Matrix','A hacker learns from mysterious rebels about the true nature of his reality','1999-03-31',136,'18',4),(7,'Logan','In a near future, a weary Logan cares for an ailing professor x','2017-03-03',135,'18',5),(8,'The Prestige','Two stage magicians engage in competitive one-upmanship in an attempt to create the ultimate stage illusion','2006-10-20',135,'12',5),(9,'Interstellar','A team of explorers travel through a wormhole in space in an attempt to save the human race','2014-11-07',169,'12',5),(10,'The Wolf of Wall Street','Based on the true story of Jordan Belfort','2013-12-25',180,'18',4);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `movie_genreID` int(5) NOT NULL,
  `m_movieID` int(5) NOT NULL,
  `g_genreID` int(5) NOT NULL,
  PRIMARY KEY (`movie_genreID`),
  KEY `movie_genre_fk_movie` (`m_movieID`),
  KEY `movie_genre_fk_genre` (`g_genreID`),
  CONSTRAINT `movie_genre_fk_genre` FOREIGN KEY (`g_genreID`) REFERENCES `genre` (`genreID`),
  CONSTRAINT `movie_genre_fk_movie` FOREIGN KEY (`m_movieID`) REFERENCES `movie` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,1,1),(2,2,2),(3,2,1),(4,3,2),(5,3,3),(6,3,4),(7,4,2),(8,4,1),(9,5,1),(10,5,2),(11,6,3),(12,6,5),(13,7,4),(14,7,3),(15,7,5),(16,8,1),(17,8,6),(18,9,7),(19,9,1),(20,9,5),(21,10,8),(22,10,2);
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_studio`
--

DROP TABLE IF EXISTS `movie_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_studio` (
  `movie_studioID` int(5) NOT NULL,
  `m_movieID` int(5) NOT NULL,
  `s_studioID` int(5) NOT NULL,
  PRIMARY KEY (`movie_studioID`),
  KEY `movie_studio_fk_movie` (`m_movieID`),
  KEY `movie_studio_fk_studio` (`s_studioID`),
  CONSTRAINT `movie_studio_fk_movie` FOREIGN KEY (`m_movieID`) REFERENCES `movie` (`movieID`),
  CONSTRAINT `movie_studio_fk_studio` FOREIGN KEY (`s_studioID`) REFERENCES `studio` (`studioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_studio`
--

LOCK TABLES `movie_studio` WRITE;
/*!40000 ALTER TABLE `movie_studio` DISABLE KEYS */;
INSERT INTO `movie_studio` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,3),(7,6,6),(8,7,7),(9,8,3),(10,9,3),(11,10,2);
/*!40000 ALTER TABLE `movie_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `personID` int(5) NOT NULL,
  `personFirstName` varchar(50) NOT NULL,
  `personLastName` varchar(50) DEFAULT NULL,
  `personNationality` varchar(50) DEFAULT NULL,
  `personPicture` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Morgan','Freeman','American','http://www.imdb.com/name/nm0000151/mediaviewer/rm3587479040?ref_=nm_ov_ph'),(2,'Tim','Robbins','American','http://www.imdb.com/name/nm0000209/mediaviewer/rm3789593344?ref_=nm_ov_ph'),(3,'Frank','Darabont','American','http://www.imdb.com/name/nm0001104/mediaviewer/rm3402598144?ref_=nm_ov_ph'),(4,'Stephen','King','American','http://www.imdb.com/name/nm0000175/mediaviewer/rm2162726912?ref_=nm_ov_ph'),(5,'Al','Pacino','American','http://www.imdb.com/name/nm0000199/mediaviewer/rm3894385408?ref_=nm_ov_ph'),(6,'Marlon','Brando','American','http://www.imdb.com/name/nm0000008/mediaviewer/rm1238402304?ref_=nm_ov_ph'),(7,'Francis Ford','Coppola','Italian','http://www.imdb.com/name/nm0000338/mediaviewer/rm604472576?ref_=nm_ov_ph'),(8,'Christian','Bale','American','http://www.imdb.com/name/nm0000288/mediaviewer/rm3114052352?ref_=nm_ov_ph'),(9,'Heath','Ledger','American','http://www.imdb.com/name/nm0005132/mediaviewer/rm1308400384?ref_=nm_ov_ph'),(10,'Christopher','Nolan',NULL,'http://www.imdb.com/name/nm0634240/mediaviewer/rm2047771392?ref_=nm_ov_ph'),(11,'Jonathan','Nolan',NULL,'http://www.imdb.com/name/nm0634300/mediaviewer/rm3593121792?ref_=nm_ov_ph'),(12,'Mary','Harron',NULL,'http://www.imdb.com/name/nm0366004/mediaviewer/rm1540923392?ref_=nm_ov_ph'),(13,'Justin','Theroux',NULL,'http://www.imdb.com/name/nm0857620/mediaviewer/rm605539840?ref_=nm_ov_ph'),(14,'John','Travolta','American','http://www.imdb.com/name/nm0000237/mediaviewer/rm3504714496?ref_=nm_ov_ph'),(15,'Tim','Roth','American',NULL),(16,'Quentin','Tarantino','American','http://www.imdb.com/name/nm0000233/mediaviewer/rm4146963200?ref_=nm_ov_ph'),(17,'Keanu','Reeves','American','http://www.imdb.com/name/nm0000206/mediaviewer/rm3751520256?ref_=nm_ov_ph'),(18,'Laurence','Fishburne',NULL,'http://www.imdb.com/name/nm0000401/mediaviewer/rm1925683200?ref_=nm_ov_ph'),(19,'Lana','Wachowski','American','http://www.imdb.com/name/nm0905154/mediaviewer/rm3382618368?ref_=nm_ov_ph'),(20,'Lilly','Wachowski',NULL,'http://www.imdb.com/name/nm0905152/mediaviewer/rm1928797184?ref_=nm_ov_ph'),(21,'Hugh','Jackman','Australian','http://www.imdb.com/name/nm0413168/mediaviewer/rm772779264?ref_=nm_ov_ph'),(22,'Paddy','Stewart','American',NULL),(23,'Matthew','McConaughey','American','http://www.imdb.com/name/nm0000190/mediaviewer/rm477213952?ref_=nm_ov_ph'),(24,'Ellen',NULL,'American','http://www.imdb.com/name/nm0000995/mediaviewer/rm577411584?ref_=nm_ov_ph'),(25,'Leonardo','DiCaprio','American','http://www.imdb.com/name/nm0000138/mediaviewer/rm487490304?ref_=nm_ov_ph'),(26,'Jonah','Hill','American','http://www.imdb.com/name/nm1706767/mediaviewer/rm4139364608?ref_=nm_ov_ph'),(27,'Martin','Scorsese','American','http://www.imdb.com/name/nm0000217/mediaviewer/rm1221431040?ref_=nm_ov_ph');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poster`
--

DROP TABLE IF EXISTS `poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poster` (
  `posterID` int(5) NOT NULL,
  `posterLink` varchar(200) DEFAULT 'http://www.uidownload.com/files/478/82/442/error-404-page-not-found-icon.jpg',
  `p_movieID` int(5) NOT NULL,
  PRIMARY KEY (`posterID`),
  KEY `poster_fk_movie` (`p_movieID`),
  CONSTRAINT `poster_fk_movie` FOREIGN KEY (`p_movieID`) REFERENCES `movie` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poster`
--

LOCK TABLES `poster` WRITE;
/*!40000 ALTER TABLE `poster` DISABLE KEYS */;
INSERT INTO `poster` VALUES (1,NULL,1),(2,NULL,2),(3,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg',3),(4,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyMTYwMTI0N15BMl5BanBnXkFtZTgwNTU2NTYxMTE@._V1_SX300.jpg',4),(5,'https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_SX300.jpg',5),(6,NULL,6),(7,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjI1MjkzMjczMV5BMl5BanBnXkFtZTgwNDk4NjYyMTI@._V1_SX300.jpg',7),(8,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_SX300.jpg',8),(9,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1_SX300.jpg',9),(10,'https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg',10);
/*!40000 ALTER TABLE `poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleID` int(5) NOT NULL,
  `roleDesc` varchar(25) NOT NULL,
  `m_movieID` int(5) NOT NULL,
  `p_personID` int(5) NOT NULL,
  PRIMARY KEY (`roleID`),
  KEY `role_fk_movie` (`m_movieID`),
  KEY `role_fk_person` (`p_personID`),
  CONSTRAINT `role_fk_movie` FOREIGN KEY (`m_movieID`) REFERENCES `movie` (`movieID`),
  CONSTRAINT `role_fk_person` FOREIGN KEY (`p_personID`) REFERENCES `person` (`personID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'co-actor',1,1),(2,'lead actor',1,2),(3,'director',1,3),(4,'writer',1,4),(5,'lead actor',2,6),(6,'co-actor',2,5),(7,'director',2,7),(8,'director',3,10),(9,'writer',3,11),(10,'screenplay',3,10),(11,'lead actor',3,8),(12,'co-actor',3,9),(13,'lead actor',4,8),(14,'director',4,12),(15,'co-actor',4,13),(16,'co-actor',5,14),(17,'co-actor',5,15),(18,'co-actor',5,16),(19,'director',5,16),(20,'writer',5,16),(21,'lead actor',6,17),(22,'co-actor',6,18),(23,'director',6,19),(24,'director',6,20),(25,'writer',6,19),(26,'writer',6,20),(27,'lead actor',7,21),(28,'co-actor',7,22),(29,'lead actor',8,21),(30,'co-actor',8,8),(31,'director',8,10),(32,'lead actor',9,23),(33,'co-actor',9,24),(34,'director',9,10),(35,'lead actor',10,25),(36,'co-actor',10,26),(37,'director',10,17);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `songID` int(5) NOT NULL,
  `songName` varchar(100) NOT NULL,
  `songLength` int(3) DEFAULT NULL,
  `songURL` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`songID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'May',1,'www.youtube.com/may'),(2,'Shawshank Prison',2,'www.youtube.com/shawshankprison'),(3,'New Fish',3,'www.youtube.com/newfish'),(4,'Rock Hammer',3,'www.youtube,com/rockhammer'),(5,'An Inch of his life',2,'www.youtube.com/aninchofhislife'),(6,'The Godfather Waltz',4,'www.youtube.com/thewaltz'),(7,'I have but one heart',3,'www.youtube.com/ihavebutoneheart'),(8,'The Pickup',2,'www.youtube.com/thepickup'),(9,'Connies Wedding',3,'www.youtube.com/connieswedding'),(10,'Miller Compilation',20,'www.youtube.com/millercompilation'),(11,'Hip to be Square',3,'www.youtube.com/hiptobesquare'),(12,'You Spin me Round',2,'www.youtube.com/youspinmeround'),(13,'Jungle Boogie',3,'www.youtube.com/jungleboogie'),(14,'Son of a Preacher Man',4,'www.youtube.com/sonofapreacherman'),(15,'Girl, Youll be a Woman Soon',3,'www.youtube.com/youllbeawomansoon'),(16,'Rock is Dead',3,'www.youtube.com/rockisdead'),(17,'Mindfields',5,'www.youtube.com/mindfields'),(18,'Du Hast',4,'www.youtube.com/duhast'),(19,'Dragula',4,'www.youtube.com/dragula'),(20,'Make it Bang',4,'www.youtube.com/makeitbang'),(21,'I got a name',3,'www.youtube.com/igotaname'),(22,'Are you watching closely',3,'www.youtube.com/areyouwatching'),(23,'The light field',2,'www.youtube.com/thelightfield'),(24,'Border Meets Sarah',4,'www.youtube.com/bordermeetssarah'),(25,'No, not today',5,'www.youtube.com/nonottoday'),(26,'Interstellar compilation',72,'https://www.youtube.com/watch?v=iBfk37Fa3H0'),(27,'Bang Bang',4,'www.youtube.com/bangbang'),(28,'Pretty Thing',3,'www.youtube.com/prettything'),(29,'Smokestack Lightning',4,'www.youtube.com/smokestack');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_artiste`
--

DROP TABLE IF EXISTS `song_artiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_artiste` (
  `song_artisteID` int(5) NOT NULL,
  `s_songID` int(5) NOT NULL,
  `a_artisteID` int(5) NOT NULL,
  PRIMARY KEY (`song_artisteID`),
  KEY `song_artiste_fk_song` (`s_songID`),
  KEY `song_artiste_fk_artiste` (`a_artisteID`),
  CONSTRAINT `song_artiste_fk_artiste` FOREIGN KEY (`a_artisteID`) REFERENCES `artiste` (`artisteID`),
  CONSTRAINT `song_artiste_fk_song` FOREIGN KEY (`s_songID`) REFERENCES `song` (`songID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_artiste`
--

LOCK TABLES `song_artiste` WRITE;
/*!40000 ALTER TABLE `song_artiste` DISABLE KEYS */;
INSERT INTO `song_artiste` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,3),(8,8,2),(9,9,4),(10,10,5),(11,11,6),(12,14,11),(13,15,12),(14,16,18),(15,19,26),(16,20,27),(17,21,28),(18,22,29),(19,23,29),(20,24,29),(21,25,29),(22,26,5),(23,27,30),(24,28,31),(25,29,32);
/*!40000 ALTER TABLE `song_artiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_band`
--

DROP TABLE IF EXISTS `song_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song_band` (
  `song_bandID` int(5) NOT NULL,
  `song_songID` int(5) NOT NULL,
  `b_bandID` int(5) NOT NULL,
  PRIMARY KEY (`song_bandID`),
  KEY `song_band_fk_song` (`song_songID`),
  KEY `song_band_fk_band` (`b_bandID`),
  CONSTRAINT `song_band_fk_band` FOREIGN KEY (`b_bandID`) REFERENCES `band` (`bandID`),
  CONSTRAINT `song_band_fk_song` FOREIGN KEY (`song_songID`) REFERENCES `song` (`songID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_band`
--

LOCK TABLES `song_band` WRITE;
/*!40000 ALTER TABLE `song_band` DISABLE KEYS */;
INSERT INTO `song_band` VALUES (1,12,1),(2,13,2),(3,17,3),(4,18,4);
/*!40000 ALTER TABLE `song_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtrack`
--

DROP TABLE IF EXISTS `soundtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soundtrack` (
  `soundtrackID` int(5) NOT NULL,
  `soundtrackName` varchar(100) NOT NULL,
  `soundtrackSize` int(2) DEFAULT NULL,
  `m_movieID` int(5) NOT NULL,
  PRIMARY KEY (`soundtrackID`),
  KEY `soundtrack_fk_movie` (`m_movieID`),
  CONSTRAINT `soundtrack_fk_movie` FOREIGN KEY (`m_movieID`) REFERENCES `movie` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtrack`
--

LOCK TABLES `soundtrack` WRITE;
/*!40000 ALTER TABLE `soundtrack` DISABLE KEYS */;
INSERT INTO `soundtrack` VALUES (1,'The Shawshank Redemption Soundtrack',5,1),(2,'The Godfather Soundtrack',6,2),(3,'The Dark Knight',5,3),(4,'American Psycho: Music from the Controversial movie picture',10,4),(5,'Music from the Motion Picture Pulp Fiction',16,5),(6,'The Matrix, Music, Music from the Motion Picture',13,6),(7,'Logan Music',16,7),(8,'The Prestige: Original Score',17,8),(9,'Interstellar Soundtrack',16,9),(10,'The Wolf Of Wall Street',16,10);
/*!40000 ALTER TABLE `soundtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtrack_song`
--

DROP TABLE IF EXISTS `soundtrack_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soundtrack_song` (
  `soundtrack_songID` int(5) NOT NULL,
  `soundtrack_soundtrackID` int(5) NOT NULL,
  `song_songID` int(5) NOT NULL,
  PRIMARY KEY (`soundtrack_songID`),
  KEY `soundtrack_song_fk_soundtrack` (`soundtrack_soundtrackID`),
  KEY `soundtrack_song_fk_song` (`song_songID`),
  CONSTRAINT `soundtrack_song_fk_song` FOREIGN KEY (`song_songID`) REFERENCES `song` (`songID`),
  CONSTRAINT `soundtrack_song_fk_soundtrack` FOREIGN KEY (`soundtrack_soundtrackID`) REFERENCES `soundtrack` (`soundtrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtrack_song`
--

LOCK TABLES `soundtrack_song` WRITE;
/*!40000 ALTER TABLE `soundtrack_song` DISABLE KEYS */;
INSERT INTO `soundtrack_song` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,6,16),(17,6,17),(18,6,18),(19,6,19),(20,7,20),(21,7,21),(22,8,22),(23,8,23),(24,8,24),(25,8,25),(26,9,26),(27,10,27),(28,10,28),(29,10,29);
/*!40000 ALTER TABLE `soundtrack_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studio` (
  `studioID` int(5) NOT NULL,
  `studioName` varchar(50) NOT NULL,
  `studioAddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`studioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio`
--

LOCK TABLES `studio` WRITE;
/*!40000 ALTER TABLE `studio` DISABLE KEYS */;
INSERT INTO `studio` VALUES (1,'Castle Rock Studios','America'),(2,'Paramount Pictures','America'),(3,'Warner Bros','America'),(4,'Lionsgate Studios','America'),(5,'Miramax Films','America'),(6,'Road Show Entertainment','Australia'),(7,'Marvel Studios','America');
/*!40000 ALTER TABLE `studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailer`
--

DROP TABLE IF EXISTS `trailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trailer` (
  `trailerID` int(5) NOT NULL,
  `trailerLength` int(2) DEFAULT NULL,
  `trailerURL` varchar(150) DEFAULT NULL,
  `t_movieID` int(5) NOT NULL,
  PRIMARY KEY (`trailerID`),
  KEY `trailer_fk_movie` (`t_movieID`),
  CONSTRAINT `trailer_fk_movie` FOREIGN KEY (`t_movieID`) REFERENCES `movie` (`movieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailer`
--

LOCK TABLES `trailer` WRITE;
/*!40000 ALTER TABLE `trailer` DISABLE KEYS */;
INSERT INTO `trailer` VALUES (1,2,'https://www.youtube.com/watch?v=6hB3S9bIaco',1),(2,2,'https://www.youtube.com/watch?v=sY1S34973zA',2),(3,3,'https://www.youtube.com/watch?v=EXeTwQWrcwY',3),(4,3,'https://www.youtube.com/watch?v=2GIsExb5jJU',4),(5,2,'https://www.youtube.com/watch?v=s7EdQ4FqbhY',5),(6,3,'https://www.youtube.com/watch?v=m8e-FF8MsqU',6),(7,2,'https://www.youtube.com/watch?v=DekuSxJgpbY',7),(8,3,'https://www.youtube.com/watch?v=o4gHCmTQDVI',8),(9,3,'https://www.youtube.com/watch?v=zSWdZVtXT7E',9),(10,2,'https://www.youtube.com/watch?v=iszwuX1AK6A',10),(11,3,'https://www.youtube.com/watch?v=vKQi3bBA1y8',6),(12,2,'https://www.youtube.com/watch?v=pabEtIERlic',10),(13,3,'https://www.youtube.com/watch?v=5DO-nDW43Ik',2),(14,2,'https://www.youtube.com/watch?v=ewlwcEBTvcg',5),(15,2,'https://www.youtube.com/watch?v=Div0iP65aZo&t=15s',7),(16,4,'https://www.youtube.com/watch?v=RH3OxVFvTeg',7);
/*!40000 ALTER TABLE `trailer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 18:18:54
