-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for questionnaireproject
DROP DATABASE IF EXISTS `questionnaireproject`;
CREATE DATABASE IF NOT EXISTS `questionnaireproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `questionnaireproject`;

-- Dumping structure for table questionnaireproject.answer
DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answerId` int(11) NOT NULL AUTO_INCREMENT,
  `questionId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  PRIMARY KEY (`answerId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table questionnaireproject.answer: ~26 rows (approximately)
INSERT INTO `answer` (`answerId`, `questionId`, `userId`, `answer`) VALUES
	(1, NULL, NULL, NULL),
	(2, NULL, NULL, NULL),
	(3, NULL, NULL, NULL),
	(4, NULL, NULL, NULL),
	(5, NULL, NULL, NULL),
	(6, NULL, NULL, NULL),
	(7, NULL, NULL, NULL),
	(8, NULL, NULL, NULL),
	(9, NULL, NULL, NULL),
	(10, 1, 68, '34'),
	(11, 2, 68, '45'),
	(12, 3, 68, '56'),
	(13, 4, 68, '34 years'),
	(14, 5, 68, 'marketing'),
	(15, 6, 68, '4'),
	(16, 7, 68, '4'),
	(17, 8, 68, '4'),
	(18, 9, 68, '4'),
	(19, 1, 69, '1'),
	(20, 2, 69, '1'),
	(21, 3, 69, '1'),
	(22, 4, 69, '1'),
	(23, 5, 69, '1'),
	(24, 6, 69, '1'),
	(25, 7, 69, '1'),
	(26, 8, 69, '1');

-- Dumping structure for table questionnaireproject.question
DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table questionnaireproject.question: ~11 rows (approximately)
INSERT INTO `question` (`questionId`, `question`) VALUES
	(0, 'What is your email?'),
	(1, 'How big is your company?'),
	(2, 'How many users you have?'),
	(3, 'How many employees you have?'),
	(4, 'How long has your company been in business?'),
	(5, 'In which industry is your business?'),
	(6, 'What was the annual revenue for your company last year?'),
	(7, 'Does your company have more than one location?'),
	(8, 'Does your company do business online?'),
	(9, 'Does your company serve consumers, businesses or both?'),
	(10, 'Which marketing channels do you use to promote your business?\r\n');

-- Dumping structure for table questionnaireproject.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table questionnaireproject.user: ~23 rows (approximately)
INSERT INTO `user` (`userId`, `email`) VALUES
	(1, 'ma@ya.com'),
	(2, 'dsas@s.c'),
	(3, 'dREAas@s.c'),
	(23, ''),
	(50, 'asdsa'),
	(51, '5454weds'),
	(52, '565'),
	(53, 'billy.dev@jenkins.training'),
	(54, 'billy.dev@jenkins.training'),
	(55, 'sfsf'),
	(56, 'asfaca'),
	(57, '5345'),
	(58, 'fdvs'),
	(59, '6tgrd'),
	(60, 'vsdv4'),
	(61, 'g34g3'),
	(62, '2f43c3'),
	(63, 'g54g34'),
	(64, 'r32r'),
	(65, 'asdas'),
	(66, 'dsv'),
	(67, 'dsa'),
	(68, 'andrei@yahoo.com'),
	(69, 'prr@o'),
	(70, 'fas');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
