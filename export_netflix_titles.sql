/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - import_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`import_data` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `import_data`;

/*Table structure for table `netflix_titles` */

DROP TABLE IF EXISTS `netflix_titles`;

CREATE TABLE `netflix_titles` (
  `show_id` int(11) NOT NULL,
  `type_movie` enum('Movie','Tv Show') DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `director` varchar(80) DEFAULT NULL,
  `casting` text DEFAULT NULL,
  `country` varchar(80) DEFAULT NULL,
  `date_added` varchar(30) DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `listed_in` varchar(100) DEFAULT NULL,
  `description_movie` text DEFAULT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ramen_ratings` */

DROP TABLE IF EXISTS `ramen_ratings`;

CREATE TABLE `ramen_ratings` (
  `review` int(11) NOT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `variety` varchar(100) DEFAULT NULL,
  `style` enum('Cup','Pack','Tray','Bowl','Box','Can','Bar') DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `stars` float(3,2) DEFAULT NULL,
  `top_ten` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`review`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `ramen_ratings_1` */

DROP TABLE IF EXISTS `ramen_ratings_1`;

CREATE TABLE `ramen_ratings_1` (
  `COL 1` varchar(120) DEFAULT NULL,
  `COL 2` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
