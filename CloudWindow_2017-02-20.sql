# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.14)
# Database: CloudWindow
# Generation Time: 2017-02-20 15:14:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add log entry',1,'add_logentry'),
	(2,'Can change log entry',1,'change_logentry'),
	(3,'Can delete log entry',1,'delete_logentry'),
	(4,'Can add permission',2,'add_permission'),
	(5,'Can change permission',2,'change_permission'),
	(6,'Can delete permission',2,'delete_permission'),
	(7,'Can add group',3,'add_group'),
	(8,'Can change group',3,'change_group'),
	(9,'Can delete group',3,'delete_group'),
	(10,'Can add user',4,'add_user'),
	(11,'Can change user',4,'change_user'),
	(12,'Can delete user',4,'delete_user'),
	(13,'Can add content type',5,'add_contenttype'),
	(14,'Can change content type',5,'change_contenttype'),
	(15,'Can delete content type',5,'delete_contenttype'),
	(16,'Can add session',6,'add_session'),
	(17,'Can change session',6,'change_session'),
	(18,'Can delete session',6,'delete_session'),
	(19,'Can add containerinfo',7,'add_containerinfo'),
	(20,'Can change containerinfo',7,'change_containerinfo'),
	(21,'Can delete containerinfo',7,'delete_containerinfo'),
	(22,'Can add drawmapinfo',8,'add_drawmapinfo'),
	(23,'Can change drawmapinfo',8,'change_drawmapinfo'),
	(24,'Can delete drawmapinfo',8,'delete_drawmapinfo'),
	(25,'Can add freeportinfo',9,'add_freeportinfo'),
	(26,'Can change freeportinfo',9,'change_freeportinfo'),
	(27,'Can delete freeportinfo',9,'delete_freeportinfo'),
	(28,'Can add nodeinfo',10,'add_nodeinfo'),
	(29,'Can change nodeinfo',10,'change_nodeinfo'),
	(30,'Can delete nodeinfo',10,'delete_nodeinfo'),
	(31,'Can add usageinfo',11,'add_usageinfo'),
	(32,'Can change usageinfo',11,'change_usageinfo'),
	(33,'Can delete usageinfo',11,'delete_usageinfo'),
	(34,'Can add userinfo',12,'add_userinfo'),
	(35,'Can change userinfo',12,'change_userinfo'),
	(36,'Can delete userinfo',12,'delete_userinfo');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`)
VALUES
	(1,'pbkdf2_sha256$24000$06dhpyWNOPtQ$cDLVJoJRbf5NufhaX/z5geBb6ooLatSF2KYp/VuuYDk=','2016-09-09 07:21:22',1,'CloudWindowSuperUser','','','example@cloudwindow.com',1,1,'2016-09-03 12:05:08'),
	(2,'pbkdf2_sha256$24000$OCs9lkj6wFG5$NtPQCLNL9CXrmawablPr2Mb4MRltZLQ6dxeFlzfENKg=','2016-09-13 09:33:46',0,'CloudWindowManager','','','',0,1,'2016-09-03 12:05:58');

/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table containerinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `containerinfo`;

CREATE TABLE `containerinfo` (
  `container_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `container_name` varchar(45) NOT NULL,
  `container_cid` varchar(45) NOT NULL,
  `container_nodeid` int(10) unsigned NOT NULL,
  `container_userid` int(10) unsigned NOT NULL,
  `container_portid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `container_core` tinyint(3) unsigned DEFAULT '0',
  `container_performance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `container_memory` int(10) unsigned NOT NULL DEFAULT '0',
  `container_storage` int(10) unsigned NOT NULL DEFAULT '0',
  `container_resolution` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `container_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `container_backup1` int(11) DEFAULT '0',
  `container_backup2` int(11) DEFAULT '0',
  PRIMARY KEY (`container_id`),
  UNIQUE KEY `container_id_UNIQUE` (`container_id`),
  KEY `fk_container_nodeid_idx` (`container_nodeid`),
  KEY `fk_container_userid_idx` (`container_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `containerinfo` WRITE;
/*!40000 ALTER TABLE `containerinfo` DISABLE KEYS */;

INSERT INTO `containerinfo` (`container_id`, `container_name`, `container_cid`, `container_nodeid`, `container_userid`, `container_portid`, `container_core`, `container_performance`, `container_memory`, `container_storage`, `container_resolution`, `container_status`, `container_backup1`, `container_backup2`)
VALUES
	(1,'firefox','8acd4054e041',0,12,0,2,3,3,3,3,3,0,0),
	(20,'gvim','8acd4054e041',0,12,0,2,3,3,3,3,3,0,0);

/*!40000 ALTER TABLE `containerinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`)
VALUES
	(1,'2016-09-03 12:05:58','2','CloudWindowManager',1,'Added.',4,1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(1,'admin','logentry'),
	(3,'auth','group'),
	(2,'auth','permission'),
	(4,'auth','user'),
	(5,'contenttypes','contenttype'),
	(7,'managerdash','containerinfo'),
	(8,'managerdash','drawmapinfo'),
	(9,'managerdash','freeportinfo'),
	(10,'managerdash','nodeinfo'),
	(11,'managerdash','usageinfo'),
	(12,'managerdash','userinfo'),
	(6,'sessions','session');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2016-08-27 13:29:25'),
	(2,'auth','0001_initial','2016-08-27 13:29:26'),
	(3,'admin','0001_initial','2016-08-27 13:29:26'),
	(4,'admin','0002_logentry_remove_auto_add','2016-08-27 13:29:26'),
	(5,'contenttypes','0002_remove_content_type_name','2016-08-27 13:29:26'),
	(6,'auth','0002_alter_permission_name_max_length','2016-08-27 13:29:26'),
	(7,'auth','0003_alter_user_email_max_length','2016-08-27 13:29:26'),
	(8,'auth','0004_alter_user_username_opts','2016-08-27 13:29:26'),
	(9,'auth','0005_alter_user_last_login_null','2016-08-27 13:29:26'),
	(10,'auth','0006_require_contenttypes_0002','2016-08-27 13:29:26'),
	(11,'auth','0007_alter_validators_add_error_messages','2016-08-27 13:29:27'),
	(12,'managerdash','0001_initial','2016-08-27 13:29:27'),
	(13,'managerdash','0002_containerinfo_drawmapinfo_nodeinfo_usageinfo_userinfo','2016-08-27 13:29:27'),
	(14,'sessions','0001_initial','2016-08-27 13:29:27'),
	(15,'managerdash','0003_freeportinfo','2016-08-28 06:38:19');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('0ynhyj8t133tc2ijxiitsy6oxf8sf9t3','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-27 06:30:47'),
	('20u6i6454hvxam34cwcs5zvw6rpr64pq','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-26 08:15:31'),
	('3nl4qpetluut3grtmz6ndjxyr7fj7s41','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-19 02:46:27'),
	('547wz9kvly2n3m8eldqrbfm3azagj5ak','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-26 07:23:04'),
	('cn980bbtuer23bj54xdvgdj4p700463y','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-23 07:32:32'),
	('cnwjpkuwae3jhkbk7ngd44jzg3qlbytl','Njc5ODQyMjdjYzhkZTc2MzZmMmI2ZWU0NWI2ZTFjNjU0MDkyMzQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmZTc4ZTk2Y2FjOWMxZTNkODU2YWY0ODJlNzlhNWE5MjBlNzA3NmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-17 12:05:38'),
	('jaj5n2g4aoj7gczjcrw40lpzavpp6n69','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-26 07:36:42'),
	('tm6876rxuo17l7nrhw6btovb68szym62','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-23 07:53:21'),
	('uhn89usf3mfd57y7qk1fu5tewkivo66m','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-26 08:58:07'),
	('ump0uhpvigbjpw56ei1oalqfq91vl9yq','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-26 09:57:16'),
	('x1wyaltloo0enf9h9wdhz1xcyga2ulye','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-22 07:52:34'),
	('xf85tkpotrhgdmtlzcwq1o0l8q5wyqog','OGU1ZWZlZTU5NWI2ZWEyYzY0YjljMzgwYmU5YmZlZDBmZDQ2NjFkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwNDQ2YWM1ZmE1ZTBmMDJjZGM1MjQxN2M0MmNhOGYzZWExMWZlMGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-27 09:33:46'),
	('yoammvmbz30lj61m0guh6xbl7sfdz4ky','Njc5ODQyMjdjYzhkZTc2MzZmMmI2ZWU0NWI2ZTFjNjU0MDkyMzQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmZTc4ZTk2Y2FjOWMxZTNkODU2YWY0ODJlNzlhNWE5MjBlNzA3NmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-23 07:21:22');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table drawmapinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `drawmapinfo`;

CREATE TABLE `drawmapinfo` (
  `drawregion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `region_counter` int(10) unsigned NOT NULL DEFAULT '0',
  `region_id` varchar(3) NOT NULL DEFAULT '',
  `region_backup1` int(11) DEFAULT '0',
  `region_backup2` int(11) DEFAULT '0',
  PRIMARY KEY (`drawregion_id`),
  UNIQUE KEY `region_id_UNIQUE` (`region_id`),
  UNIQUE KEY `drawregion_id_UNIQUE` (`drawregion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table freeportinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `freeportinfo`;

CREATE TABLE `freeportinfo` (
  `portid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `port_nodeid` int(11) unsigned NOT NULL,
  `port_number` int(11) NOT NULL,
  `port_backup1` int(11) DEFAULT NULL,
  `port_backup2` int(11) DEFAULT NULL,
  PRIMARY KEY (`portid`),
  KEY `fk_freeport_nodeid_idx` (`port_nodeid`),
  CONSTRAINT `fk_freeport_nodeid` FOREIGN KEY (`port_nodeid`) REFERENCES `nodeinfo` (`node_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table nodeinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nodeinfo`;

CREATE TABLE `nodeinfo` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_ip` bigint(20) unsigned NOT NULL DEFAULT '0',
  `node_name` varchar(45) NOT NULL,
  `node_core` tinyint(4) unsigned DEFAULT '0',
  `node_memory` int(10) unsigned DEFAULT '0',
  `node_logicstorage` int(11) unsigned NOT NULL DEFAULT '0',
  `node_usedstorage` int(11) unsigned NOT NULL DEFAULT '0',
  `node_containernumber` tinyint(4) unsigned DEFAULT '0',
  `node_backup1` int(11) DEFAULT '0',
  `node_backup2` int(11) DEFAULT '0',
  PRIMARY KEY (`node_id`),
  UNIQUE KEY `node_name_UNIQUE` (`node_name`),
  UNIQUE KEY `node_id_UNIQUE` (`node_id`),
  UNIQUE KEY `node_ip_UNIQUE` (`node_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `nodeinfo` WRITE;
/*!40000 ALTER TABLE `nodeinfo` DISABLE KEYS */;

INSERT INTO `nodeinfo` (`node_id`, `node_ip`, `node_name`, `node_core`, `node_memory`, `node_logicstorage`, `node_usedstorage`, `node_containernumber`, `node_backup1`, `node_backup2`)
VALUES
	(16,3232246635,'test_manual_add_1',16,32768,1000,55,3,1,0);

/*!40000 ALTER TABLE `nodeinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Recommend
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Recommend`;

CREATE TABLE `Recommend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `container_name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `idstore` int(11) NOT NULL AUTO_INCREMENT,
  `store_imagename` varchar(45) NOT NULL,
  `store_hubname` varchar(45) NOT NULL,
  `store_price` int(11) NOT NULL,
  `store_description` text NOT NULL,
  PRIMARY KEY (`idstore`),
  UNIQUE KEY `idstore_UNIQUE` (`idstore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;

INSERT INTO `store` (`idstore`, `store_imagename`, `store_hubname`, `store_price`, `store_description`)
VALUES
	(1,'mckz','dorowu/ubuntu-desktop-lxde-vnc',2,'this is the first fuck'),
	(6,'FUCK','dorowu/ubuntu-desktop-lxde-vnc',5,'the second fucker'),
	(7,'aaa','dorowu/ubuntu-desktop-lxde-vnc',1,'third fucker'),
	(10,'cnm','dorowu/ubuntu-desktop-lxde-vnc',3,'this is your new iphone'),
	(11,'iphone','dorowu/ubuntu-desktop-lxde-vnc',1,'爱拼才会赢'),
	(12,'nihao','dorowu/ubuntu-desktop-lxde-vnc',5,'这个是一个视窗'),
	(13,'qweqw','dorowu/ubuntu-desktop-lxde-vnc',2,'cnm');

/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_article`;

CREATE TABLE `tb_article` (
  `articleId` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `emitTime` datetime DEFAULT NULL,
  `lastUpdateTime` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `repliesNum` int(45) DEFAULT NULL,
  `color` int(10) DEFAULT NULL,
  `deForArticle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleId`),
  UNIQUE KEY `articleId_UNIQUE` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_article` WRITE;
/*!40000 ALTER TABLE `tb_article` DISABLE KEYS */;

INSERT INTO `tb_article` (`articleId`, `title`, `content`, `emitTime`, `lastUpdateTime`, `username`, `repliesNum`, `color`, `deForArticle`)
VALUES
	(114,'CloudWinow论坛开始试运营','测试','2016-09-09 17:58:02','2016-09-09 20:47:30','hua',2,6,NULL),
	(115,'可以发中文了','可以发中文了吗？','2016-09-09 18:31:03','2016-09-10 15:30:01','hua',1,5,NULL),
	(116,'人工测试开始','如题','2016-09-09 19:25:32','2016-09-13 14:42:09','hua',1,2,NULL),
	(117,'好好学习','三分天注定，七分靠打拼，爱拼才会赢！<br>','2016-09-09 19:28:12','2016-09-09 19:28:51','wu',1,2,NULL),
	(118,'勇攀，不止高峰','我们是一群热血的年轻人<div>勇攀，不止高峰。</div>','2016-09-09 19:28:18','2016-09-09 19:28:18','hua',0,3,NULL),
	(119,'浅谈云视窗的未来','云视窗的未来。<div>就是这样</div>','2016-09-09 19:29:35','2016-09-09 19:29:35','hua',0,5,NULL),
	(120,'如何学习他人优秀的IT技术','第一是毅力，第二是加油','2016-09-09 19:30:23','2016-09-09 19:30:23','hua',0,2,NULL),
	(121,'平凡之路','我曾经跨过山和大海<br>','2016-09-09 19:31:02','2016-09-09 19:31:02','wu',0,6,NULL),
	(122,'你离开了南京，从此没有人和我说话','啦啦啦','2016-09-09 19:31:54','2016-09-09 19:33:56','wu',3,5,NULL),
	(123,'测试我们的论坛','在进行论坛的建设过程中，我们也经历了一系列的问题。现在，终于好了。','2016-09-09 19:32:30','2016-09-09 19:32:30','hua',0,2,NULL),
	(124,'CloudWindow与云视窗，你更喜欢哪一个？','这是英文和中文的比拼','2016-09-09 19:34:52','2016-09-09 19:34:52','hua',0,2,NULL),
	(125,'组员不能相信项目经理','同意的跟楼','2016-09-09 19:35:21','2016-09-09 20:31:44','yuan',21,2,NULL),
	(126,'你在南方的艳阳里，大雪纷飞','我在北方的寒夜里四季如春','2016-09-09 19:38:37','2016-09-09 19:42:21','wu',1,6,NULL),
	(127,'你好','<br><div><div style=\"color: rgba(255, 255, 255, 0.843137); font-size: 14px; background-color: rgb(244, 67, 54); float: left;\">hua &nbsp;|&nbsp;发表时间：2016-09-09 19:25:32.0 &nbsp;|&nbsp;最后评论时间：2016-09-09 19:25:32.0</div><p style=\"margin-bottom: 0px; color: rgba(255, 255, 255, 0.843137); font-size: 14px; background-color: rgb(244, 67, 54);\"></p><div style=\"color: rgba(255, 255, 255, 0.843137); background-color: rgb(244, 67, 54); float: right; font-size: 25px; text-align: right;\">0</div><br style=\"color: rgba(255, 255, 255, 0.843137); font-size: 14px; background-color: rgb(244, 67, 54);\"><a href=\"Article?id=116\" style=\"background-color: rgb(244, 67, 54); color: rgba(255, 255, 255, 0.843137); font-size: 14px;\"><h3>人工测试开始</h3></a></div>','2016-09-09 19:41:03','2016-09-09 19:41:03','yuan',0,5,NULL),
	(128,'天空之城 我爱南京','gogogo<br>','2016-09-09 19:44:52','2016-09-09 19:48:02','wu',0,1,NULL),
	(129,'IT职场之路','如题','2016-09-09 19:48:59','2016-09-09 19:49:09','hua',1,3,NULL),
	(130,'We are the World','袁皓唱的好啊！<br>','2016-09-09 19:49:13','2016-09-09 19:51:05','wu',2,3,NULL),
	(131,'在本机操作','操作','2016-09-09 20:09:25','2016-09-09 20:09:25','li',0,6,NULL),
	(132,'我是谁','我到底是谁','2016-09-09 20:11:40','2016-09-09 20:11:40','yuan',0,4,NULL),
	(133,'测试','我来测试了','2016-09-09 20:18:38','2016-09-09 20:18:38','Duzhen',0,2,NULL),
	(134,'加油','CloudWindow无敌，CloudWindow必胜','2016-09-09 20:18:59','2016-09-09 20:18:59','Duzhen',0,2,NULL),
	(135,'醒悟','阳光仍保持/两只狗见面时的激动','2016-09-09 20:35:45','2016-09-09 20:35:45','li',0,6,NULL),
	(136,'雨夜 北岛','<div>即使明天早上&nbsp;</div><div>枪口和血淋淋的太阳&nbsp;</div><div>让我交出青春、自由和笔&nbsp;</div><div>我也决不会交出这个夜晚&nbsp;</div><div>我决不会交出你</div>','2016-09-09 20:40:06','2016-09-09 20:40:06','li',0,6,NULL),
	(137,'尝试再次发表新帖','如题','2016-09-10 14:21:34','2016-09-10 15:28:38','hua',1,2,NULL),
	(139,'测试','回车修复了<br>','2016-09-10 15:29:10','2016-09-10 15:29:10','li',0,4,NULL),
	(140,'发帖再次尝试','如题','2016-09-12 10:36:27','2016-09-12 10:36:27','hua',0,1,NULL),
	(145,'发帖','手机发帖','2016-09-12 11:57:42','2016-09-12 11:57:42','hua',0,1,NULL),
	(147,'勇攀，不止高峰','如题','2016-09-12 20:16:32','2016-09-12 20:16:32','li',0,5,NULL),
	(148,'CloudWindow与云视窗，你更喜欢哪一个？','如题','2016-09-13 14:39:53','2016-09-13 14:39:53','li',0,3,NULL),
	(150,'云视窗正式发布2016.9.13','今天云视窗正式发布','2016-09-13 15:00:56','2016-09-13 17:07:18','li',7,5,NULL),
	(151,'Mac测试','Mac测试','2016-09-13 17:07:46','2016-09-13 17:16:57','li',1,5,NULL),
	(152,'第二次发布会','现在开始','2016-09-13 17:12:49','2016-09-13 17:17:15','hua',4,3,NULL);

/*!40000 ALTER TABLE `tb_article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_reply
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_reply`;

CREATE TABLE `tb_reply` (
  `replyId` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `replyTime` datetime DEFAULT NULL,
  `content` text,
  `username` varchar(45) DEFAULT NULL,
  `articleId` int(100) unsigned DEFAULT NULL,
  `floor` int(100) DEFAULT NULL,
  `color` int(10) DEFAULT NULL,
  `beRepliedId` int(100) DEFAULT NULL,
  `beReaded` tinyint(4) DEFAULT NULL,
  `beRepliedUser` varchar(45) DEFAULT NULL,
  `articleTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`replyId`),
  UNIQUE KEY `replyId_UNIQUE` (`replyId`),
  KEY `articleId_idx` (`articleId`),
  CONSTRAINT `articleId` FOREIGN KEY (`articleId`) REFERENCES `tb_article` (`articleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_reply` WRITE;
/*!40000 ALTER TABLE `tb_reply` DISABLE KEYS */;

INSERT INTO `tb_reply` (`replyId`, `replyTime`, `content`, `username`, `articleId`, `floor`, `color`, `beRepliedId`, `beReaded`, `beRepliedUser`, `articleTitle`)
VALUES
	(147,'2016-09-09 17:58:13','中文输入','hua',114,1,5,-1,1,'hua','CloudWinow论坛开始试运营'),
	(148,'2016-09-09 19:28:51','楼主说的好啊','hua',117,1,2,-1,0,'wu','好好学习'),
	(149,'2016-09-09 19:32:39','如此文艺','hua',122,1,2,-1,1,'wu','你离开了南京，从此没有人和我说话'),
	(150,'2016-09-09 19:33:30','真是文艺！<br>','Duzhen',122,2,5,-1,0,'wu','你离开了南京，从此没有人和我说话'),
	(151,'2016-09-09 19:33:56','我觉得master说的对','hua',122,3,3,150,0,'Duzhen','你离开了南京，从此没有人和我说话'),
	(153,'2016-09-09 19:36:08','好像很有道理的样子','wu',125,2,3,-1,1,'yuan','组员不能相信项目经理'),
	(154,'2016-09-09 19:36:55','<div align=\"center\"><b><u><i>我来测试仪一下字体</i></u></b><br></div>','wu',125,3,4,-1,1,'yuan','组员不能相信项目经理'),
	(155,'2016-09-09 19:37:20','这是技术总监啊','hua',125,4,3,153,0,'wu','组员不能相信项目经理'),
	(156,'2016-09-09 19:42:21','如果天黑之前来得及，我要忘了你的眼睛。','hua',126,1,2,-1,1,'wu','你在南方的艳阳里，大雪纷飞'),
	(158,'2016-09-09 19:49:09','就是这样','hua',129,1,4,-1,1,'hua','IT职场之路'),
	(159,'2016-09-09 19:49:47','nice<div><br></div>','hua',130,1,1,-1,0,'wu','We are the World'),
	(161,'2016-09-09 19:51:05','we are the champions的姊妹篇','hua',130,2,4,-1,0,'wu','We are the World'),
	(162,'2016-09-09 20:11:32','测试','li',125,5,6,-1,1,'yuan','组员不能相信项目经理'),
	(163,'2016-09-09 20:18:33','+1','li',125,6,3,-1,1,'yuan','组员不能相信项目经理'),
	(164,'2016-09-09 20:18:45','组员要相信产品经理','yuan',125,7,6,-1,1,'yuan','组员不能相信项目经理'),
	(165,'2016-09-09 20:18:49','再加一楼','li',125,8,5,-1,0,'yuan','组员不能相信项目经理'),
	(166,'2016-09-09 20:19:02','<span style=\"font-size: 14px; line-height: 20px;\">再加一楼</span>','li',125,9,6,-1,0,'yuan','组员不能相信项目经理'),
	(167,'2016-09-09 20:19:06','<span style=\"font-size: 14px; line-height: 20px;\">再加一楼</span>','li',125,10,6,-1,0,'yuan','组员不能相信项目经理'),
	(168,'2016-09-09 20:19:15','翻页测试','li',125,11,6,-1,0,'yuan','组员不能相信项目经理'),
	(169,'2016-09-09 20:19:38','一楼哪？','li',125,12,6,-1,0,'yuan','组员不能相信项目经理'),
	(170,'2016-09-09 20:20:13','翻页测试@','li',125,13,6,-1,0,'yuan','组员不能相信项目经理'),
	(171,'2016-09-09 20:20:58','知乎挂了','li',125,14,2,-1,0,'yuan','组员不能相信项目经理'),
	(173,'2016-09-09 20:24:57','盖完100楼回去睡觉','li',125,16,6,-1,0,'yuan','组员不能相信项目经理'),
	(174,'2016-09-09 20:25:14','就盖50楼吧','li',125,17,3,-1,0,'yuan','组员不能相信项目经理'),
	(176,'2016-09-09 20:26:50','<div>《波兰来客》---北岛&nbsp;</div><div>那时候我们有梦，关于文学，关于爱情，关于穿越世界的旅行。&nbsp;</div><div>如今我们深夜饮酒，杯子碰到一起，都是梦破碎的声音。&nbsp;</div><div><br></div><div>那时我有很多梦，关于文学，关于事业，关于理想，&nbsp;</div><div>那时我时常在午夜惊醒，&nbsp;</div><div>因为有很多梦未圆，&nbsp;</div><div>因为对现状的不甘，&nbsp;</div><div>因为对明天还会期待，&nbsp;</div><div>因为相信自己会是一个奇迹！&nbsp;</div><div><br></div><div>如今，我总能一觉睡到天亮，&nbsp;</div><div>因为对明天不再幻想&nbsp;</div><div>曾经很多梦的也沉睡了，&nbsp;</div><div>曾经很多的冲动，消沉了。&nbsp;</div><div><br></div><div>是长大了？&nbsp;</div><div>是成熟了？&nbsp;</div><div>还是麻木了?&nbsp;</div><div>反正是回不去了...</div>','li',125,18,3,-1,0,'yuan','组员不能相信项目经理'),
	(177,'2016-09-09 20:27:49','<div>我和这个世界不熟。&nbsp;</div><div>这并非是我安静的原因。&nbsp;</div><div>我依旧有很多问题，&nbsp;</div><div>问南方，问故里，问希望，问距离。&nbsp;</div><div><br></div><div>我和这个世界不熟。&nbsp;</div><div>这并非是我绝望的原因。&nbsp;</div><div>我依旧有很多热情，&nbsp;</div><div>给分开，给死亡，给昨天，给安寂。&nbsp;</div><div><br></div><div>我和这个世界不熟。&nbsp;</div><div>这并非是我虚假的原因。&nbsp;</div><div>我依旧有很多真诚，&nbsp;</div><div>离不开，放不下，活下去，爱得起。&nbsp;</div><div><br></div><div>我和这个世界不熟。&nbsp;</div><div>这并非是我孤寂的原因。&nbsp;</div><div>我依旧有很多诉求，&nbsp;</div><div>需慰藉，待分享，惹心烦，告诉你。&nbsp;</div><div><br></div><div>我和这个世界不熟。&nbsp;</div><div>这并非是我冷漠的原因。&nbsp;</div><div>我依旧有很多动情，&nbsp;</div><div>为时间，为白云，为天黑，畏天命。</div><div>——北岛《我和这个世界不熟》</div>','li',125,19,6,-1,0,'yuan','组员不能相信项目经理'),
	(178,'2016-09-09 20:28:59','世界小得像一条街的布景，我们相遇了，你点点头，省略了所有的往事，省略了问候。 也许欢乐只是一个过程，一切都已经结束。--北岛','li',125,20,4,-1,0,'yuan','组员不能相信项目经理'),
	(179,'2016-09-09 20:29:24','玻璃晴朗/橘子辉煌/一颗星星刹住车/照亮了你我','li',125,21,4,-1,0,'yuan','组员不能相信项目经理'),
	(180,'2016-09-09 20:30:52','<div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我，站在这里</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">代替另一个被杀害的人</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">为了每当太阳升起</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">让沉重的影子象道路</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">穿过整个国土</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">悲哀的雾</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">覆盖着补丁般错落的屋顶</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在房子与房子之间</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">烟囱喷吐着灰烬般的人群</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">温暖从明亮的树梢吹散</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">逗留在贫困的烟头上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">一只只疲倦的手中</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">升起低沉的乌云</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">以太阳的名义</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">黑暗公开地掠夺</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">沉默依然是东方的故事</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">人民在古老的壁画上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">默默地永生</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">默默地死去</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">呵，我的土地</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">你为什么不再歌唱</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">难道连黄河纤夫的绳索</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">也象崩断的琴弦</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">不再发出鸣响</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">难道时间这面晦暗的镜子</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">也永远背对着你</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">只留下星星和浮云</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我寻找着你</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在一次次梦中</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">一个个多雾的夜里或早晨</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我寻找春天和苹果树</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">蜜蜂牵动的一缕缕微风</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我寻找海岸的潮汐</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">浪峰上的阳光变成的鸥群</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我寻找砌在墙里的传说</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">你和我被遗忘的姓名</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">如果鲜血会使你肥沃</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">明天的枝头上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">成熟的果实</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">会留下我的颜色</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">必须承认</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在死亡白色的寒光中</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我，战栗了</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">谁愿意做陨石</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">或受难者冰冷的塑像</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">看着不熄的青春之火</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在别人的手中传递</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">即使鸽子落到肩上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">也感不到体温和呼吸</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">它们梳理一番羽毛</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">又匆匆飞去</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我是人</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我需要爱</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我渴望在情人的眼睛里</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">度过每个宁静的黄昏</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在摇篮的晃动中</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">等待着儿子第一声呼唤</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在草地和落叶上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在每一道真挚的目光上</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我写下生活的诗</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">这普普通通的愿望</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">如今成了做人的全部代价</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">一生中</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我多次撒谎</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">却始终诚实地遵守着</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">一个儿时的诺言</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">因此，那与孩子的心</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">不能相容的世界</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">再也没有饶恕过我</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我，站在这里</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">代替另一个被杀害的人</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">没有别的选择</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">在我倒下的地方</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">将会有另一个人站起</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">我的肩上是风</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">风上是闪烁的星群</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">也许有一天</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">太阳变成了萎缩的花环</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">垂放在</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">每一个不朽的战士</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">森林般生长的墓碑前</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">乌鸦，这夜的碎片</div><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; word-wrap: break-word; margin-bottom: 15px; text-indent: 2em; zoom: 1; font-family: arial, 宋体, sans-serif;\">纷纷扬扬</div>','li',125,22,4,-1,0,'yuan','组员不能相信项目经理'),
	(181,'2016-09-09 20:31:44','阳光聚散，我们不多说。','li',125,23,2,-1,0,'yuan','组员不能相信项目经理'),
	(182,'2016-09-09 20:47:30','挖坟','li',114,2,6,-1,1,'hua','CloudWinow论坛开始试运营'),
	(183,'2016-09-10 15:28:38','回复<br><br>','li',137,1,6,-1,1,'hua','尝试再次发表新帖'),
	(184,'2016-09-10 15:30:01','可以了','li',115,1,6,-1,1,'hua','可以发中文了'),
	(186,'2016-09-13 14:42:09','开始','hua',116,1,5,-1,1,'hua','人工测试开始'),
	(187,'2016-09-13 15:33:46','即将发布，倒计时9分钟','hua',150,1,2,-1,1,'li','云视窗正式发布2016.9.13'),
	(188,'2016-09-13 15:34:10','即将发布，倒计时8分钟','hua',150,2,5,-1,1,'li','云视窗正式发布2016.9.13'),
	(189,'2016-09-13 15:35:09','<span style=\"font-size: 14px; line-height: 20px;\">即将发布，倒计时7分钟</span>','hua',150,3,3,-1,1,'li','云视窗正式发布2016.9.13'),
	(190,'2016-09-13 15:36:07','即将发布，大家不要着急，还有6分钟','hua',150,4,4,-1,1,'li','云视窗正式发布2016.9.13'),
	(191,'2016-09-13 15:39:45','我们的项目经理还在和技术总监、产品经理进行最后的讨论。<div>这次发布会，将给大家一次前所未有的体验。</div>','hua',150,5,6,-1,1,'li','云视窗正式发布2016.9.13'),
	(192,'2016-09-13 15:40:41','产品经理整装待发！','hua',150,6,1,-1,1,'li','云视窗正式发布2016.9.13'),
	(193,'2016-09-13 17:07:18','这是在mac','li',150,7,3,-1,1,'li','云视窗正式发布2016.9.13'),
	(194,'2016-09-13 17:13:20','即将呈现，请观众朋友们耐心等待','hua',152,1,6,-1,1,'hua','第二次发布会'),
	(195,'2016-09-13 17:13:55','这是在更改了系统之后的第一次尝试，无论如何，这一次的演示必须无比成功。','hua',152,2,1,-1,1,'hua','第二次发布会'),
	(196,'2016-09-13 17:14:17','这是我自己的孩子，我为之骄傲和自豪。','hua',152,3,2,-1,1,'hua','第二次发布会'),
	(197,'2016-09-13 17:16:57','MAC测试','li',151,1,5,-1,1,'li','Mac测试'),
	(198,'2016-09-13 17:17:15','回复','li',152,4,5,-1,1,'hua','第二次发布会');

/*!40000 ALTER TABLE `tb_reply` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usageinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usageinfo`;

CREATE TABLE `usageinfo` (
  `usage_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usage_nodeid` int(10) unsigned NOT NULL,
  `usage_containerid` int(10) unsigned NOT NULL,
  `usage_userid` int(10) unsigned NOT NULL,
  `usage_date` datetime NOT NULL,
  `usage_backup1` int(11) DEFAULT '0',
  `usage_backup2` int(11) DEFAULT '0',
  PRIMARY KEY (`usage_id`),
  UNIQUE KEY `usage_id_UNIQUE` (`usage_id`),
  KEY `fk_usage_nodeid_idx` (`usage_nodeid`),
  KEY `fk_usage_containerid_idx` (`usage_containerid`),
  KEY `fk_usage_userid` (`usage_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `usageinfo` WRITE;
/*!40000 ALTER TABLE `usageinfo` DISABLE KEYS */;

INSERT INTO `usageinfo` (`usage_id`, `usage_nodeid`, `usage_containerid`, `usage_userid`, `usage_date`, `usage_backup1`, `usage_backup2`)
VALUES
	(34,12,6,2,'2016-09-05 10:58:29',0,0),
	(35,13,16,2,'2016-09-05 11:11:39',0,0),
	(36,13,2,6,'2016-09-05 15:04:22',0,0),
	(37,12,1,7,'2016-09-05 19:42:51',0,0),
	(38,12,1,7,'2016-09-05 20:47:58',0,0),
	(39,12,1,7,'2016-09-05 20:48:08',0,0),
	(40,12,1,7,'2016-09-05 20:48:16',0,0),
	(41,13,2,7,'2016-09-05 20:49:12',0,0),
	(42,13,2,7,'2016-09-05 20:49:38',0,0),
	(43,12,5,7,'2016-09-05 20:49:58',0,0),
	(44,13,4,8,'2016-09-05 20:55:13',0,0),
	(45,13,4,8,'2016-09-05 20:56:21',0,0),
	(46,13,2,7,'2016-09-05 20:56:39',0,0),
	(47,13,2,7,'2016-09-05 21:26:09',0,0),
	(48,12,1,7,'2016-09-05 21:26:29',0,0),
	(49,12,1,7,'2016-09-05 21:26:41',0,0),
	(50,12,1,7,'2016-09-05 21:27:03',0,0),
	(51,12,1,7,'2016-09-05 21:27:13',0,0),
	(52,13,2,7,'2016-09-05 21:27:23',0,0),
	(53,12,1,7,'2016-09-05 21:27:34',0,0),
	(54,12,1,7,'2016-09-05 21:28:19',0,0),
	(55,12,1,7,'2016-09-05 21:30:29',0,0),
	(56,12,1,7,'2016-09-05 21:38:18',0,0),
	(57,14,6,10,'2016-09-05 21:44:43',0,0),
	(58,15,7,9,'2016-09-05 21:45:32',0,0),
	(59,14,14,10,'2016-09-05 21:47:03',0,0),
	(60,15,7,9,'2016-09-06 19:46:11',0,0),
	(61,15,7,9,'2016-09-06 19:46:54',0,0),
	(62,16,15,11,'2016-09-06 19:59:26',0,0),
	(63,16,19,12,'2016-09-06 19:59:28',0,0),
	(64,17,16,11,'2016-09-06 19:59:56',0,0),
	(65,17,20,12,'2016-09-06 20:00:29',0,0),
	(66,17,20,12,'2016-09-06 20:01:46',0,0),
	(67,17,20,12,'2016-09-06 20:01:47',0,0),
	(68,17,20,12,'2016-09-06 20:02:21',0,0),
	(69,16,19,12,'2016-09-06 20:02:27',0,0),
	(70,16,23,11,'2016-09-07 09:41:28',0,0),
	(71,17,24,11,'2016-09-07 09:41:41',0,0),
	(72,16,23,11,'2016-09-07 09:42:18',0,0),
	(73,16,23,11,'2016-09-07 09:43:17',0,0),
	(74,16,23,11,'2016-09-07 09:45:46',0,0),
	(75,17,24,11,'2016-09-07 09:45:59',0,0),
	(76,16,25,11,'2016-09-07 09:54:59',0,0),
	(77,16,23,11,'2016-09-07 10:33:39',0,0),
	(78,17,24,11,'2016-09-07 10:34:35',0,0),
	(79,16,22,11,'2016-09-07 10:38:58',0,0),
	(80,17,24,11,'2016-09-07 10:40:57',0,0),
	(81,17,24,11,'2016-09-07 10:44:13',0,0),
	(82,17,24,11,'2016-09-07 10:45:11',0,0),
	(83,16,23,11,'2016-09-07 10:45:15',0,0),
	(84,16,23,11,'2016-09-07 10:46:06',0,0),
	(85,16,22,11,'2016-09-07 10:58:29',0,0),
	(86,16,23,11,'2016-09-07 10:58:32',0,0),
	(87,17,24,11,'2016-09-07 10:58:35',0,0),
	(88,17,24,11,'2016-09-07 10:59:58',0,0),
	(89,17,24,11,'2016-09-07 11:02:04',0,0),
	(90,16,22,11,'2016-09-07 11:02:08',0,0),
	(91,16,22,11,'2016-09-07 11:02:42',0,0),
	(92,17,24,11,'2016-09-07 17:16:04',0,0),
	(93,16,22,11,'2016-09-07 21:07:21',0,0),
	(94,17,29,11,'2016-09-08 15:17:06',0,0),
	(95,17,31,13,'2016-09-08 15:35:09',0,0),
	(96,17,29,11,'2016-09-08 15:59:22',0,0),
	(97,17,29,11,'2016-09-08 16:03:30',0,0),
	(98,17,29,11,'2016-09-08 16:14:01',0,0),
	(99,17,33,11,'2016-09-08 21:04:41',0,0),
	(100,16,35,12,'2016-09-09 14:46:34',0,0),
	(101,16,37,12,'2016-09-09 15:02:14',0,0),
	(102,16,35,12,'2016-09-09 15:28:41',0,0),
	(103,16,35,12,'2016-09-09 15:29:35',0,0),
	(104,16,35,12,'2016-09-09 15:30:01',0,0),
	(105,17,36,12,'2016-09-09 16:07:57',0,0),
	(106,16,41,17,'2016-09-09 16:48:09',0,0),
	(107,17,42,18,'2016-09-09 18:38:25',0,0),
	(108,17,42,18,'2016-09-09 18:42:23',0,0),
	(109,17,42,18,'2016-09-09 18:43:02',0,0),
	(110,16,35,12,'2016-09-09 21:19:57',0,0),
	(111,16,35,12,'2016-09-10 10:49:56',0,0),
	(112,17,36,12,'2016-09-10 10:50:51',0,0),
	(113,16,44,12,'2016-09-12 17:04:15',0,0),
	(114,16,44,12,'2016-09-12 17:12:21',0,0),
	(115,16,46,22,'2016-09-12 17:38:32',0,0),
	(116,16,46,22,'2016-09-12 17:48:21',0,0),
	(117,16,46,22,'2016-09-12 17:54:11',0,0),
	(118,17,51,22,'2016-09-12 18:23:32',0,0),
	(119,17,51,22,'2016-09-12 18:24:35',0,0),
	(120,17,51,22,'2016-09-12 18:24:41',0,0),
	(121,17,51,22,'2016-09-12 18:27:39',0,0),
	(122,16,48,22,'2016-09-12 18:51:06',0,0),
	(123,16,48,22,'2016-09-12 18:51:14',0,0),
	(124,16,48,22,'2016-09-12 18:51:31',0,0),
	(125,16,46,22,'2016-09-12 18:53:36',0,0),
	(126,16,46,22,'2016-09-12 18:54:04',0,0),
	(127,16,53,22,'2016-09-12 20:08:27',0,0),
	(128,16,53,22,'2016-09-12 20:09:48',0,0),
	(129,16,55,22,'2016-09-12 20:31:47',0,0),
	(130,16,55,22,'2016-09-12 20:33:11',0,0),
	(131,16,55,22,'2016-09-12 20:46:23',0,0),
	(132,16,55,22,'2016-09-12 20:46:41',0,0),
	(133,16,55,22,'2016-09-12 20:46:56',0,0),
	(134,16,55,22,'2016-09-12 20:47:22',0,0),
	(135,16,55,22,'2016-09-12 20:47:43',0,0),
	(136,16,55,22,'2016-09-12 20:48:49',0,0),
	(137,16,55,22,'2016-09-12 20:49:06',0,0),
	(138,16,55,22,'2016-09-12 20:50:56',0,0),
	(139,16,55,22,'2016-09-12 20:53:29',0,0),
	(140,16,55,22,'2016-09-12 20:54:46',0,0),
	(141,17,54,22,'2016-09-12 21:19:56',0,0),
	(142,17,54,22,'2016-09-12 21:33:48',0,0),
	(143,16,56,22,'2016-09-12 23:58:42',0,0),
	(144,16,56,22,'2016-09-12 23:59:29',0,0),
	(145,16,57,22,'2016-09-13 00:13:42',0,0),
	(146,16,57,22,'2016-09-13 00:15:33',0,0),
	(147,16,58,22,'2016-09-13 00:20:28',0,0),
	(148,16,58,22,'2016-09-13 00:21:26',0,0),
	(149,16,58,22,'2016-09-13 00:30:00',0,0),
	(150,16,59,22,'2016-09-13 00:34:33',0,0),
	(151,16,59,22,'2016-09-13 00:35:50',0,0),
	(152,16,55,12,'2016-09-13 10:38:33',0,0),
	(153,16,55,12,'2016-09-13 10:38:57',0,0),
	(154,16,55,12,'2016-09-13 10:40:41',0,0),
	(155,16,55,12,'2016-09-13 10:40:45',0,0),
	(156,16,55,12,'2016-09-13 10:49:44',0,0),
	(157,16,55,12,'2016-09-13 10:49:46',0,0),
	(158,16,55,12,'2016-09-13 10:49:59',0,0),
	(159,16,53,22,'2016-09-13 14:27:05',0,0),
	(160,16,53,22,'2016-09-13 14:27:17',0,0),
	(161,16,55,12,'2016-09-13 14:42:24',0,0),
	(162,17,56,22,'2016-09-13 16:05:35',0,0),
	(163,16,2,22,'2016-09-13 23:20:03',0,0),
	(164,16,3,22,'2016-09-13 23:22:08',0,0),
	(165,16,3,22,'2016-09-13 23:23:16',0,0),
	(166,16,3,22,'2016-09-13 23:42:16',0,0),
	(167,16,2,22,'2016-09-13 23:46:56',0,0),
	(168,16,2,22,'2016-09-14 00:08:26',0,0),
	(169,16,2,22,'2016-09-14 00:08:33',0,0),
	(170,16,2,22,'2016-09-14 00:11:12',0,0),
	(171,16,4,22,'2016-09-14 00:20:41',0,0),
	(172,16,4,22,'2016-09-14 00:21:45',0,0),
	(173,16,2,22,'2016-09-14 00:26:19',0,0),
	(174,16,2,22,'2016-09-14 00:27:06',0,0),
	(175,16,2,22,'2016-09-14 00:28:06',0,0),
	(176,16,5,22,'2016-09-14 00:31:34',0,0),
	(177,16,6,22,'2016-09-14 00:34:43',0,0),
	(178,16,6,22,'2016-09-14 00:36:14',0,0),
	(179,16,6,22,'2016-09-14 00:36:40',0,0),
	(180,16,7,22,'2016-09-14 00:41:43',0,0),
	(181,16,7,22,'2016-09-14 00:44:06',0,0),
	(182,16,5,22,'2016-09-14 11:09:21',0,0),
	(183,16,5,22,'2016-09-14 11:09:25',0,0),
	(184,16,5,22,'2016-09-14 11:09:32',0,0),
	(185,16,5,22,'2016-09-14 11:12:05',0,0),
	(186,16,5,22,'2016-09-14 11:13:34',0,0),
	(187,16,8,22,'2016-09-14 11:34:58',0,0),
	(188,16,8,22,'2016-09-14 11:36:03',0,0),
	(189,16,8,22,'2016-09-14 11:36:36',0,0);

/*!40000 ALTER TABLE `usageinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_pwd` varchar(45) NOT NULL,
  `user_lastregion` varchar(10) DEFAULT '',
  `user_lastip` bigint(20) unsigned DEFAULT '0',
  `user_backup1` int(11) DEFAULT '0',
  `user_backup2` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `userid_UNIQUE` (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;

INSERT INTO `userinfo` (`user_id`, `user_name`, `user_pwd`, `user_lastregion`, `user_lastip`, `user_backup1`, `user_backup2`)
VALUES
	(11,'souler','souler','',0,1,0),
	(12,'Duzhen','123456','110000',1928898510,0,0),
	(13,'li','123','320000',3026407527,0,0),
	(14,'hua','123','',0,0,0),
	(15,'yuan','123','320100',3741537535,0,0),
	(17,'l2','123','320100',3741533214,0,0),
	(18,'huahuahua','123','320000',828138957,0,0),
	(19,'ha','123456','',0,0,0),
	(21,'NoobTom','123','',0,0,0),
	(22,'Wu','123456','320000',828360605,0,0);

/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table verify_store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `verify_store`;

CREATE TABLE `verify_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Hubname` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `verify_store` WRITE;
/*!40000 ALTER TABLE `verify_store` DISABLE KEYS */;

INSERT INTO `verify_store` (`id`, `Hubname`, `name`, `price`, `description`)
VALUES
	(1,'dorowu/ubuntu-desktop-lxde-vnc','Basic',2,'该视窗提供了基本的功能性需求，提供用户的基本电脑操作'),
	(2,'dorowu/ubuntu-desktop-lxde-vnc','Simple',4,'该视窗提供了更个性化的界面，提供了更斑斓的电脑体验'),
	(3,'dorowu/ubuntu-desktop-lxde-vnc','Dark',5,'满足你的个性化需求，黑暗色调'),
	(4,'dorowu/ubuntu-desktop-lxde-vnc','Pokemon',2,'致敬Pokemon，为任天堂玩家提供了更友好的体验'),
	(5,'dorowu/ubuntu-desktop-lxde-vnc','Space',2,'丰富应用，体验宛如火箭'),
	(6,'dorowu/ubuntu-desktop-lxde-vnc','Sun',2,'清新的日系风格，轻且有趣的体验');

/*!40000 ALTER TABLE `verify_store` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
