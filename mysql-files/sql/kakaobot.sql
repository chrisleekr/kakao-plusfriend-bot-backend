# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.43)
# Database: kakaobot
# Generation Time: 2019-03-29 12:03:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `board_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `content` text,
  `author` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `board_idx` (`board_id`,`subject`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `board_id`, `subject`, `content`, `author`, `created_at`, `updated_at`)
VALUES
	(2,3,'a, scelerisque sed, sapien. Nunc','mus. Proin vel','Conan Sloan','2019-05-23 19:48:26','2018-08-26 08:17:58'),
	(3,1,'tortor nibh sit amet orci.','lorem,','Colby Rivers','2020-02-10 10:30:10','2019-02-11 00:51:51'),
	(4,3,'blandit enim consequat purus. Maecenas','facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.','Tate Craft','2019-05-15 06:13:19','2019-09-20 01:44:33'),
	(5,3,'Integer eu lacus. Quisque imperdiet,','non magna. Nam ligula elit, pretium et, rutrum non,','Phelan Jacobson','2019-10-14 09:00:21','2018-05-10 14:38:53'),
	(6,2,'nibh enim, gravida sit amet,','ante bibendum ullamcorper.','Tarik Benson','2018-08-10 17:05:58','2020-03-09 15:19:05'),
	(7,2,'dictum placerat, augue. Sed molestie.','Nullam enim. Sed nulla ante, iaculis nec, eleifend non,','Reed Evans','2019-08-12 20:24:31','2020-02-21 03:59:20'),
	(8,3,'Phasellus in felis. Nulla tempor','enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.','David Day','2020-01-19 04:02:36','2018-08-22 01:50:59'),
	(9,1,'eu sem. Pellentesque ut ipsum','pede. Cum','Rafael Wong','2019-02-09 03:39:07','2019-06-05 22:08:46'),
	(10,2,'ullamcorper. Duis cursus, diam at','cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin','Christopher Hawkins','2018-11-03 13:24:10','2020-03-06 15:15:45'),
	(11,3,'magna nec quam. Curabitur vel','sit amet ante. Vivamus non lorem vitae odio','Zane Mclean','2020-03-09 00:26:09','2018-08-10 08:37:37'),
	(12,2,'arcu imperdiet ullamcorper. Duis at','orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique','Kibo Sharpe','2019-08-17 07:04:00','2018-11-22 20:41:51'),
	(13,2,'ac metus vitae velit egestas','eu metus.','Elton Barrera','2019-11-08 00:34:58','2018-06-05 12:55:59'),
	(14,3,'cursus et, magna. Praesent interdum','Cras','Jared Willis','2019-11-11 09:38:18','2018-08-03 19:51:37'),
	(15,3,'tristique ac, eleifend vitae, erat.','et netus et malesuada fames','Geoffrey Dominguez','2018-10-06 15:57:14','2018-08-19 14:54:27'),
	(16,2,'Aliquam fringilla cursus purus. Nullam','Donec nibh.','Jasper Riggs','2018-07-17 05:56:55','2018-04-02 10:08:02'),
	(17,1,'turpis nec mauris blandit mattis.','penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin','Allen Dawson','2018-10-23 23:29:47','2018-10-30 11:38:15'),
	(18,3,'a, arcu. Sed et libero.','justo sit amet','Lyle Armstrong','2019-06-03 18:50:31','2019-03-28 02:53:04'),
	(19,2,'malesuada vel, venenatis vel, faucibus','Duis dignissim','Castor Stuart','2018-05-04 19:38:31','2019-10-09 07:09:54'),
	(20,2,'Nullam enim. Sed nulla ante,','vel lectus.','Preston Petersen','2018-07-27 22:02:50','2020-03-26 16:42:21'),
	(21,2,'montes, nascetur ridiculus mus. Aenean','sollicitudin orci sem eget','Thor Cherry','2019-08-21 13:31:02','2018-06-21 09:03:17'),
	(22,2,'feugiat metus sit amet ante.','Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit','Ralph Gonzalez','2018-05-15 04:48:35','2018-07-15 23:12:06'),
	(23,1,'consectetuer, cursus et, magna. Praesent','a odio semper cursus.','Nehru Schmidt','2018-07-02 10:59:19','2018-04-06 09:24:36'),
	(24,2,'Suspendisse non leo. Vivamus nibh','porttitor vulputate, posuere vulputate, lacus. Cras','Declan Witt','2018-10-10 06:09:12','2019-07-17 14:25:36'),
	(25,1,'massa lobortis ultrices. Vivamus rhoncus.','eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed','Quamar Finch','2018-11-07 18:10:47','2019-02-21 14:59:33'),
	(26,1,'Nullam lobortis quam a felis','sed orci lobortis augue scelerisque','Jonah Wiley','2019-10-16 21:51:47','2019-10-28 17:44:06'),
	(27,3,'consectetuer adipiscing elit. Etiam laoreet,','ante ipsum primis in faucibus orci luctus et','Ryan Delacruz','2019-10-14 06:11:04','2018-06-17 13:13:20'),
	(28,3,'nisl. Maecenas malesuada fringilla est.','Duis mi enim, condimentum eget, volutpat ornare, facilisis','Nathan Cline','2018-04-25 13:11:16','2019-01-19 14:35:42'),
	(29,1,'purus. Maecenas libero est, congue','auctor ullamcorper, nisl','Phelan Sampson','2018-05-17 20:45:01','2018-11-18 15:26:45'),
	(30,2,'Suspendisse dui. Fusce diam nunc,','sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam','Declan Lowery','2018-10-10 20:19:17','2019-05-09 01:27:29'),
	(31,1,'Vestibulum ante ipsum primis in','dolor. Quisque tincidunt pede ac','Colt Wilson','2019-10-25 12:06:56','2019-07-12 10:54:53'),
	(32,3,'sed, sapien. Nunc pulvinar arcu','lorem,','Henry Wolfe','2019-03-04 01:22:24','2018-05-31 12:26:14'),
	(33,1,'vitae semper egestas, urna justo','Quisque porttitor eros nec tellus.','Marsden Hill','2019-03-07 16:15:34','2019-03-08 15:01:21'),
	(34,2,'nulla at sem molestie sodales.','ac, eleifend vitae,','Quamar Velazquez','2018-10-01 09:31:09','2018-03-30 09:17:30'),
	(35,2,'Morbi vehicula. Pellentesque tincidunt tempus','lectus ante dictum mi, ac','Chaim Chapman','2018-04-28 19:15:07','2018-11-12 01:38:24'),
	(36,3,'Vestibulum ante ipsum primis in','Fusce mi lorem,','Hu Mcclure','2020-02-09 22:34:39','2019-05-09 16:35:21'),
	(37,1,'et pede. Nunc sed orci','Phasellus nulla. Integer vulputate, risus a ultricies','Ferdinand Dominguez','2018-08-15 18:39:29','2020-02-02 10:23:03'),
	(38,3,'gravida. Aliquam tincidunt, nunc ac','Maecenas mi felis, adipiscing fringilla, porttitor vulputate,','Harper Church','2018-08-13 11:29:14','2019-12-05 16:57:16'),
	(39,2,'orci. Ut sagittis lobortis mauris.','senectus et','Igor Petty','2019-11-27 03:16:55','2019-09-22 03:17:43'),
	(40,2,'porta elit, a feugiat tellus','Phasellus elit pede, malesuada vel, venenatis vel, faucibus','Coby Berry','2018-06-23 15:34:43','2018-06-19 18:38:35'),
	(41,3,'leo. Cras vehicula aliquet libero.','Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci','Holmes Day','2019-06-28 21:13:21','2019-01-21 01:47:05'),
	(42,1,'ac risus. Morbi metus. Vivamus','mauris.','Kamal Skinner','2019-03-18 05:42:50','2019-11-13 00:33:05'),
	(43,1,'sit amet, dapibus id, blandit','fermentum risus, at fringilla purus mauris a nunc.','Robert Bullock','2019-06-28 04:46:48','2018-10-23 16:34:55'),
	(44,3,'felis. Nulla tempor augue ac','eu, odio. Phasellus at augue id ante dictum cursus. Nunc','Austin Burris','2018-06-22 01:13:23','2018-07-16 00:17:10'),
	(45,3,'a nunc. In at pede.','tincidunt tempus risus. Donec','Ulysses Gibson','2019-12-22 03:41:18','2020-03-22 04:45:06'),
	(46,1,'a, malesuada id, erat. Etiam','Aenean','Theodore Tate','2019-08-12 08:13:14','2018-09-11 18:10:17'),
	(47,3,'bibendum sed, est. Nunc laoreet','lobortis mauris. Suspendisse aliquet molestie','Matthew Mejia','2018-12-10 23:37:30','2018-10-03 00:41:49'),
	(48,1,'bibendum ullamcorper. Duis cursus, diam','tortor nibh sit amet orci. Ut','Elton Deleon','2020-01-22 00:19:49','2019-11-09 09:09:25'),
	(49,2,'enim commodo hendrerit. Donec porttitor','velit.','Craig Black','2019-08-13 05:04:58','2019-02-23 14:16:09'),
	(50,2,'Fusce mi lorem, vehicula et,','sem, vitae aliquam','Upton Norton','2019-05-28 10:36:01','2018-07-23 20:33:15'),
	(51,3,'malesuada id, erat. Etiam vestibulum','parturient montes,','Arsenio Lott','2019-05-26 00:59:03','2019-03-09 05:22:11'),
	(52,1,'sed pede nec ante blandit','tincidunt','Lars Sherman','2019-04-22 06:48:15','2019-05-25 19:01:50'),
	(53,3,'mi enim, condimentum eget, volutpat','risus. Duis a mi fringilla','Akeem Stein','2018-04-14 00:19:13','2019-01-07 23:23:31'),
	(54,2,'turpis egestas. Fusce aliquet magna','Donec nibh. Quisque nonummy','Paul Dorsey','2019-11-17 08:31:24','2018-11-22 20:35:20'),
	(55,1,'nunc, ullamcorper eu, euismod ac,','tempus non, lacinia at, iaculis quis, pede. Praesent','Graiden Melton','2019-09-03 10:01:21','2019-02-17 12:10:08'),
	(56,3,'aliquet, metus urna convallis erat,','eget odio. Aliquam','Colt Rush','2019-03-03 22:48:32','2018-06-18 15:08:39'),
	(57,3,'In tincidunt congue turpis. In','dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.','Len Frost','2020-02-25 11:53:49','2018-04-09 02:11:53'),
	(58,2,'tincidunt congue turpis. In condimentum.','dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet','Merrill Slater','2018-04-08 04:58:02','2018-04-02 13:54:30'),
	(59,2,'faucibus orci luctus et ultrices','ligula eu enim. Etiam imperdiet','Linus Lynn','2018-07-16 04:32:00','2019-12-18 11:49:38'),
	(60,3,'pede, nonummy ut, molestie in,','ipsum ac mi eleifend','Nicholas Marshall','2018-04-03 20:21:23','2018-12-27 22:52:05'),
	(61,3,'vel sapien imperdiet ornare. In','commodo hendrerit.','Brenden Riddle','2018-09-28 05:19:52','2018-05-07 13:05:52'),
	(62,3,'Integer vitae nibh. Donec est','Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,','Gareth Pickett','2018-05-25 09:29:50','2019-05-24 08:23:29'),
	(63,2,'dolor quam, elementum at, egestas','Curabitur consequat, lectus sit amet luctus','Vernon Mckinney','2018-05-04 03:49:57','2019-05-25 03:18:20'),
	(64,1,'ac urna. Ut tincidunt vehicula','diam at pretium aliquet, metus urna','Carlos Schroeder','2019-05-26 22:26:53','2019-08-03 21:47:41'),
	(65,1,'Proin ultrices. Duis volutpat nunc','nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat','Kasper Blackwell','2019-04-12 01:23:09','2018-04-08 11:22:37'),
	(66,3,'eu, ultrices sit amet, risus.','amet nulla. Donec non justo. Proin non','Daquan Conner','2019-09-05 01:02:44','2019-04-02 10:20:40'),
	(67,3,'dignissim magna a tortor. Nunc','Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat','Rigel Carr','2019-08-21 21:11:19','2018-04-03 07:16:58'),
	(68,3,'Donec sollicitudin adipiscing ligula. Aenean','pede et risus. Quisque libero lacus, varius et,','Conan Wiley','2018-12-11 00:29:32','2018-06-15 20:33:13'),
	(69,1,'diam. Pellentesque habitant morbi tristique','vel, vulputate eu, odio.','Kuame Chapman','2019-12-11 13:59:14','2018-08-18 09:00:19'),
	(70,1,'Nunc ut erat. Sed nunc','tempus eu,','Tiger Dudley','2019-07-22 23:06:51','2019-06-11 07:52:46'),
	(71,1,'Sed nulla ante, iaculis nec,','laoreet,','Donovan Cross','2020-01-25 07:54:44','2020-03-23 22:36:43'),
	(72,3,'Morbi metus. Vivamus euismod urna.','libero lacus, varius et, euismod et, commodo at, libero.','Alexander Cohen','2019-10-31 10:57:32','2019-10-29 09:42:52'),
	(73,3,'Pellentesque habitant morbi tristique senectus','pellentesque, tellus sem mollis dui, in sodales elit','Len Horne','2019-09-29 01:07:43','2018-06-03 21:32:13'),
	(74,2,'auctor quis, tristique ac, eleifend','sapien, gravida non,','Philip Bowman','2018-05-26 19:01:10','2019-09-25 15:07:37'),
	(75,2,'Nunc ullamcorper, velit in aliquet','risus. In mi','Armand West','2019-04-07 00:53:46','2019-07-05 22:18:34'),
	(76,2,'lacinia at, iaculis quis, pede.','Proin dolor. Nulla','Connor Decker','2019-07-27 08:34:24','2018-11-20 07:05:48'),
	(77,1,'nunc. In at pede. Cras','sed orci','Martin Booker','2020-02-01 09:45:33','2019-06-22 21:30:56'),
	(78,2,'lectus quis massa. Mauris vestibulum,','eu tellus. Phasellus elit','Plato Kim','2018-04-12 01:35:30','2018-05-22 20:55:26'),
	(79,2,'Morbi accumsan laoreet ipsum. Curabitur','sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh','Brody Reed','2020-01-29 23:55:13','2020-01-07 08:17:04'),
	(80,1,'justo. Proin non massa non','eros non enim commodo hendrerit.','Clarke Dixon','2018-09-25 05:58:37','2018-12-23 08:39:09'),
	(81,1,'luctus. Curabitur egestas nunc sed','Quisque ornare tortor at risus. Nunc ac sem ut dolor','Sawyer Mayo','2018-12-14 13:24:14','2019-05-11 01:25:11'),
	(82,3,'at, egestas a, scelerisque sed,','eros.','Zane Vinson','2018-07-04 02:29:55','2018-11-07 11:11:03'),
	(83,1,'sed sem egestas blandit. Nam','at, libero. Morbi accumsan laoreet ipsum. Curabitur','Jerry Berry','2019-06-12 18:05:03','2019-02-28 04:38:47'),
	(84,2,'ut nisi a odio semper','mauris','Kennedy Gilmore','2019-01-14 19:46:19','2018-10-22 02:25:14'),
	(85,1,'ipsum dolor sit amet, consectetuer','Maecenas','Salvador Mccormick','2018-05-13 22:40:08','2019-12-26 10:58:33'),
	(86,2,'enim nisl elementum purus, accumsan','cursus non, egestas a, dui. Cras pellentesque. Sed dictum.','Brennan Workman','2019-02-15 01:13:21','2019-02-11 11:31:53'),
	(87,2,'Donec tempor, est ac mattis','purus mauris a nunc. In at pede. Cras','Tyler Hickman','2019-12-01 13:36:20','2019-09-20 16:31:26'),
	(88,3,'urna convallis erat, eget tincidunt','sit amet,','Cadman Moore','2018-11-23 21:46:48','2019-08-05 21:33:29'),
	(89,1,'odio. Nam interdum enim non','non, luctus','Tiger Rollins','2018-06-23 02:39:51','2018-12-20 02:10:43'),
	(90,3,'per conubia nostra, per inceptos','non, lobortis quis,','Tiger Mcdonald','2020-03-13 07:16:19','2018-09-07 10:30:36'),
	(91,1,'vitae aliquam eros turpis non','nulla vulputate','Donovan Bates','2020-01-12 13:29:50','2018-03-30 04:46:24'),
	(92,3,'ut ipsum ac mi eleifend','nec mauris blandit mattis.','David Craft','2019-03-11 20:47:11','2018-12-29 08:15:38'),
	(93,3,'orci. Phasellus dapibus quam quis','adipiscing ligula.','Daniel Becker','2018-04-17 01:02:31','2020-01-12 07:52:11'),
	(94,1,'pretium et, rutrum non, hendrerit','erat semper rutrum.','Quentin Walters','2018-06-29 03:36:41','2019-03-15 17:27:42'),
	(95,3,'aliquet, metus urna convallis erat,','Donec luctus aliquet','Hayes Ryan','2020-02-12 08:23:49','2018-08-22 21:19:28'),
	(96,3,'Aliquam rutrum lorem ac risus.','Proin dolor. Nulla','Burke Dawson','2020-01-18 00:48:55','2019-12-27 10:09:51'),
	(97,1,'hendrerit id, ante. Nunc mauris','tempor','Conan Sutton','2020-01-25 06:56:22','2018-11-16 20:37:54'),
	(98,2,'ante ipsum primis in faucibus','nisi magna sed dui. Fusce','Colby Mcintosh','2019-03-11 12:19:17','2018-06-24 12:06:24'),
	(99,2,'erat. Vivamus nisi. Mauris nulla.','mi tempor lorem,','Steven Rios','2018-11-01 01:28:04','2019-02-01 06:50:19'),
	(100,2,'posuere cubilia Curae; Donec tincidunt.','et','Dustin Middleton','2019-12-14 00:06:02','2019-05-01 17:59:36'),
	(101,3,'imperdiet dictum magna. Ut tincidunt','et risus.','Kamal Lewis','2019-07-16 18:45:09','2018-11-12 04:16:28');

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
