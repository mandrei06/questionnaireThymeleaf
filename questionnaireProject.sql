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
  `answerId` int(11) NOT NULL,
  `questionId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table questionnaireproject.answer: ~0 rows (approximately)

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table questionnaireproject.user: ~7 rows (approximately)
INSERT INTO `user` (`userId`, `email`) VALUES
	(1, 'ma@ya.com'),
	(2, 'dsas@s.c'),
	(3, 'dREAas@s.c'),
	(23, ''),
	(50, 'asdsa'),
	(51, '5454weds'),
	(52, '565');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
