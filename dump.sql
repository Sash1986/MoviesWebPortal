/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - kino_portal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kino_portal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kino_portal`;

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`id`,`name`) values (1,'Dramma'),(2,'Comedy'),(3,'Melodrama'),(4,'fantastic'),(5,'Ujas'),(6,'Trailer'),(10,'Tragicomedy');

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `year` int(4) NOT NULL,
  `createdDate` datetime NOT NULL,
  `picture` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

insert  into `movie`(`id`,`title`,`description`,`year`,`createdDate`,`picture`,`director`) values (1,'Game of thrones','Game of thronesGame of thronesGame',2017,'2019-02-26 16:40:04','',''),(2,'Titanik','kiiououoi hgjgjg',2005,'2019-02-26 16:40:05','',''),(3,'Last Night in New York','hgjhgjhg kjhkhkh',2018,'2019-02-26 16:42:00','',''),(4,'Alexandro','khhkh kjhkhkhkh',2019,'0000-00-00 00:00:00','',''),(5,'Goqor','dgfuidfh sjdfgjfg kdfhhjgf adfjg',2018,'0000-00-00 00:00:00','',''),(6,'adadda','adhgf dhgf gjsdgf jdhgf',2018,'0000-00-00 00:00:00','',''),(7,'aada','jdgf jegf iergf igrf jhfh',2011,'0000-00-00 00:00:00','',''),(8,'ani',' sdgfjhdgfjj gfjahf aj',1993,'0000-00-00 00:00:00','',''),(9,'Super Mama','hjjhjh uiuiuhyiu',2015,'0000-00-00 00:00:00','',''),(10,'newKino','hjgjgjg uyuyyuyu',2019,'0000-00-00 00:00:00','',''),(11,'Our CHild Tango',' Frunzik',1985,'0000-00-00 00:00:00','',''),(12,'menq enq mer sarer@','khkhjhk hjjgjg',1980,'0000-00-00 00:00:00','','');

/*Table structure for table `movies_genre` */

DROP TABLE IF EXISTS `movies_genre`;

CREATE TABLE `movies_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movies_genre` */

insert  into `movies_genre`(`movie_id`,`genre_id`) values (3,1),(5,1),(4,2),(9,2),(2,3),(4,3),(7,6),(8,6),(11,9),(12,9);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` enum('ADMIN','USER') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`userType`) values (1,'admin','Good Admin','admin','admin','ADMIN');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
