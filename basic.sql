--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-1:10.3.39+maria~ubu2004-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `icon` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text DEFAULT NULL,
  `explicit_allowdeny` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text DEFAULT NULL,
  `db_mountpoints` text DEFAULT NULL,
  `pagetypes_select` text DEFAULT NULL,
  `tables_select` text DEFAULT NULL,
  `tables_modify` text DEFAULT NULL,
  `groupMods` text DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `TSconfig` text DEFAULT NULL,
  `subgroup` text DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text DEFAULT NULL,
  `availableWidgets` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(6) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `db_mountpoints` text DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1628075905,1628075358,0,0,0,0,0,NULL,'kitodo',0,'$argon2i$v=19$m=65536,t=16,p=1$SUVXZnhpNDlDbDA1WWNGVg$/ovMgziyrWnp6qdn2ovz60mG21vebGrkaLRPDeHuuo8',1,'','de','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,''),(2,0,1628164991,1628164991,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$T3FiTGtSVU02TUJWYjFRZA$A5fPErW2fyV3Rzleyypb4i7z50/iOkbVy8Kzj+mir+g',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,''),(3,0,1629184457,1629184393,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$Y2dOZ0hnNUIvUnlxUjlVRg$hwsrFkUiggAx7NXrnTqHQKeMaJZaRtPFVmjiN2w0A44',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache`
--

LOCK TABLES `cache_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache_tags`
--

LOCK TABLES `cache_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
INSERT INTO `cache_hash` VALUES (1,'d07b003d9fce07cd551ada22027bf881',2145909600,'a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}');
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cache_hash_tags` VALUES (1,'d07b003d9fce07cd551ada22027bf881','UserTSconfig');
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection`
--

DROP TABLE IF EXISTS `cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection`
--

LOCK TABLES `cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection_tags`
--

LOCK TABLES `cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `subgroup` tinytext DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext DEFAULT NULL,
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(2048) DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` text DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` text DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `legacy_overlay` (`legacy_overlay_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1629185218,1628166633,1,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:47:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,'',0,'',0,'',1,1629185218,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0.5,'',''),(2,1,1629184744,1628486511,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Kitodo Konfiguration','/1',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0.5,'',''),(3,0,1630422840,1630422828,3,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'a:38:{s:7:\"doktype\";i:1;s:5:\"title\";s:6:\"Viewer\";s:4:\"slug\";s:1:\"/\";s:9:\"nav_title\";s:0:\"\";s:8:\"subtitle\";s:0:\"\";s:9:\"seo_title\";s:0:\"\";s:14:\"canonical_link\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:14:\"og_description\";s:0:\"\";s:13:\"twitter_title\";s:0:\"\";s:19:\"twitter_description\";s:0:\"\";s:8:\"abstract\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"hidden\";i:0;s:10:\"categories\";i:0;s:14:\"rowDescription\";s:0:\"\";s:8:\"TSconfig\";s:0:\"\";s:13:\"php_tree_stop\";i:0;s:8:\"editlock\";i:0;s:6:\"layout\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:6:\"target\";s:0:\"\";s:5:\"alias\";s:0:\"\";s:13:\"cache_timeout\";i:0;s:10:\"cache_tags\";s:0:\"\";s:9:\"mount_pid\";i:0;s:11:\"is_siteroot\";i:1;s:12:\"mount_pid_ol\";i:0;s:6:\"module\";s:0:\"\";s:13:\"fe_login_mode\";i:0;s:8:\"l18n_cfg\";i:0;s:14:\"backend_layout\";s:0:\"\";s:25:\"backend_layout_next_level\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:8:\"no_index\";i:0;s:9:\"no_follow\";i:0;}',0,0,0,0,0,0,0,1,0,31,27,0,'[Translate to English:] Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,1,1630422840,NULL,'',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0.5,'',''),(4,1,1718879470,1630500948,3,0,0,0,0,'',128,'',0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,3,0,31,27,0,'Viewerdev','/viewerdev',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1718879470,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0.5,'','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  `processing_url` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` tinytext DEFAULT NULL,
  `configuration` text DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1628075892,1628075892,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `history_data` mediumtext DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1628487239,0,256,'English','us','en');
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`),
  KEY `errorcount` (`tstamp`,`error`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) NOT NULL DEFAULT '',
  `source_path` varchar(2048) NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=916 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization','i:1;'),(31,'installUpdateRows','rowUpdatersDone','a:4:{i:0;s:52:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L10nModeUpdater\";i:1;s:53:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\ImageCropUpdater\";i:2;s:57:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\RteLinkSyntaxUpdater\";i:3;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";}'),(32,'core','formProtectionSessionToken:1',NULL),(33,'languagePacks','baseUrl','s:33:\"https://localize.typo3.org/xliff/\";'),(34,'extensionDataImport','typo3conf/ext/dlf/ext_tables_static+adt.sql','s:0:\"\";'),(35,'core','formProtectionSessionToken:3',NULL),(209,'core','sys_refindex_lastUpdate','i:1718814517;'),(443,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate','i:1;'),(444,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),(445,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),(446,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),(447,'installUpdate','TYPO3\\CMS\\Felogin\\Updates\\MigrateFeloginPlugins','i:1;'),(448,'installUpdate','Kitodo\\Dlf\\Updates\\MigrateSettings','i:1;'),(449,'installUpdate','Kitodo\\Dlf\\Updates\\FileLocationUpdater','i:1;'),(682,'languagePacks','de-dlf','i:1718806953;'),(683,'languagePacks','de','i:1718806957;'),(684,'extensionScannerNotAffected','9aa93b9277a65f284b5f77ebc3d79435','s:32:\"9aa93b9277a65f284b5f77ebc3d79435\";'),(685,'extensionScannerNotAffected','e9cf64ee9da1d5e62168bd794df2247d','s:32:\"e9cf64ee9da1d5e62168bd794df2247d\";'),(686,'extensionScannerNotAffected','8280e3513619dfe238c096f653be5302','s:32:\"8280e3513619dfe238c096f653be5302\";'),(687,'extensionScannerNotAffected','62a6991c22ec61aeb428572c720b37d6','s:32:\"62a6991c22ec61aeb428572c720b37d6\";'),(688,'extensionScannerNotAffected','8b5b904b1ee09d5394dfbbc338ee9bf7','s:32:\"8b5b904b1ee09d5394dfbbc338ee9bf7\";'),(689,'extensionScannerNotAffected','6603e1c47876b136ecae8ce17b90bff0','s:32:\"6603e1c47876b136ecae8ce17b90bff0\";'),(690,'extensionScannerNotAffected','1cf2d82e029d22d6ae7d1e0a0a28b893','s:32:\"1cf2d82e029d22d6ae7d1e0a0a28b893\";'),(691,'extensionScannerNotAffected','ecbdd5a9bb889ebbbf53edf3f81cd73b','s:32:\"ecbdd5a9bb889ebbbf53edf3f81cd73b\";'),(692,'extensionScannerNotAffected','a3943f180a3dbd67b2bcef2bed01255e','s:32:\"a3943f180a3dbd67b2bcef2bed01255e\";'),(693,'extensionScannerNotAffected','6f522c8490e86245258b6885f1b9b050','s:32:\"6f522c8490e86245258b6885f1b9b050\";'),(694,'extensionScannerNotAffected','796d5caea2b1a1bdc8cf7cf0734ce75b','s:32:\"796d5caea2b1a1bdc8cf7cf0734ce75b\";'),(695,'extensionScannerNotAffected','a2dde15e078601ea894a564c7f9d03e4','s:32:\"a2dde15e078601ea894a564c7f9d03e4\";'),(696,'extensionScannerNotAffected','848ac016d8024c33b82218774be62922','s:32:\"848ac016d8024c33b82218774be62922\";'),(697,'extensionScannerNotAffected','6b5f1a87c899b96759842d532f846cd1','s:32:\"6b5f1a87c899b96759842d532f846cd1\";'),(698,'extensionScannerNotAffected','b340ea55b04524d0b05bef61e00e2cab','s:32:\"b340ea55b04524d0b05bef61e00e2cab\";'),(699,'extensionScannerNotAffected','3022fdf75d186f543092e249ea3cd85a','s:32:\"3022fdf75d186f543092e249ea3cd85a\";'),(700,'extensionScannerNotAffected','9691eecb539ea83b3216c7908587b72a','s:32:\"9691eecb539ea83b3216c7908587b72a\";'),(701,'extensionScannerNotAffected','7f221772043b2170213e2b345c6ec714','s:32:\"7f221772043b2170213e2b345c6ec714\";'),(702,'extensionScannerNotAffected','1e3b5786e1903466b88b3c1a509092d0','s:32:\"1e3b5786e1903466b88b3c1a509092d0\";'),(703,'extensionScannerNotAffected','fd8e1b0856c7ae38e466c41d752aef3f','s:32:\"fd8e1b0856c7ae38e466c41d752aef3f\";'),(704,'extensionScannerNotAffected','630c8c8d8746166b55311a3f4c7db54b','s:32:\"630c8c8d8746166b55311a3f4c7db54b\";'),(705,'extensionScannerNotAffected','8a52401a7a603319d58e6ac67b133e0d','s:32:\"8a52401a7a603319d58e6ac67b133e0d\";'),(706,'extensionScannerNotAffected','a7ba2396b0b8e6bda7ab7d7734688c6a','s:32:\"a7ba2396b0b8e6bda7ab7d7734688c6a\";'),(707,'extensionScannerNotAffected','33d43ec1e6e80dcc4b50d55cb270164c','s:32:\"33d43ec1e6e80dcc4b50d55cb270164c\";'),(708,'extensionScannerNotAffected','15c258875cbacbee5ce912a60f70a53a','s:32:\"15c258875cbacbee5ce912a60f70a53a\";'),(709,'extensionScannerNotAffected','be91d1ec18366c1d2c1bb450ab6e6982','s:32:\"be91d1ec18366c1d2c1bb450ab6e6982\";'),(710,'extensionScannerNotAffected','4f8893d36fde08799f185251ce8a1d7d','s:32:\"4f8893d36fde08799f185251ce8a1d7d\";'),(711,'extensionScannerNotAffected','a1e05622e232739de1c9f096122edf0d','s:32:\"a1e05622e232739de1c9f096122edf0d\";'),(712,'extensionScannerNotAffected','df8733b098af0c109ff700b9c6a45387','s:32:\"df8733b098af0c109ff700b9c6a45387\";'),(713,'extensionScannerNotAffected','3b35b1893c858b4c72beae89da4d72ee','s:32:\"3b35b1893c858b4c72beae89da4d72ee\";'),(714,'extensionScannerNotAffected','f99b5997a72dd36d831d762a6e072149','s:32:\"f99b5997a72dd36d831d762a6e072149\";'),(715,'extensionScannerNotAffected','42261e6899ab6b5b75f74222dcb223a4','s:32:\"42261e6899ab6b5b75f74222dcb223a4\";'),(716,'extensionScannerNotAffected','f2958c806d88d2d7aee445f3ea731b7a','s:32:\"f2958c806d88d2d7aee445f3ea731b7a\";'),(717,'extensionScannerNotAffected','9bf8366ee53aa0f01c679088c5eafbe9','s:32:\"9bf8366ee53aa0f01c679088c5eafbe9\";'),(718,'extensionScannerNotAffected','42d940b576b1305c7008fdfb9209b6b3','s:32:\"42d940b576b1305c7008fdfb9209b6b3\";'),(719,'extensionScannerNotAffected','de80e00d9fdc1af1885aef6221e0512f','s:32:\"de80e00d9fdc1af1885aef6221e0512f\";'),(720,'extensionScannerNotAffected','f89e6ca048ef0f505375776d72685893','s:32:\"f89e6ca048ef0f505375776d72685893\";'),(721,'extensionScannerNotAffected','e01033484593b9ae1680113f2c232c91','s:32:\"e01033484593b9ae1680113f2c232c91\";'),(722,'extensionScannerNotAffected','86bc714264687cf08e1cab4057e4bb02','s:32:\"86bc714264687cf08e1cab4057e4bb02\";'),(723,'extensionScannerNotAffected','3b13080fd465998d5c70f43e4fbb236e','s:32:\"3b13080fd465998d5c70f43e4fbb236e\";'),(724,'extensionScannerNotAffected','6900e7df764d6a41fb2ebcc7dfc14ea1','s:32:\"6900e7df764d6a41fb2ebcc7dfc14ea1\";'),(725,'extensionScannerNotAffected','55abdd51e86705fe8f31b2ebf0aaef1d','s:32:\"55abdd51e86705fe8f31b2ebf0aaef1d\";'),(726,'extensionScannerNotAffected','870bb1337c3298e1a860315b29ce64a5','s:32:\"870bb1337c3298e1a860315b29ce64a5\";'),(727,'extensionScannerNotAffected','537ed0121bec18054c028243572475db','s:32:\"537ed0121bec18054c028243572475db\";'),(728,'extensionScannerNotAffected','e2f51fcc9cc38f925d503d395a128a0e','s:32:\"e2f51fcc9cc38f925d503d395a128a0e\";'),(729,'extensionScannerNotAffected','b14531e3f124f99afe0504385d6c1be4','s:32:\"b14531e3f124f99afe0504385d6c1be4\";'),(730,'extensionScannerNotAffected','d9fa61ceef7e46613edf7e5ae1273484','s:32:\"d9fa61ceef7e46613edf7e5ae1273484\";'),(731,'extensionScannerNotAffected','a0fb94cf6157e707d59816ee14406074','s:32:\"a0fb94cf6157e707d59816ee14406074\";'),(732,'extensionScannerNotAffected','7eb83a2ce593f46e0b4a46767e69cd93','s:32:\"7eb83a2ce593f46e0b4a46767e69cd93\";'),(733,'extensionScannerNotAffected','f9a4d89c8e28ff90a28734095ea74555','s:32:\"f9a4d89c8e28ff90a28734095ea74555\";'),(734,'extensionScannerNotAffected','37407c4308a472ccba7650c5f23dba92','s:32:\"37407c4308a472ccba7650c5f23dba92\";'),(735,'extensionScannerNotAffected','98fd606bb35f37d478cdfe6b0b1c7ac6','s:32:\"98fd606bb35f37d478cdfe6b0b1c7ac6\";'),(736,'extensionScannerNotAffected','2cdfaa818b2211039ffbd8a3357882f1','s:32:\"2cdfaa818b2211039ffbd8a3357882f1\";'),(737,'extensionScannerNotAffected','957aabf519fc2649d2e8fd0a515e5c4d','s:32:\"957aabf519fc2649d2e8fd0a515e5c4d\";'),(738,'extensionScannerNotAffected','05496464c4f22fde57877043219b4aa2','s:32:\"05496464c4f22fde57877043219b4aa2\";'),(739,'extensionScannerNotAffected','2531f07c8ce72590bf64df6851f9e7f3','s:32:\"2531f07c8ce72590bf64df6851f9e7f3\";'),(740,'extensionScannerNotAffected','137c68bff595a7d3d3e390ecebdd12a7','s:32:\"137c68bff595a7d3d3e390ecebdd12a7\";'),(741,'extensionScannerNotAffected','a497be10ea132112be39785227cb0ece','s:32:\"a497be10ea132112be39785227cb0ece\";'),(742,'extensionScannerNotAffected','208e590ab73e0724cb7bb4283cf4614d','s:32:\"208e590ab73e0724cb7bb4283cf4614d\";'),(743,'extensionScannerNotAffected','81f90e4d011a4678ca3fe2b6c42b526b','s:32:\"81f90e4d011a4678ca3fe2b6c42b526b\";'),(744,'extensionScannerNotAffected','d05e9eefdf1c2d3ca8d12d9bffc8dc70','s:32:\"d05e9eefdf1c2d3ca8d12d9bffc8dc70\";'),(745,'extensionScannerNotAffected','3fbf4bd45cce93c96497033287d8a593','s:32:\"3fbf4bd45cce93c96497033287d8a593\";'),(746,'extensionScannerNotAffected','7b0e8e3deae1a71df8c6e5df4c75efd2','s:32:\"7b0e8e3deae1a71df8c6e5df4c75efd2\";'),(747,'extensionScannerNotAffected','59b3c66f73bcf1dc84b0b61283767e62','s:32:\"59b3c66f73bcf1dc84b0b61283767e62\";'),(748,'extensionScannerNotAffected','f75b87d6994f2b45294b074450ed99de','s:32:\"f75b87d6994f2b45294b074450ed99de\";'),(749,'extensionScannerNotAffected','f55dc21f29a0b8cd524f92b204c24f0e','s:32:\"f55dc21f29a0b8cd524f92b204c24f0e\";'),(750,'extensionScannerNotAffected','dc6f49c793bd3e4818c2488de6998383','s:32:\"dc6f49c793bd3e4818c2488de6998383\";'),(751,'extensionScannerNotAffected','84f6f7d7608e67ae0db88e1bb21552cb','s:32:\"84f6f7d7608e67ae0db88e1bb21552cb\";'),(752,'extensionScannerNotAffected','f49583e7730ced96d47e45d463a4b90f','s:32:\"f49583e7730ced96d47e45d463a4b90f\";'),(753,'extensionScannerNotAffected','2ebf7d215f3949990d607aa363293f0d','s:32:\"2ebf7d215f3949990d607aa363293f0d\";'),(754,'extensionScannerNotAffected','bd33cfe4457c74dcf2dbe60551d8bdf0','s:32:\"bd33cfe4457c74dcf2dbe60551d8bdf0\";'),(755,'extensionScannerNotAffected','ebb3837c3eca6ae5bc77817421a99414','s:32:\"ebb3837c3eca6ae5bc77817421a99414\";'),(756,'extensionScannerNotAffected','78faa602896a4de888adfc4fff74911c','s:32:\"78faa602896a4de888adfc4fff74911c\";'),(757,'extensionScannerNotAffected','278a6d9a9359a298239b9757ca5a0658','s:32:\"278a6d9a9359a298239b9757ca5a0658\";'),(758,'extensionScannerNotAffected','f134e01b05f71463a3b9f0d8305cb18b','s:32:\"f134e01b05f71463a3b9f0d8305cb18b\";'),(759,'extensionScannerNotAffected','ce3a08ec49aed55bfb6321ab29322fcf','s:32:\"ce3a08ec49aed55bfb6321ab29322fcf\";'),(760,'extensionScannerNotAffected','22bb500ab0da0114296d835fb4843911','s:32:\"22bb500ab0da0114296d835fb4843911\";'),(761,'extensionScannerNotAffected','7de310ef0781372c22235f4e4c5a9c93','s:32:\"7de310ef0781372c22235f4e4c5a9c93\";'),(762,'extensionScannerNotAffected','986af5e700498af0c406a1c354a88530','s:32:\"986af5e700498af0c406a1c354a88530\";'),(763,'extensionScannerNotAffected','d760f6bb19706badecf16a0731e3f886','s:32:\"d760f6bb19706badecf16a0731e3f886\";'),(764,'extensionScannerNotAffected','01d9ebc50c69075c509adff41094aa44','s:32:\"01d9ebc50c69075c509adff41094aa44\";'),(765,'extensionScannerNotAffected','06331cd1ab789a6f37a92782fab478a5','s:32:\"06331cd1ab789a6f37a92782fab478a5\";'),(766,'extensionScannerNotAffected','ef288692cd84d1eaec05b5bb33d20695','s:32:\"ef288692cd84d1eaec05b5bb33d20695\";'),(767,'extensionScannerNotAffected','e8fdb29754fd6723d18dc1dd35141fc4','s:32:\"e8fdb29754fd6723d18dc1dd35141fc4\";'),(768,'extensionScannerNotAffected','a87b3e8873680dce295d9ed5b66477ac','s:32:\"a87b3e8873680dce295d9ed5b66477ac\";'),(769,'extensionScannerNotAffected','9bc85f8e20068e602d56f51ce7b5b552','s:32:\"9bc85f8e20068e602d56f51ce7b5b552\";'),(770,'extensionScannerNotAffected','dfd8ba28be70852dc68caf4dd4c2c5af','s:32:\"dfd8ba28be70852dc68caf4dd4c2c5af\";'),(771,'extensionScannerNotAffected','4678a60d71342df4ba8c2af44dc28a02','s:32:\"4678a60d71342df4ba8c2af44dc28a02\";'),(772,'extensionScannerNotAffected','a78382b6a17344a1319f363781e89c96','s:32:\"a78382b6a17344a1319f363781e89c96\";'),(773,'extensionScannerNotAffected','10660a0b55948bda8b5be11b94520f86','s:32:\"10660a0b55948bda8b5be11b94520f86\";'),(774,'extensionScannerNotAffected','e4cb2ff8131e30096b67f313934fa5aa','s:32:\"e4cb2ff8131e30096b67f313934fa5aa\";'),(775,'extensionScannerNotAffected','f62e9efda740779576c4c093b92e6bbe','s:32:\"f62e9efda740779576c4c093b92e6bbe\";'),(776,'extensionScannerNotAffected','0b33776f56c0dffe5c52b71a78c3dd4b','s:32:\"0b33776f56c0dffe5c52b71a78c3dd4b\";'),(777,'extensionScannerNotAffected','c33b16da42572b9806ded75f963920a7','s:32:\"c33b16da42572b9806ded75f963920a7\";'),(778,'extensionScannerNotAffected','96a54ac430bbab2fe25c603cb66a867f','s:32:\"96a54ac430bbab2fe25c603cb66a867f\";'),(779,'extensionScannerNotAffected','2f9b3b80341d776d9ad3b9d058542f05','s:32:\"2f9b3b80341d776d9ad3b9d058542f05\";'),(780,'extensionScannerNotAffected','bfda64bdc41110ac0acb521e86615e77','s:32:\"bfda64bdc41110ac0acb521e86615e77\";'),(781,'extensionScannerNotAffected','56902cf074ec99809e13cad1c1c0cbb2','s:32:\"56902cf074ec99809e13cad1c1c0cbb2\";'),(782,'extensionScannerNotAffected','6837c353aef861c3ac6f606739b3ddcc','s:32:\"6837c353aef861c3ac6f606739b3ddcc\";'),(783,'extensionScannerNotAffected','bee700e394d9007ba778c844642036f3','s:32:\"bee700e394d9007ba778c844642036f3\";'),(784,'extensionScannerNotAffected','14e2908d4969859fbfe5a6e49d765db7','s:32:\"14e2908d4969859fbfe5a6e49d765db7\";'),(785,'extensionScannerNotAffected','e6fcf9d1c9a9dc665e6932affb8d511c','s:32:\"e6fcf9d1c9a9dc665e6932affb8d511c\";'),(786,'extensionScannerNotAffected','1d37a84ca40f9e51f34ff6f6fdac2de8','s:32:\"1d37a84ca40f9e51f34ff6f6fdac2de8\";'),(787,'extensionScannerNotAffected','63fc98fb3dae1d448038c0728e5c831c','s:32:\"63fc98fb3dae1d448038c0728e5c831c\";'),(788,'extensionScannerNotAffected','fb767442225dde0917ca4bc81374c81e','s:32:\"fb767442225dde0917ca4bc81374c81e\";'),(789,'extensionScannerNotAffected','592df2e16ddeb1271cccc117cc7294da','s:32:\"592df2e16ddeb1271cccc117cc7294da\";'),(790,'extensionScannerNotAffected','070572597d5900b4e595c4638e2d6ca9','s:32:\"070572597d5900b4e595c4638e2d6ca9\";'),(791,'extensionScannerNotAffected','0b598b5b27fa6c9747520984827ce15d','s:32:\"0b598b5b27fa6c9747520984827ce15d\";'),(792,'extensionScannerNotAffected','f2a5e29ebd6e77e8284bfd667552d72b','s:32:\"f2a5e29ebd6e77e8284bfd667552d72b\";'),(793,'extensionScannerNotAffected','fb57d229f20aa1fd5c6d3782aa2876bf','s:32:\"fb57d229f20aa1fd5c6d3782aa2876bf\";'),(794,'extensionScannerNotAffected','1acdeca153a31c73b609be55ff1ac429','s:32:\"1acdeca153a31c73b609be55ff1ac429\";'),(795,'extensionScannerNotAffected','b212dd503d7e271942ab72f2c5542d1f','s:32:\"b212dd503d7e271942ab72f2c5542d1f\";'),(796,'extensionScannerNotAffected','6767c02d78ce379e858132e8d139869b','s:32:\"6767c02d78ce379e858132e8d139869b\";'),(797,'extensionScannerNotAffected','ef020968202a77309121be978c7c0292','s:32:\"ef020968202a77309121be978c7c0292\";'),(798,'extensionScannerNotAffected','3aa3d709385b55f13667c6dafb43d2ac','s:32:\"3aa3d709385b55f13667c6dafb43d2ac\";'),(799,'extensionScannerNotAffected','f5c3440870c206d74dc1791022d2cf50','s:32:\"f5c3440870c206d74dc1791022d2cf50\";'),(800,'extensionScannerNotAffected','51b3ed169a236061c892468f96536a04','s:32:\"51b3ed169a236061c892468f96536a04\";'),(801,'extensionScannerNotAffected','af0a23a44bb5bb32def66fdc7ac37ff6','s:32:\"af0a23a44bb5bb32def66fdc7ac37ff6\";'),(802,'extensionScannerNotAffected','4e273c76d177075b32a1de4e575b36fe','s:32:\"4e273c76d177075b32a1de4e575b36fe\";'),(803,'extensionScannerNotAffected','d08fec9ae34ee0ad0cf1a0f730be6158','s:32:\"d08fec9ae34ee0ad0cf1a0f730be6158\";'),(804,'extensionScannerNotAffected','5627c1c2616ced5a6079f10125b6b957','s:32:\"5627c1c2616ced5a6079f10125b6b957\";'),(805,'extensionScannerNotAffected','b1c59bf2973c28b6b79fb9484dbd655c','s:32:\"b1c59bf2973c28b6b79fb9484dbd655c\";'),(806,'extensionScannerNotAffected','285cde81518a89b7e19c8da61cdc7eb3','s:32:\"285cde81518a89b7e19c8da61cdc7eb3\";'),(807,'extensionScannerNotAffected','64181fd3115103a53a3eff69f1d64aae','s:32:\"64181fd3115103a53a3eff69f1d64aae\";'),(808,'extensionScannerNotAffected','ce88a0b5902c3d390c9435df759b141e','s:32:\"ce88a0b5902c3d390c9435df759b141e\";'),(809,'extensionScannerNotAffected','7287f0c0c453f2270a8cc6fe7a699d66','s:32:\"7287f0c0c453f2270a8cc6fe7a699d66\";'),(810,'extensionScannerNotAffected','456afe54ec4ec13fd6e01a633c5a2f87','s:32:\"456afe54ec4ec13fd6e01a633c5a2f87\";'),(811,'extensionScannerNotAffected','de3328553ef2b98b39b02ea6e7dd3eb1','s:32:\"de3328553ef2b98b39b02ea6e7dd3eb1\";'),(812,'extensionScannerNotAffected','9e6bb703ab0a4982c845ddc31ecf90bb','s:32:\"9e6bb703ab0a4982c845ddc31ecf90bb\";'),(813,'extensionScannerNotAffected','6f44d7cac7278bf07b397868b0df15ff','s:32:\"6f44d7cac7278bf07b397868b0df15ff\";'),(814,'extensionScannerNotAffected','b851ac52bbc8927e75dff314ed405e93','s:32:\"b851ac52bbc8927e75dff314ed405e93\";'),(815,'extensionScannerNotAffected','6450e345665c955597e281849e0c7783','s:32:\"6450e345665c955597e281849e0c7783\";'),(816,'extensionScannerNotAffected','569e0d056c3aaeff79f187703889951c','s:32:\"569e0d056c3aaeff79f187703889951c\";'),(817,'extensionScannerNotAffected','4915d856ea15cf4b767e3acdbcefede3','s:32:\"4915d856ea15cf4b767e3acdbcefede3\";'),(818,'extensionScannerNotAffected','5aa53e24af63f32576a6e1d63f15bde9','s:32:\"5aa53e24af63f32576a6e1d63f15bde9\";'),(819,'extensionScannerNotAffected','2f258818426852044301138c6f46179a','s:32:\"2f258818426852044301138c6f46179a\";'),(820,'extensionScannerNotAffected','f48e0ba5207c5324970154a75d29b1c9','s:32:\"f48e0ba5207c5324970154a75d29b1c9\";'),(821,'extensionScannerNotAffected','58af194aeae79e057fce90e8c98f54a6','s:32:\"58af194aeae79e057fce90e8c98f54a6\";'),(822,'extensionScannerNotAffected','0ad4491f83e9941adaab117313616a2f','s:32:\"0ad4491f83e9941adaab117313616a2f\";'),(823,'extensionScannerNotAffected','7557914e0b9b51e5208a72228a1e965b','s:32:\"7557914e0b9b51e5208a72228a1e965b\";'),(824,'extensionScannerNotAffected','b5f4a07dce885bf1b0298fa009f3361c','s:32:\"b5f4a07dce885bf1b0298fa009f3361c\";'),(825,'extensionScannerNotAffected','ddf516f2f3a89ae88361b977c33a975d','s:32:\"ddf516f2f3a89ae88361b977c33a975d\";'),(826,'extensionScannerNotAffected','227579bb5f3c219173b1d51c954922c6','s:32:\"227579bb5f3c219173b1d51c954922c6\";'),(827,'extensionScannerNotAffected','216570b14c2fff9cfc3ee94e1eb24f2e','s:32:\"216570b14c2fff9cfc3ee94e1eb24f2e\";'),(828,'extensionScannerNotAffected','fe2f9a9b0c37d895c46df7d51ef09181','s:32:\"fe2f9a9b0c37d895c46df7d51ef09181\";'),(829,'extensionScannerNotAffected','1a92cc3b5831210486ea03c430f56d88','s:32:\"1a92cc3b5831210486ea03c430f56d88\";'),(830,'extensionScannerNotAffected','1208fe4faf8d7c79a35062a09b7f2eae','s:32:\"1208fe4faf8d7c79a35062a09b7f2eae\";'),(831,'extensionScannerNotAffected','59fef1c2b40d2d8350c39ad06e156ea9','s:32:\"59fef1c2b40d2d8350c39ad06e156ea9\";'),(832,'extensionScannerNotAffected','a31b514709041e97f29586eb5079a903','s:32:\"a31b514709041e97f29586eb5079a903\";'),(833,'extensionScannerNotAffected','a1806357ca558948209b36f5d593b142','s:32:\"a1806357ca558948209b36f5d593b142\";'),(834,'extensionScannerNotAffected','cd44481dd7e0a393eced3f07903a4fa4','s:32:\"cd44481dd7e0a393eced3f07903a4fa4\";'),(835,'extensionScannerNotAffected','422f8fe2ea2521e2f37d1fb860e541a3','s:32:\"422f8fe2ea2521e2f37d1fb860e541a3\";'),(836,'extensionScannerNotAffected','5afce444e60d42897f6ecb0fce69e1d9','s:32:\"5afce444e60d42897f6ecb0fce69e1d9\";'),(837,'extensionScannerNotAffected','b2a3f6cea1908e52d895da466077ab2f','s:32:\"b2a3f6cea1908e52d895da466077ab2f\";'),(838,'extensionScannerNotAffected','e51b25d6037ade8f9869267cc604084c','s:32:\"e51b25d6037ade8f9869267cc604084c\";'),(839,'extensionScannerNotAffected','466f48497d7e45ab4bb32986afbaf866','s:32:\"466f48497d7e45ab4bb32986afbaf866\";'),(840,'extensionScannerNotAffected','c00f4fd03a4d1d0756b345f780c80ab2','s:32:\"c00f4fd03a4d1d0756b345f780c80ab2\";'),(841,'extensionScannerNotAffected','e1ed00caa3aa2ff7009d058eec51d2af','s:32:\"e1ed00caa3aa2ff7009d058eec51d2af\";'),(842,'extensionScannerNotAffected','64d5b0af961deb88f232def01741b2a7','s:32:\"64d5b0af961deb88f232def01741b2a7\";'),(843,'extensionScannerNotAffected','a6bcd0bf9b7536707d0b4c400f158700','s:32:\"a6bcd0bf9b7536707d0b4c400f158700\";'),(844,'extensionScannerNotAffected','26b568c4108fe855aa4963f405948b50','s:32:\"26b568c4108fe855aa4963f405948b50\";'),(845,'extensionScannerNotAffected','7b90305a803d3e08093e2dff4c7ecaca','s:32:\"7b90305a803d3e08093e2dff4c7ecaca\";'),(846,'extensionScannerNotAffected','e800b0ba43c6f890ae6735246ea61fa5','s:32:\"e800b0ba43c6f890ae6735246ea61fa5\";'),(847,'extensionScannerNotAffected','046423736bdbf918b41b87a61940c5b8','s:32:\"046423736bdbf918b41b87a61940c5b8\";'),(848,'extensionScannerNotAffected','8bc5ad0d51d7ac49f3b3aa30cd8af355','s:32:\"8bc5ad0d51d7ac49f3b3aa30cd8af355\";'),(849,'extensionScannerNotAffected','6989bc9c54f1489e5fbd304bfb85fe7b','s:32:\"6989bc9c54f1489e5fbd304bfb85fe7b\";'),(850,'extensionScannerNotAffected','9ca0f82713338bc06bef76cb58fa16f1','s:32:\"9ca0f82713338bc06bef76cb58fa16f1\";'),(851,'extensionScannerNotAffected','435b38b6d79a7d2633e668fde2650f43','s:32:\"435b38b6d79a7d2633e668fde2650f43\";'),(852,'extensionScannerNotAffected','235fb3d4f7115a40ee7e8842e0ed9a35','s:32:\"235fb3d4f7115a40ee7e8842e0ed9a35\";'),(853,'extensionScannerNotAffected','9938bb18555f2cc53cb922a0d5141d4c','s:32:\"9938bb18555f2cc53cb922a0d5141d4c\";'),(854,'extensionScannerNotAffected','cf04c008d0fa3079bf98ef594713f5a8','s:32:\"cf04c008d0fa3079bf98ef594713f5a8\";'),(855,'extensionScannerNotAffected','8a32943483d5bfa2b6bed51216fa5451','s:32:\"8a32943483d5bfa2b6bed51216fa5451\";'),(856,'extensionScannerNotAffected','511d2684aa7cac72af1b5e2b7e9de255','s:32:\"511d2684aa7cac72af1b5e2b7e9de255\";'),(857,'extensionScannerNotAffected','3c8a35634f63a3811b2b33fbe34a9ce1','s:32:\"3c8a35634f63a3811b2b33fbe34a9ce1\";'),(858,'extensionScannerNotAffected','09b9e1995fbb1faeec102698748afd37','s:32:\"09b9e1995fbb1faeec102698748afd37\";'),(859,'extensionScannerNotAffected','05d8826fd8e31fa4ad2e4409a65f3c5a','s:32:\"05d8826fd8e31fa4ad2e4409a65f3c5a\";'),(860,'extensionScannerNotAffected','a267e0d6dc4a0385543f7a8b8a2a8ebb','s:32:\"a267e0d6dc4a0385543f7a8b8a2a8ebb\";'),(861,'extensionScannerNotAffected','550131c2f986f14233bee328f8575fde','s:32:\"550131c2f986f14233bee328f8575fde\";'),(862,'extensionScannerNotAffected','bb5096d59349243d9b93c5bb76ee3b99','s:32:\"bb5096d59349243d9b93c5bb76ee3b99\";'),(863,'extensionScannerNotAffected','17e39071a5767874c7fbd19b843d9619','s:32:\"17e39071a5767874c7fbd19b843d9619\";'),(864,'extensionScannerNotAffected','129bc81c107d3bbfa3c4c94a54e79a40','s:32:\"129bc81c107d3bbfa3c4c94a54e79a40\";'),(865,'extensionScannerNotAffected','713cfb33040b6ff60ef6d99704e7765c','s:32:\"713cfb33040b6ff60ef6d99704e7765c\";'),(866,'extensionScannerNotAffected','95b6a0afe2747053be7cab0c248db0e2','s:32:\"95b6a0afe2747053be7cab0c248db0e2\";'),(867,'extensionScannerNotAffected','c987477c498f08df3ca1d5e058beff08','s:32:\"c987477c498f08df3ca1d5e058beff08\";'),(868,'extensionScannerNotAffected','0b4ad84bc1e75dd53de367929b6c92d9','s:32:\"0b4ad84bc1e75dd53de367929b6c92d9\";'),(869,'extensionScannerNotAffected','6f722b29b499fdd7cd1a82ea2eb717ae','s:32:\"6f722b29b499fdd7cd1a82ea2eb717ae\";'),(870,'extensionScannerNotAffected','c6ba8120004a8e0af898f96b4e97a9fc','s:32:\"c6ba8120004a8e0af898f96b4e97a9fc\";'),(871,'extensionScannerNotAffected','e8429333673212f64f32c76b416da6e0','s:32:\"e8429333673212f64f32c76b416da6e0\";'),(872,'extensionScannerNotAffected','169498d3585f4ee33f69ca2b28164072','s:32:\"169498d3585f4ee33f69ca2b28164072\";'),(873,'extensionScannerNotAffected','96a7b8ab4f0b1564454a6e828390f508','s:32:\"96a7b8ab4f0b1564454a6e828390f508\";'),(874,'extensionScannerNotAffected','f0dd86e41e8d55eec356526ad020da8a','s:32:\"f0dd86e41e8d55eec356526ad020da8a\";'),(875,'extensionScannerNotAffected','e0abb58dfb365c02f3f6e2ffaf581c12','s:32:\"e0abb58dfb365c02f3f6e2ffaf581c12\";'),(876,'extensionScannerNotAffected','76e1a770e400d8d1220f2837c260e612','s:32:\"76e1a770e400d8d1220f2837c260e612\";'),(877,'extensionScannerNotAffected','25dad0a2358f701cf82922902bddd7f9','s:32:\"25dad0a2358f701cf82922902bddd7f9\";'),(878,'extensionScannerNotAffected','d83b9f62e3292a7faa27e098be40eff5','s:32:\"d83b9f62e3292a7faa27e098be40eff5\";'),(879,'extensionScannerNotAffected','cb152522032f194f256bb8d6368d0dc1','s:32:\"cb152522032f194f256bb8d6368d0dc1\";'),(880,'extensionScannerNotAffected','e1943b26f0ee032eccbd8c5cec70e6f0','s:32:\"e1943b26f0ee032eccbd8c5cec70e6f0\";'),(881,'extensionScannerNotAffected','5e52243143430b34d208001e6011a391','s:32:\"5e52243143430b34d208001e6011a391\";'),(882,'extensionScannerNotAffected','bfa9546298181bf8f962615b6b035fb8','s:32:\"bfa9546298181bf8f962615b6b035fb8\";'),(883,'extensionScannerNotAffected','f6cf4cd16f9220568666d1ffa8105afe','s:32:\"f6cf4cd16f9220568666d1ffa8105afe\";'),(884,'extensionScannerNotAffected','417979edfdf1d45a66d7139520f70782','s:32:\"417979edfdf1d45a66d7139520f70782\";'),(885,'extensionScannerNotAffected','0b7bbd7f8d3979379e9e122e5b67fbf7','s:32:\"0b7bbd7f8d3979379e9e122e5b67fbf7\";'),(886,'extensionScannerNotAffected','1ccc68572b84b1f3581e46779b0cebd8','s:32:\"1ccc68572b84b1f3581e46779b0cebd8\";'),(887,'extensionScannerNotAffected','283dbddb51bcd984372398e7307e6c83','s:32:\"283dbddb51bcd984372398e7307e6c83\";'),(888,'extensionScannerNotAffected','2788c2f447675b0eeca29f1f15a2c6d4','s:32:\"2788c2f447675b0eeca29f1f15a2c6d4\";'),(889,'extensionScannerNotAffected','bf75aef4c22551bcf024a77b0a5f5fd7','s:32:\"bf75aef4c22551bcf024a77b0a5f5fd7\";'),(890,'extensionScannerNotAffected','3edb33dc9fb3f10c4ee1516d69d22f1a','s:32:\"3edb33dc9fb3f10c4ee1516d69d22f1a\";'),(891,'extensionScannerNotAffected','927633a7b3129f06fa506b0d458cd461','s:32:\"927633a7b3129f06fa506b0d458cd461\";'),(892,'extensionScannerNotAffected','e6abadec7619cc7ccfc06ca29505d1e4','s:32:\"e6abadec7619cc7ccfc06ca29505d1e4\";'),(893,'extensionScannerNotAffected','4ce1939046edae0765089bf05315888a','s:32:\"4ce1939046edae0765089bf05315888a\";'),(894,'extensionScannerNotAffected','1d67b576365955875136043bf6bee959','s:32:\"1d67b576365955875136043bf6bee959\";'),(895,'extensionScannerNotAffected','9b96dae8949ecb3893cbca73e0ab5617','s:32:\"9b96dae8949ecb3893cbca73e0ab5617\";'),(896,'extensionScannerNotAffected','97ce31778e6391ef7a447f72b2c198a1','s:32:\"97ce31778e6391ef7a447f72b2c198a1\";'),(897,'extensionScannerNotAffected','9bbe46e9f29b9fd928ca0d0f4a86aad9','s:32:\"9bbe46e9f29b9fd928ca0d0f4a86aad9\";'),(898,'extensionScannerNotAffected','29b27a1faa229d6dd9673d7cfb675f34','s:32:\"29b27a1faa229d6dd9673d7cfb675f34\";'),(899,'extensionScannerNotAffected','652a590e07c5655d4c008ee6af48811f','s:32:\"652a590e07c5655d4c008ee6af48811f\";'),(900,'extensionScannerNotAffected','d17e594c2b1f50c72cd8b62550aa1dcd','s:32:\"d17e594c2b1f50c72cd8b62550aa1dcd\";'),(901,'extensionScannerNotAffected','5b8e649cf57fa7bb2d7264559a190eb0','s:32:\"5b8e649cf57fa7bb2d7264559a190eb0\";'),(902,'extensionScannerNotAffected','fda4af81c962ae92f8d1673ab2b063fe','s:32:\"fda4af81c962ae92f8d1673ab2b063fe\";'),(903,'extensionScannerNotAffected','4ea3e98f23cd4a2f6baf717f83d3d3d3','s:32:\"4ea3e98f23cd4a2f6baf717f83d3d3d3\";'),(904,'extensionScannerNotAffected','6cbd3bcd01860a60e94788088ea5c6a6','s:32:\"6cbd3bcd01860a60e94788088ea5c6a6\";'),(905,'extensionScannerNotAffected','510efa94c0ee42f17d1f05ae810251dd','s:32:\"510efa94c0ee42f17d1f05ae810251dd\";'),(906,'extensionScannerNotAffected','bdf4e4a8423e8e80705e9eafcbec16e6','s:32:\"bdf4e4a8423e8e80705e9eafcbec16e6\";'),(907,'extensionScannerNotAffected','69bef04a629b5817cf16a08e3fda32b7','s:32:\"69bef04a629b5817cf16a08e3fda32b7\";'),(908,'extensionScannerNotAffected','63e57460e0bdefeffef0edbd28fa0acf','s:32:\"63e57460e0bdefeffef0edbd28fa0acf\";'),(909,'extensionScannerNotAffected','ce363e728964326b673d958567a829f7','s:32:\"ce363e728964326b673d958567a829f7\";'),(910,'extensionScannerNotAffected','9dc065b79a3e17c8c4ebe75a16db0079','s:32:\"9dc065b79a3e17c8c4ebe75a16db0079\";'),(911,'extensionScannerNotAffected','191e3ee8972e2cb93fc7122f83650e9b','s:32:\"191e3ee8972e2cb93fc7122f83650e9b\";'),(912,'extensionScannerNotAffected','b2fa6c9a867bec6bcefb002d22caa81d','s:32:\"b2fa6c9a867bec6bcefb002d22caa81d\";'),(913,'extensionScannerNotAffected','48e03c6d2139d0d8feb714ecc968d646','s:32:\"48e03c6d2139d0d8feb714ecc968d646\";'),(914,'extensionScannerNotAffected','dcb6c1625fa3f587a61ace48093f8513','s:32:\"dcb6c1625fa3f587a61ace48093f8513\";'),(915,'extensionScannerNotAffected','db7b14433498a1befb8c85c227714269','s:32:\"db7b14433498a1befb8c85c227714269\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text DEFAULT NULL,
  `constants` text DEFAULT NULL,
  `config` text DEFAULT NULL,
  `basedOn` tinytext DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1718814450,1628488695,1,0,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'Viewer','',1,3,'EXT:dlf/Configuration/TypoScript/Toolbox/,EXT:ddb_kitodo_zeitungsportal/Configuration/TypoScript','constant {\r\n  # id of configuration directory (Kitodo Konfiguration)\r\n  configPid = 2\r\n  # id of Viewer page\r\n  viewerPid = 4\n  #page url on which viewer will be visible\r\n  #baseUrl = https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/\r\n  #baseUrl = https://viewer-dzp.deutsche-digitale-bibliothek.de/\r\n  baseUrl = https://ddev-ddb-zeitungsportal.ddev.site/\r\n  #baseUrl = https://dev-zpviewerdev.fiz-karlsruhe.de/\r\n  #baseUrl = http://ddb-p2-vmzpviewer01:8001/zp-viewer\r\n}','# dev\r\nplugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record\r\nplugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n\r\n# master\r\n#plugin.tx_dlf_searchindocumenttool.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.documentIdUrlSchema = https://api-q1.deutsche-digitale-bibliothek.de/items/*id*/source/record\r\n\r\n','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `selected_categories` text DEFAULT NULL,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_actionlog`
--

DROP TABLE IF EXISTS `tx_dlf_actionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_actionlog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `count_pages` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_actionlog`
--

LOCK TABLES `tx_dlf_actionlog` WRITE;
/*!40000 ALTER TABLE `tx_dlf_actionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_basket`
--

DROP TABLE IF EXISTS `tx_dlf_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_basket` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text DEFAULT NULL,
  `fe_user_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `doc_ids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_basket`
--

LOCK TABLES `tx_dlf_basket` WRITE;
/*!40000 ALTER TABLE `tx_dlf_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_collections`
--

DROP TABLE IF EXISTS `tx_dlf_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_collections` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) NOT NULL DEFAULT '',
  `l10n_state` text DEFAULT NULL,
  `fe_cruser_id` int(11) NOT NULL DEFAULT 0,
  `fe_admin_lock` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `index_search` text NOT NULL,
  `oai_name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `priority` smallint(6) NOT NULL DEFAULT 3,
  `documents` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `oai_name` (`oai_name`),
  KEY `pid_cruser` (`pid`,`fe_cruser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_collections`
--

LOCK TABLES `tx_dlf_collections` WRITE;
/*!40000 ALTER TABLE `tx_dlf_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_documents`
--

DROP TABLE IF EXISTS `tx_dlf_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_documents` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) NOT NULL DEFAULT '',
  `prod_id` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `record_id` varchar(255) NOT NULL DEFAULT '',
  `opac_id` varchar(255) NOT NULL DEFAULT '',
  `union_id` varchar(255) NOT NULL DEFAULT '',
  `urn` varchar(255) NOT NULL DEFAULT '',
  `purl` varchar(255) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `title_sorting` text NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `year` varchar(255) NOT NULL DEFAULT '',
  `place` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `structure` int(11) NOT NULL DEFAULT 0,
  `partof` int(11) NOT NULL DEFAULT 0,
  `volume` varchar(255) NOT NULL DEFAULT '',
  `volume_sorting` varchar(255) NOT NULL DEFAULT '',
  `license` varchar(255) NOT NULL DEFAULT '',
  `terms` varchar(255) NOT NULL DEFAULT '',
  `restrictions` varchar(255) NOT NULL DEFAULT '',
  `out_of_print` text NOT NULL,
  `rights_info` text NOT NULL,
  `collections` int(11) NOT NULL DEFAULT 0,
  `mets_label` text NOT NULL,
  `mets_orderlabel` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `solrcore` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `document_format` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `location` (`location`),
  KEY `record_id` (`record_id`),
  KEY `partof` (`partof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_documents`
--

LOCK TABLES `tx_dlf_documents` WRITE;
/*!40000 ALTER TABLE `tx_dlf_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_formats`
--

DROP TABLE IF EXISTS `tx_dlf_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_formats` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT '',
  `root` varchar(255) NOT NULL DEFAULT '',
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_formats`
--

LOCK TABLES `tx_dlf_formats` WRITE;
/*!40000 ALTER TABLE `tx_dlf_formats` DISABLE KEYS */;
INSERT INTO `tx_dlf_formats` VALUES (1,0,1628166052,1628166052,1,0,'MODS','mods','http://www.loc.gov/mods/v3','Kitodo\\Dlf\\Format\\Mods'),(2,0,1628166052,1628166052,1,0,'TEIHDR','teiHeader','http://www.tei-c.org/ns/1.0','Kitodo\\Dlf\\Format\\TeiHeader'),(3,0,1628166052,1628166052,1,0,'ALTO','alto','http://www.loc.gov/standards/alto/ns-v2#','Kitodo\\Dlf\\Format\\Alto'),(4,0,1628166052,1628166052,1,0,'IIIF1','IIIF1','http://www.shared-canvas.org/ns/context.json',''),(5,0,1628166052,1628166052,1,0,'IIIF2','IIIF2','http://iiif.io/api/presentation/2/context.json',''),(6,0,1628166052,1628166052,1,0,'IIIF3','IIIF3','http://iiif.io/api/presentation/3/context.json','');
/*!40000 ALTER TABLE `tx_dlf_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_libraries`
--

DROP TABLE IF EXISTS `tx_dlf_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_libraries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text DEFAULT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `oai_label` varchar(255) NOT NULL DEFAULT '',
  `oai_base` varchar(255) NOT NULL DEFAULT '',
  `opac_label` varchar(255) NOT NULL DEFAULT '',
  `opac_base` varchar(255) NOT NULL DEFAULT '',
  `union_label` varchar(255) NOT NULL DEFAULT '',
  `union_base` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_libraries`
--

LOCK TABLES `tx_dlf_libraries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_mail`
--

DROP TABLE IF EXISTS `tx_dlf_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_mail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `mail` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_mail`
--

LOCK TABLES `tx_dlf_mail` WRITE;
/*!40000 ALTER TABLE `tx_dlf_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadata`
--

DROP TABLE IF EXISTS `tx_dlf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `format` int(11) NOT NULL DEFAULT 0,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `wrap` text NOT NULL,
  `index_tokenized` smallint(6) NOT NULL DEFAULT 0,
  `index_stored` smallint(6) NOT NULL DEFAULT 0,
  `index_indexed` smallint(6) NOT NULL DEFAULT 0,
  `index_boost` double NOT NULL DEFAULT 1,
  `is_sortable` smallint(6) NOT NULL DEFAULT 0,
  `is_facet` smallint(6) NOT NULL DEFAULT 0,
  `is_listed` smallint(6) NOT NULL DEFAULT 0,
  `index_autocomplete` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `index_autocomplete` (`index_autocomplete`),
  KEY `is_sortable` (`is_sortable`),
  KEY `is_facet` (`is_facet`),
  KEY `is_listed` (`is_listed`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadata`
--

LOCK TABLES `tx_dlf_metadata` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadata` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadata` VALUES (1,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1280,NULL,'Rights Information','rights_info',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(2,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1152,NULL,'Out Of Print Works','out_of_print',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(3,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1088,NULL,'Restrictions on Access','restrictions',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),(4,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1056,NULL,'Terms of Use','terms',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),(5,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1040,NULL,'License','license',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),(6,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1032,NULL,'Coordinates','coordinates',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),(7,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1028,NULL,'Kitodo Process Number','prod_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(8,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1026,NULL,'OAI Identifier','record_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(9,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1025,NULL,'Union Catalog ID','union_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(10,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1024,NULL,'OPAC Identifier','opac_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(11,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,768,NULL,'URN','urn',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(12,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,640,NULL,'PURL','purl',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(13,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,576,NULL,'Owner','owner',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(14,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,544,NULL,'Collection(s)','collection',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,0,1,1,0,1,0,0,0),(15,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,528,NULL,'Language','language',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(16,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,520,NULL,'Year of Publication','year',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,1,1,0,0),(17,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,516,NULL,'Place of Publication','place',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,1,1,1,1,1,1,0,0),(18,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,514,NULL,'Author','author',2,'','key.wrap = <dt class=\"tx-dlf-metadata-author\">|</dt>\nvalue.required = 1\nvalue.split.token.char = 31\nvalue.split.cObjNum = 1\nvalue.split.1.1 = CASE\nvalue.split.1.1.key.data = register:SPLIT_COUNT\nvalue.split.1.1.0 = LOAD_REGISTER\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\nvalue.split.1.1.1 = LOAD_REGISTER\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\nvalue.postCObject = TEXT\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-author\">|</dd>',1,1,1,2,1,1,1,1,0),(19,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,513,NULL,'Volume','volume',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,0,1,0,0),(20,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,512,NULL,'Title','title',3,'','key.wrap = <dt class=\"tx-dlf-metadata-title\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-title\">|</dd>',1,1,1,2,1,0,1,1,0),(21,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,256,NULL,'Type','type',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,1,1,0,0),(22,2,1718807170,1718807170,0,0,1,23,'',0,0,NULL,'Date','date',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(23,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Datum','date',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,0,1,0,0),(24,2,1718807170,1718807170,0,0,1,25,'',0,0,NULL,'Description','description',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(25,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Beschreibung','description',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(26,2,1718807170,1718807170,0,0,1,27,'',0,0,NULL,'Missing translation for metadata.identifier','identifier',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(27,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.identifier','identifier',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(28,2,1718807170,1718807170,0,0,1,29,'',0,0,NULL,'Missing translation for metadata.object_name','object_name',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(29,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_name','object_name',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(30,2,1718807170,1718807170,0,0,1,31,'',0,0,NULL,'Missing translation for metadata.object_alternative_names','object_alternative_names',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(31,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_alternative_names','object_alternative_names',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(32,2,1718807170,1718807170,0,0,1,33,'',0,0,NULL,'Missing translation for metadata.object_location','object_location',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(33,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_location','object_location',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(34,2,1718807170,1718807170,0,0,1,35,'',0,0,NULL,'Missing translation for metadata.geonames','geonames',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(35,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.geonames','geonames',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(36,2,1718807170,1718807170,0,0,1,37,'',0,0,NULL,'Missing translation for metadata.wikidata','wikidata',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(37,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.wikidata','wikidata',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(38,2,1718807170,1718807170,0,0,1,39,'',0,0,NULL,'Missing translation for metadata.wikipedia','wikipedia',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),(39,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.wikipedia','wikipedia',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tx_dlf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadataformat`
--

DROP TABLE IF EXISTS `tx_dlf_metadataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadataformat` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `encoded` int(11) NOT NULL DEFAULT 0,
  `xpath` varchar(1024) NOT NULL DEFAULT '',
  `xpath_sorting` varchar(1024) NOT NULL DEFAULT '',
  `mandatory` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadataformat`
--

LOCK TABLES `tx_dlf_metadataformat` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadataformat` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadataformat` VALUES (1,2,1628486790,1628486790,1,0,1,1,'./mods:accessCondition[@type=\"info\"]','',0,0,0,NULL),(2,2,1628486790,1628486790,1,0,2,1,'./mods:accessCondition[@type=\"out of print work\"]','',0,0,0,NULL),(3,2,1628486790,1628486790,1,0,3,1,'./mods:accessCondition[@type=\"restriction on access\"]/@xlink:href','',0,0,0,NULL),(4,2,1628486790,1628486790,1,0,4,1,'./mods:accessCondition[@type=\"local terms of use\"]/@xlink:href','',0,0,0,NULL),(5,2,1628486790,1628486790,1,0,5,1,'./mods:accessCondition[@type=\"use and reproduction\"]/@xlink:href','',0,0,0,NULL),(6,2,1628486790,1628486790,1,0,6,1,'./mods:subject/mods:cartographics/mods:coordinates','',0,0,0,NULL),(7,2,1628486790,1628486790,1,0,7,5,'$.metadata.[?(@.label==\'Kitodo\')].value','',0,0,0,NULL),(8,2,1628486790,1628486790,1,0,7,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"kitodo\"]','',0,0,0,NULL),(9,2,1628486790,1628486790,1,0,7,1,'./mods:identifier[@type=\"kitodo\"]','',0,0,0,NULL),(10,2,1628486790,1628486790,1,0,8,5,'$[\'@id\']','',0,0,0,NULL),(11,2,1628486790,1628486790,1,0,8,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"recordIdentifier\"]','',0,0,0,NULL),(12,2,1628486790,1628486790,1,0,8,1,'./mods:recordInfo/mods:recordIdentifier','',0,0,0,NULL),(13,2,1628486790,1628486790,1,0,9,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"mmid\"]','',0,0,0,NULL),(14,2,1628486790,1628486790,1,0,9,1,'./mods:identifier[@type=\"ppn\"]','',0,0,0,NULL),(15,2,1628486790,1628486790,1,0,10,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"opac\"]','',0,0,0,NULL),(16,2,1628486790,1628486790,1,0,10,1,'./mods:identifier[@type=\"opac\"]','',0,0,0,NULL),(17,2,1628486790,1628486790,1,0,11,5,'$.metadata.[?(@.label==\'URN\')].value','',0,0,0,NULL),(18,2,1628486790,1628486790,1,0,11,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"urn\"]','',0,0,0,NULL),(19,2,1628486790,1628486790,1,0,11,1,'./mods:identifier[@type=\"urn\"]','',0,0,0,NULL),(20,2,1628486790,1628486790,1,0,12,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"purl\"]','',0,0,0,NULL),(21,2,1628486790,1628486790,1,0,12,1,'./mods:identifier[@type=\"purl\"]','',0,0,0,NULL),(22,2,1628486790,1628486790,1,0,13,5,'$.metadata.[?(@.label==\'Owner\')].value','',0,0,0,NULL),(23,2,1628486790,1628486790,1,0,13,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:publisher','',0,0,0,NULL),(24,2,1628486790,1628486790,1,0,13,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0,0,0,NULL),(25,2,1628486790,1628486790,1,0,14,5,'$.metadata.[?(@.label==\'Collection\')].value','',0,0,0,NULL),(26,2,1628486790,1628486790,1,0,14,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:collection','',0,0,0,NULL),(27,2,1628486790,1628486790,1,0,14,1,'./mods:classification','',0,0,0,NULL),(28,2,1628486790,1628486790,1,0,15,1,'./mods:language/mods:languageTerm','',0,0,0,NULL),(29,2,1628486790,1628486790,1,0,16,5,'$.metadata.[?(@.label==\'Date of publication\')].value','',0,0,0,NULL),(30,2,1628486790,1628486790,1,0,16,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate/@when',0,0,0,NULL),(31,2,1628486790,1628486790,1,0,17,5,'$.metadata.[?(@.label==\'Place of publication\')].value','',0,0,0,NULL),(32,2,1628486790,1628486790,1,0,17,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origPlace','',0,0,0,NULL),(33,2,1628486790,1628486790,1,0,18,5,'$.metadata.[?(@.label==\'Author\')].value','',0,0,0,NULL),(34,2,1628486790,1628486790,1,0,18,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:name','',0,0,0,NULL),(35,2,1628486790,1628486790,1,0,19,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(36,2,1628486790,1628486790,1,0,20,5,'$[label]','',0,0,0,NULL),(37,2,1628486790,1628486790,1,0,20,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:note[@type=\"caption\"]','',0,0,0,NULL),(38,2,1628486790,1628486790,1,0,20,1,'concat(./mods:titleInfo/mods:nonSort,\" \",./mods:titleInfo/mods:title)','./mods:titleInfo/mods:title',0,0,0,NULL),(39,2,1628486790,1628486790,1,0,21,5,'$.metadata.[?(@.label==\'Manifest Type\')].value','',0,0,0,NULL),(40,2,1718807170,1718807170,0,0,23,1,'./mods:originInfo/*[@encoding=\"iso8601\" or @encoding=\"w3cdtf\"][@keyDate=\"yes\"]','',0,0,0,NULL),(41,2,1718807170,1718807170,0,0,25,1,'./mods:recordInfo/mods:recordInfoNote','',0,0,0,NULL),(42,2,1718807170,1718807170,0,0,27,1,'./mods:identifier','',0,0,0,NULL),(43,2,1718807170,1718807170,0,0,29,1,'./mods:relatedItem/mods:titleInfo[not(@displayLabel=\"alternative\")]/mods:title','',0,0,0,NULL),(44,2,1718807170,1718807170,0,0,31,1,'./mods:relatedItem/mods:titleInfo[@displayLabel=\"alternative\"]/mods:title','',0,0,0,NULL),(45,2,1718807170,1718807170,0,0,33,1,'./mods:relatedItem/mods:location/mods:physicalLocation','',0,0,0,NULL),(46,2,1718807170,1718807170,0,0,35,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"geonames\"]','',0,0,0,NULL),(47,2,1718807170,1718807170,0,0,37,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikidata\"]','',0,0,0,NULL),(48,2,1718807170,1718807170,0,0,39,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikipedia\"]','',0,0,0,NULL);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_printer`
--

DROP TABLE IF EXISTS `tx_dlf_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_printer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `print` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_printer`
--

LOCK TABLES `tx_dlf_printer` WRITE;
/*!40000 ALTER TABLE `tx_dlf_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_relations`
--

DROP TABLE IF EXISTS `tx_dlf_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_relations` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(30) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `ident` varchar(30) NOT NULL DEFAULT '' COMMENT 'An identifier to describe which tables are matched.',
  PRIMARY KEY (`uid`),
  KEY `local_foreign` (`uid_local`,`uid_foreign`,`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_relations`
--

LOCK TABLES `tx_dlf_relations` WRITE;
/*!40000 ALTER TABLE `tx_dlf_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_solrcores`
--

DROP TABLE IF EXISTS `tx_dlf_solrcores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_solrcores` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_solrcores`
--

LOCK TABLES `tx_dlf_solrcores` WRITE;
/*!40000 ALTER TABLE `tx_dlf_solrcores` DISABLE KEYS */;
INSERT INTO `tx_dlf_solrcores` VALUES (1,2,0,0,0,0,'newspaper-issues','newspaper-issues');
/*!40000 ALTER TABLE `tx_dlf_solrcores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_structures`
--

DROP TABLE IF EXISTS `tx_dlf_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_structures` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `toplevel` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `oai_name` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_structures`
--

LOCK TABLES `tx_dlf_structures` WRITE;
/*!40000 ALTER TABLE `tx_dlf_structures` DISABLE KEYS */;
INSERT INTO `tx_dlf_structures` VALUES (1,2,1651569223,1628486788,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Jahr','year','',0,0),(2,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Volume','volume','',0,0),(3,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Verse','verse','',0,0),(4,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Titlepage','title_page','',0,0),(5,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Text','text','',0,0),(6,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Table','table','',0,0),(7,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Subinventory','subinventory','',0,0),(8,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Study','study','',0,0),(9,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Stamp','stamp','',0,0),(10,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Spine','spine','',0,0),(11,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Section','section','',0,0),(12,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Seal','seal','',0,0),(13,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Scheme','scheme','',0,0),(14,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Research Paper','research_paper','',0,0),(15,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Report','report','',0,0),(16,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Register','register','',0,0),(17,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Provenance','provenance','',0,0),(18,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Proceeding','proceeding','',0,0),(19,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Privileges','privileges','',0,0),(20,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Printers Mark','printers_mark','',0,0),(21,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Printed Archives','printed_archives','',0,0),(22,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Preprint','preprint','',0,0),(23,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Preface','preface','',0,0),(24,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Poster','poster','',0,0),(25,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Plan','plan','',0,0),(26,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Photograph','photograph','',0,0),(27,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Periodical','periodical','',0,0),(28,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Paste Down','paste_down','',0,0),(29,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Paper','paper','',0,0),(30,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Page','page','',0,0),(31,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Ornament','ornament','',0,0),(32,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Official Notification','official_notification','',0,0),(33,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Note','note','',0,0),(34,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Newspaper','newspaper','',0,0),(35,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Musical Notation','musical_notation','',0,0),(36,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Multivolume Work','multivolume_work','',0,0),(37,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Month','month','',0,0),(38,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Monograph','monograph','',0,0),(39,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Map','map','',0,0),(40,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Manuscript','manuscript','',0,0),(41,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Master Thesis','master_thesis','',0,0),(42,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Magister Thesis','magister_thesis','',0,0),(43,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Letter','letter','',0,0),(44,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Lecture','lecture','',0,0),(45,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Leaflet','leaflet','',0,0),(46,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Land Register','land_register','',0,0),(47,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Judgement','judgement','',0,0),(48,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Issue','issue','',0,0),(49,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Inventory','inventory','',0,0),(50,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Initial Decoration','initial_decoration','',0,0),(51,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Index','index','',0,0),(52,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Imprint','imprint','',0,0),(53,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Image','image','',0,0),(54,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Illustration','illustration','',0,0),(55,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Habilitation Thesis','habilitation_thesis','',0,0),(56,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Ground Plan','ground_plan','',0,0),(57,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Fragment','fragment','',0,0),(58,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Folder','folder','',0,0),(59,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'File','file','',0,0),(60,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Fascicle','fascicle','',0,0),(61,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Ephemera','ephemera','',0,0),(62,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Entry','entry','',0,0),(63,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Engraved Titlepage','engraved_titlepage','',0,0),(64,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Endsheet','endsheet','',0,0),(65,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Edge','edge','',0,0),(66,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Dossier','dossier','',0,0),(67,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Document','document','',0,0),(68,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Doctoral Thesis','doctoral_thesis','',0,0),(69,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Diploma Thesis','diploma_thesis','',0,0),(70,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Dedication','dedication','',0,0),(71,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Day','day','',0,0),(72,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Back Cover','cover_back','',0,0),(73,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Front Cover','cover_front','',0,0),(74,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Cover','cover','',0,0),(75,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Corrigenda','corrigenda','',0,0),(76,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Table of Contents','contents','',0,0),(77,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Contained Work','contained_work','',0,0),(78,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Colophon','colophon','',0,0),(79,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Collation','collation','',0,0),(80,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Chapter','chapter','',0,0),(81,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Cartulary','cartulary','',0,0),(82,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Bookplate','bookplate','',0,0),(83,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Binding','binding','',0,0),(84,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Bachelor Thesis','bachelor_thesis','',0,0),(85,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Atlas','atlas','',0,0),(86,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Article','article','',0,0),(87,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Annotation','annotation','',0,0),(88,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Album','album','',0,0),(89,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Address','address','',0,0),(90,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Additional','additional','',0,0),(91,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Act','act','',0,0),(93,2,1718807168,1718807168,0,0,0,0,'',0,NULL,0,'Abbildung','figure','',0,0),(94,2,1718807168,1718807168,0,0,1,93,'',0,NULL,0,'Figure','figure','',0,0);
/*!40000 ALTER TABLE `tx_dlf_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_tokens`
--

DROP TABLE IF EXISTS `tx_dlf_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_tokens` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0 COMMENT 'Timestamp of the token used to determine if it has expired.',
  `token` varchar(255) NOT NULL DEFAULT '',
  `options` mediumtext NOT NULL,
  `ident` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `token` (`token`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_tokens`
--

LOCK TABLES `tx_dlf_tokens` WRITE;
/*!40000 ALTER TABLE `tx_dlf_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext DEFAULT NULL,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
