-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
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
  `TSconfig` text DEFAULT NULL,
  `subgroup` text DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` longtext DEFAULT NULL,
  `availableWidgets` text DEFAULT NULL,
  `mfa_providers` text DEFAULT NULL,
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
  `usergroup` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'default',
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
  `TSconfig` text DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` longtext DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  `mfa` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1628075905,1628075358,0,0,0,0,0,NULL,'kitodo',0,'$argon2i$v=19$m=65536,t=16,p=1$SUVXZnhpNDlDbDA1WWNGVg$/ovMgziyrWnp6qdn2ovz60mG21vebGrkaLRPDeHuuo8',1,'','de','',NULL,0,'',NULL,'','',NULL,NULL,1,NULL,0,0,NULL,'',NULL),
(2,0,1628164991,1628164991,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$T3FiTGtSVU02TUJWYjFRZA$A5fPErW2fyV3Rzleyypb4i7z50/iOkbVy8Kzj+mir+g',1,'','default','',NULL,0,'',NULL,'','a:9:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:25:\"resizeTextareas_MaxHeight\";i:500;s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1719335610;}',NULL,NULL,1,NULL,0,0,NULL,'',NULL),
(3,0,1629184457,1629184393,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$Y2dOZ0hnNUIvUnlxUjlVRg$hwsrFkUiggAx7NXrnTqHQKeMaJZaRtPFVmjiN2w0A44',1,'','default','',NULL,0,'',NULL,'','a:16:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:13:{s:12:\"system_dbint\";a:5:{s:8:\"function\";s:1:\"0\";s:8:\"language\";N;s:19:\"constant_editor_cat\";N;s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}s:13:\"system_config\";a:3:{s:4:\"tree\";s:8:\"confVars\";s:11:\"regexSearch\";b:0;s:13:\"node_confVars\";a:7:{s:3:\"EXT\";i:1;s:10:\"EXTENSIONS\";i:1;s:14:\"EXTENSIONS.dlf\";i:1;s:22:\"EXTENSIONS.dlf.general\";i:1;s:20:\"EXTENSIONS.dlf.files\";i:1;s:19:\"EXTENSIONS.dlf.solr\";i:1;s:27:\"EXTENSIONS.extensionmanager\";i:1;}}s:10:\"web_layout\";a:3:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";s:19:\"constant_editor_cat\";N;}s:8:\"web_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:6:\"web_ts\";a:8:{s:8:\"function\";s:87:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateObjectBrowserModuleFunctionController\";s:8:\"language\";N;s:19:\"constant_editor_cat\";s:32:\"plugin.ddb_kitodo_zeitungsportal\";s:15:\"ts_browser_type\";s:5:\"const\";s:16:\"ts_browser_const\";s:1:\"0\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_const\";a:5:{s:14:\"styles.content\";i:1;s:28:\"plugin.tx_felogin_login.view\";i:1;s:8:\"constant\";i:1;s:6:\"plugin\";i:1;s:9:\"constants\";i:1;}s:25:\"tsbrowser_depthKeys_setup\";a:12:{s:43:\"plugin.tx_dlf_searchindocumenttool.settings\";i:1;s:36:\"plugin.tx_dlf.view.templateRootPaths\";i:1;s:22:\"plugin.tx_dlf.settings\";i:1;s:25:\"plugin.tx_dlf.persistence\";i:1;s:18:\"plugin.tx_dlf.view\";i:1;s:47:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG\";i:1;s:55:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default\";i:1;s:64:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default.pageview\";i:1;s:77:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default.pageview.overview-map\";i:1;s:50:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de\";i:1;s:59:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de.pageview\";i:1;s:72:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de.pageview.overview-map\";i:1;}}s:10:\"FormEngine\";a:2:{i:0;a:3:{s:32:\"7d9e144e24486a6668d151356ea4c9d4\";a:4:{i:0;s:9:\"Viewerdev\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B4%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:4;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"696addfecc296b326ff6e9f04c7ff3e1\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"457104654cd91c678ff07af47ccb1df2\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"457104654cd91c678ff07af47ccb1df2\";a:4:{i:0;s:17:\"Solr Kern (PID 2)\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B7%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:7;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"66c91b4df6c608b2e122422f819a919a\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_documents\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_documents%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_documents\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"47e279c0b6f0ccf8306ae617df63a457\";a:4:{i:0;s:23:\"Sächsische Dorfzeitung\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_documents\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_documents%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_documents\";s:3:\"uid\";i:2;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"5a2f0abdf361aeac8ddbd983b0beade5\";a:4:{i:0;s:7:\"default\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_libraries\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_libraries%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_libraries\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"202b4070a530d47bdfe4a8ab5414de41\";a:4:{i:0;s:17:\"Solr Kern (PID 2)\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B4%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:4;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"12090399dc664d017ad421a214218b61\";a:4:{i:0;s:8:\"dlfCore0\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B6%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:6;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b7d1f761f300bd05a9e218690ea47184\";a:4:{i:0;s:16:\"newspaper-issues\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:5;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d05de5db7a95716a106a7b65a59bfc32\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:9:\"constants\";s:6:\"noView\";N;}i:2;s:57:\"&edit%5Bsys_template%5D%5B1%5D=edit&columnsOnly=constants\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:337:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":11:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:10:\"\0*\0channel\";s:3:\"php\";s:8:\"\0*\0level\";s:5:\"debug\";s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";s:9:\"file_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:9:\"tx_beuser\";a:2:{s:15:\"compareUserList\";a:0:{}s:6:\"demand\";a:5:{s:8:\"userName\";s:0:\"\";s:8:\"userType\";i:0;s:6:\"status\";i:0;s:6:\"logins\";i:0;s:16:\"backendUserGroup\";i:0;}}s:8:\"web_info\";a:3:{s:8:\"function\";s:48:\"TYPO3\\CMS\\Belog\\Module\\BackendLogModuleBootstrap\";s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:4:\"list\";a:2:{s:8:\"be_users\";s:1:\"1\";s:16:\"tx_dlf_solrcores\";s:1:\"0\";}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:25:\"resizeTextareas_MaxHeight\";i:500;s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1719407155;s:15:\"moduleSessionID\";a:11:{s:12:\"system_dbint\";s:40:\"6dbb395c23559c9ff20228c8951a961744064097\";s:10:\"web_layout\";s:40:\"4c7765043f318251aa68e74974a968b8b38e5863\";s:8:\"web_list\";s:40:\"4c7765043f318251aa68e74974a968b8b38e5863\";s:6:\"web_ts\";s:40:\"86dcf5776e56b6dd66c9efed2933a28045fe21ee\";s:10:\"FormEngine\";s:40:\"86dcf5776e56b6dd66c9efed2933a28045fe21ee\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"86dcf5776e56b6dd66c9efed2933a28045fe21ee\";s:16:\"opendocs::recent\";s:40:\"86dcf5776e56b6dd66c9efed2933a28045fe21ee\";s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:40:\"86dcf5776e56b6dd66c9efed2933a28045fe21ee\";s:9:\"file_list\";s:40:\"63872a1c30a9c0271ba8680867a836f84e998ca8\";s:9:\"tx_beuser\";s:40:\"6dbb395c23559c9ff20228c8951a961744064097\";s:8:\"web_info\";s:40:\"6dbb395c23559c9ff20228c8951a961744064097\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:1:{s:3:\"0_1\";s:1:\"1\";}}s:17:\"typo3-module-menu\";a:1:{s:9:\"collapsed\";s:5:\"false\";}s:15:\"FileStorageTree\";a:1:{s:9:\"stateHash\";a:2:{s:10:\"1_59663721\";s:1:\"1\";s:11:\"1_130865399\";s:1:\"1\";}}}}s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:0:\"\";s:6:\"report\";s:0:\"\";}}s:10:\"inlineView\";s:61:\"{\"tx_dlf_metadata\":{\"13\":{\"tx_dlf_metadataformat\":{\"2\":\"\"}}}}\";s:10:\"navigation\";a:1:{s:5:\"width\";s:3:\"300\";}s:10:\"modulemenu\";s:2:\"{}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1731066939}}\";}',NULL,NULL,1,NULL,1732633604,0,NULL,'',NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
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
  `usergroup` text DEFAULT NULL,
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
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
  `mfa` mediumblob DEFAULT NULL,
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
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1629185218,1628166633,1,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'{\"doktype\":null,\"title\":null,\"slug\":null,\"nav_title\":null,\"subtitle\":null,\"seo_title\":null,\"no_index\":null,\"no_follow\":null,\"canonical_link\":null,\"og_title\":null,\"og_description\":null,\"og_image\":null,\"twitter_title\":null,\"twitter_description\":null,\"twitter_image\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,'',0,'',0,'',1,1629185218,'','',0,'','','',0,0,0,0,0,0,'','','',0,'',0,0,'','',0,'','',0,'',0,0.5,'',''),
(2,1,1629184744,1628486511,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Kitodo Konfiguration','/1',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0.5,'',''),
(3,0,1630422840,1630422828,3,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":1,\"title\":\"Viewer\",\"slug\":\"\\/\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"canonical_link\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"hidden\":0,\"categories\":0,\"rowDescription\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":0,\"editlock\":0,\"layout\":0,\"fe_group\":\"\",\"extendToSubpages\":0,\"target\":\"\",\"alias\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"mount_pid\":0,\"is_siteroot\":1,\"mount_pid_ol\":0,\"module\":\"\",\"fe_login_mode\":0,\"l18n_cfg\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":0,\"no_follow\":0}',0,0,0,0,1,0,31,27,0,'[Translate to English:] Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,1,1630422840,NULL,'',0,'','','',0,0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'',0,0.5,'',''),
(4,1,1718879470,1630500948,3,0,0,0,0,'',128,'',0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,3,0,31,27,0,'Viewerdev','/viewerdev',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1718879470,'','',0,'','','',0,0,0,0,0,0,'','','',0,'',0,0,'','',0,'','',0,'',0,0.5,'','');
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
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
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
  `title` tinytext NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
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
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES
(1,0,1719411342,1719411342,0,0,'5',0,'/typo3conf/ext/dlf/Resources/Private/Data/FormatDefaults.json','06777fcba59dcf095876cf8818e5160d6ba6aaf5','1bcba67d92bc736363c57bbe2c98b91eefec7981','json','application/json','FormatDefaults.json','427955f30f442c7a9966aeb2611bec407cd3d8c6',865,1719332026,1719332026),
(2,0,1719411342,1719411342,0,0,'5',0,'/typo3conf/ext/dlf/Resources/Private/Data/StructureDefaults.json','19407363166945d9c20c5bacd7087e47736be250','1bcba67d92bc736363c57bbe2c98b91eefec7981','json','application/json','StructureDefaults.json','3effe7c59cb72f037dab4d1484ffca5e424628ef',6591,1719332026,1719332026),
(3,0,1719411342,1719411342,0,0,'5',0,'/typo3conf/ext/dlf/Resources/Private/Data/MetadataDefaults.json','43e7e960c99930eb6be886f0abce0a3d69b7ef8f','1bcba67d92bc736363c57bbe2c98b91eefec7981','json','application/json','MetadataDefaults.json','1badc9c505a9180fa5b680a9654a1b443ef75c24',21572,1719332026,1719332026),
(4,0,1723635869,1723635869,0,1,'5',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','application/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1718719998,1718719998),
(5,0,1723635871,1723635871,0,1,'1',0,'/_temp_/index.html','1cd5eec12b9b11599c0b4c6b2d43342c4fb53a7b','0258f8a5f703dd44c350fbfcddeecb1634d46ad4','html','text/html','index.html','344e8d2f838769251206d105d6977c1e6b5dab44',110,1718719998,1718719998),
(6,0,1723635878,1723635878,0,1,'1',0,'/user_upload/_temp_/importexport/index.html','68614dc2826769e93d8a8ead62af30ac99aaa83a','0795cf796b4fc959be0ec00b183c0f47609dd9a5','html','text/html','index.html','344e8d2f838769251206d105d6977c1e6b5dab44',110,1718719998,1718719998);
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
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
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
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES
(1,0,1719411342,1719411342,3,0,0,NULL,0,'',0,0,0,0,1,NULL,0,0,NULL,NULL,0),
(2,0,1719411342,1719411342,3,0,0,NULL,0,'',0,0,0,0,2,NULL,0,0,NULL,NULL,0),
(3,0,1719411342,1719411342,3,0,0,NULL,0,'',0,0,0,0,3,NULL,0,0,NULL,NULL,0),
(4,0,1723635869,1723635869,3,0,0,NULL,0,'',0,0,0,0,4,NULL,0,0,NULL,NULL,0),
(5,0,1723635871,1723635871,3,0,0,NULL,0,'',0,0,0,0,5,NULL,0,0,NULL,NULL,0),
(6,0,1723635878,1723635878,3,0,0,NULL,0,'',0,0,0,0,6,NULL,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
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
INSERT INTO `sys_file_storage` VALUES
(1,0,1628075892,1628075892,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
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
INSERT INTO `sys_language` VALUES
(1,0,1628487239,0,256,'English','us','en');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
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
  `protected` smallint(5) unsigned NOT NULL DEFAULT 0,
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
INSERT INTO `sys_refindex` VALUES
('010c202f2e56751245ee57a853fa198f','tx_dlf_documents',1,'structure','','','',0,0,'tx_dlf_structures',48,''),
('0793c9e38dffebfe8dfc053629cb4af4','tx_dlf_metadataformat',40,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('0bc75fc48a18f1b7592b49955076fe97','sys_file',6,'storage','','','',0,0,'sys_file_storage',1,''),
('0db6802f0afc4882930a44762c93c606','tx_dlf_metadata',7,'format','','','',0,0,'tx_dlf_metadataformat',7,''),
('0f0a2ec215e990c20aec0c48bb580228','tx_dlf_metadata',14,'format','','','',2,0,'tx_dlf_metadataformat',27,''),
('0f3226269914484f4eebc8d2c55990bd','tx_dlf_metadataformat',14,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('19e1d5ac731352030b3d44cc3ced2cb5','tx_dlf_metadata',10,'format','','','',1,0,'tx_dlf_metadataformat',16,''),
('1dbc126f48e17b9235b2f79bfb024be3','tx_dlf_metadata',17,'format','','','',1,0,'tx_dlf_metadataformat',32,''),
('1fce4061cace6416f6a6c7490cae547e','tx_dlf_metadata',29,'format','','','',0,0,'tx_dlf_metadataformat',43,''),
('25f7ba29c2635712d78a4144c645b539','tx_dlf_metadata',20,'format','','','',2,0,'tx_dlf_metadataformat',38,''),
('287e38a00b9e6b61536789dae3fe03bf','tx_dlf_metadataformat',46,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('2888842c974cb5361d9ef8327fa5cc2d','tx_dlf_metadata',21,'format','','','',0,0,'tx_dlf_metadataformat',39,''),
('2c60ab818b8fd6c7237615b1c6c26ca6','tx_dlf_structures',94,'l18n_parent','','','',0,0,'tx_dlf_structures',93,''),
('31abd1905a42f16059819354f882c5cc','tx_dlf_metadata',8,'format','','','',2,0,'tx_dlf_metadataformat',12,''),
('3226dff5adc4b805757faf8280403b40','tx_dlf_metadata',13,'format','','','',2,0,'tx_dlf_metadataformat',24,''),
('327efcc83b1f34260cd7a15b68be751b','tx_dlf_metadataformat',34,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('33901dd5a6263bc3fe54f84ba2814f10','tx_dlf_metadata',12,'format','','','',1,0,'tx_dlf_metadataformat',21,''),
('34ab2dd52281d32e9690a53b04493ac3','tx_dlf_metadata',11,'format','','','',0,0,'tx_dlf_metadataformat',17,''),
('3636e5f030cc3adf6d9d4f8c6fa7b605','tx_dlf_metadataformat',43,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('36ebbc44386f338b492ee9320897a1e8','tx_dlf_metadata',22,'l18n_parent','','','',0,0,'tx_dlf_metadata',23,''),
('3c399d871f9f131fbc364a505ab56bc3','tx_dlf_metadata',37,'format','','','',0,0,'tx_dlf_metadataformat',47,''),
('417513c20b7b7c848e002abb09eb2ff5','tx_dlf_metadataformat',36,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('442b476f66e838001d9362cca78150e3','tx_dlf_metadata',9,'format','','','',1,0,'tx_dlf_metadataformat',14,''),
('460f40df396301c42b9c08ac9bac9e12','tx_dlf_documents',1,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('4a2761996ee49c548ba995e6cd02dac5','tx_dlf_documents',2,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('4a5e1a50501fb07c65b59f7f5bea717b','tx_dlf_metadata',9,'format','','','',0,0,'tx_dlf_metadataformat',13,''),
('4ab0871a0cc60aee31858b33c82abf35','tx_dlf_metadata',7,'format','','','',1,0,'tx_dlf_metadataformat',8,''),
('4b122484f33aef01fd6102bfb593cf89','tx_dlf_metadataformat',19,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('4c9ded175b84f263f8bf0f0b7861b6de','tx_dlf_metadata',3,'format','','','',0,0,'tx_dlf_metadataformat',3,''),
('4ede775469dbde8500407e15976a76b9','tx_dlf_metadata',31,'format','','','',0,0,'tx_dlf_metadataformat',44,''),
('4f36e42bb08a72b4cf80b3a4d520ebde','tx_dlf_metadata',14,'format','','','',1,0,'tx_dlf_metadataformat',26,''),
('51f0da7fa344d264c1f9ab42bbe41a23','tx_dlf_metadataformat',4,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('548c352283f7ff33d682a6e1218f19ab','sys_template',1,'constants','','url','12',-1,0,'_STRING',0,'https://ddev-ddb-zeitungsportal.ddev.site/'),
('54ea322e1799221d2c16f2d294ce0668','sys_template',1,'config','','url','17',-1,0,'_STRING',0,'https://api-q1.deutsche-digitale-bibliothek.de/items/*id*/source/record'),
('58ebe68a13f8d8a5386107460b78b4ad','tx_dlf_metadataformat',27,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('5d3f5087eb1284df8a32c9a53fe87bd1','tx_dlf_metadata',28,'l18n_parent','','','',0,0,'tx_dlf_metadata',29,''),
('5da0b0320c16a37c96ed477e295fb84a','tx_dlf_metadataformat',12,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('5fd57a85510344d53ae16dac0b81d40f','tx_dlf_metadata',26,'l18n_parent','','','',0,0,'tx_dlf_metadata',27,''),
('620780928bf80f18411eb74c39bc7439','tx_dlf_metadata',1,'format','','','',0,0,'tx_dlf_metadataformat',1,''),
('63355f9a8e07c72e94d73e9eddb987c4','tx_dlf_metadata',27,'format','','','',0,0,'tx_dlf_metadataformat',42,''),
('64e5ae150a68af42765c6d7ab1b5ab4f','tx_dlf_metadataformat',18,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('650529d66ca105759ce0319396cec3b5','tx_dlf_metadataformat',1,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('69cd6e45fc523a9228acba3cfe0b60dd','sys_template',1,'config','','url','7',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record'),
('6d4c99124f73f5949f25c5a5f7b417c2','tx_dlf_metadata',12,'format','','','',0,0,'tx_dlf_metadataformat',20,''),
('6f2cff70cdeddd7f8cb486b758e9017b','tx_dlf_metadata',6,'format','','','',0,0,'tx_dlf_metadataformat',6,''),
('704ae16ba2b42a5f2cb7446d089d7227','tx_dlf_metadata',35,'format','','','',0,0,'tx_dlf_metadataformat',46,''),
('72fa29eeb2e86e8a0772016ba46acce9','tx_dlf_metadataformat',6,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('73a458082d19881a87db0ff2f86429c2','tx_dlf_metadataformat',11,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('73ec1aa1e022699f80cf10e3234603e0','tx_dlf_metadataformat',42,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('74a6369b82d50cbdea4417c202b06d4d','tx_dlf_metadataformat',8,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('7618d6f6b41f5a436c729d931d7a516d','pages',3,'l10n_parent','','','',0,0,'pages',1,''),
('7646e561feefdaecf463e53b2dfabe48','tx_dlf_metadataformat',37,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('7714601f6da481c790d1ebae6160b9bd','tx_dlf_metadataformat',2,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('791d3f9d43dcbfa78cd49dd8258caa09','sys_file',5,'storage','','','',0,0,'sys_file_storage',1,''),
('7b789114a40a759d5697991741aa7f7e','tx_dlf_metadataformat',45,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('7ce368acc89551a708c9b8eb1d89b0b4','tx_dlf_metadataformat',30,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('7f1d0bcfe937c07ee1097d7d8e718ca0','tx_dlf_metadataformat',39,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('841053c0a185fd0cddc6b57fc3773e31','tx_dlf_metadata',10,'format','','','',0,0,'tx_dlf_metadataformat',15,''),
('8794f6c9ad1911ceab2f28329b02d805','tx_dlf_metadataformat',48,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('879acf76d594ba9d6170c6d65d5e77c8','tx_dlf_metadata',18,'format','','','',0,0,'tx_dlf_metadataformat',33,''),
('87cea1d8a374ddd434e7df0b9b90094e','tx_dlf_metadataformat',33,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('897ff9f6d50e5af476509c56725227b0','tx_dlf_metadata',20,'format','','','',1,0,'tx_dlf_metadataformat',37,''),
('8c58f8f91b793b55494934169b9d80c7','sys_template',1,'constants','','url','17',-1,0,'_STRING',0,'https://dev-zpviewerdev.fiz-karlsruhe.de/'),
('8f242c9bf2b01eb3aa92901d8bca3e9d','tx_dlf_metadataformat',17,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('8fa2ff0688e23ce05d21093f320a5803','sys_template',1,'constants','','url','7',-1,0,'_STRING',0,'https://viewer-dzp.deutsche-digitale-bibliothek.de/'),
('8fc6082d26feea8290d686f89cff1c4b','tx_dlf_metadataformat',44,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('9042dac4724481e65cc7f8848e3432f3','sys_template',1,'config','','url','12',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item'),
('9333be3492bb5248ef628ff8177a5a5b','tx_dlf_metadataformat',5,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('95853d7dde05fa611863ec4bf3029291','tx_dlf_metadata',16,'format','','','',1,0,'tx_dlf_metadataformat',30,''),
('9846abd554c3e65020457bd650c57028','tx_dlf_metadata',7,'format','','','',2,0,'tx_dlf_metadataformat',9,''),
('99c9f985dcfa7ab9704280830b2781b9','tx_dlf_metadata',11,'format','','','',1,0,'tx_dlf_metadataformat',18,''),
('9a8eda1a3810d6dcc3874bf2a49b2853','tx_dlf_metadata',15,'format','','','',0,0,'tx_dlf_metadataformat',28,''),
('9af84ea11f2b0b3d0757b19f96971fdb','tx_dlf_metadata',25,'format','','','',0,0,'tx_dlf_metadataformat',41,''),
('9bc5b1614efe94d50c77a20c55c4db2a','tx_dlf_metadataformat',29,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('9bdbb40747f27442edcf1cd6482e3e70','tx_dlf_metadata',20,'format','','','',0,0,'tx_dlf_metadataformat',36,''),
('9e4b2651f17f2aa35e73d3a123f7d2af','tx_dlf_metadata',38,'l18n_parent','','','',0,0,'tx_dlf_metadata',39,''),
('a1f46e12369ba73164fc36018b58e7cf','tx_dlf_metadata',14,'format','','','',0,0,'tx_dlf_metadataformat',25,''),
('a503903f43f511449c3e8ad0dc9752ca','tx_dlf_metadata',16,'format','','','',0,0,'tx_dlf_metadataformat',29,''),
('a86946804bd1b98b9bce8b6f64c46544','tx_dlf_metadata',24,'l18n_parent','','','',0,0,'tx_dlf_metadata',25,''),
('a90abceb4dadedc2f707ce6fcf440ec7','tx_dlf_metadata',34,'l18n_parent','','','',0,0,'tx_dlf_metadata',35,''),
('aab8b631685c09f7efcd856c8732bdad','sys_template',1,'constants','','url','22',-1,0,'_STRING',0,'http://ddb-p2-vmzpviewer01:8001/zp-viewer'),
('ac071894f9308d84fae869fb6514506c','tx_dlf_metadata',32,'l18n_parent','','','',0,0,'tx_dlf_metadata',33,''),
('b00a7893380aeb84876104cb03e4a121','tx_dlf_metadataformat',35,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('b01e48a11d04a5acf9f9ab2e4f862294','tx_dlf_metadataformat',26,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('b226294ac789e4644bb765ff58172fe1','tx_dlf_metadataformat',24,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('b325383a59d48edd8b4967aeff4f76f2','tx_dlf_metadata',23,'format','','','',0,0,'tx_dlf_metadataformat',40,''),
('b4bc234e46ed74db4148415c2fa432f8','sys_template',1,'config','','url','2',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item'),
('b63de20fee359e9f32bc1752e026003f','tx_dlf_metadata',19,'format','','','',0,0,'tx_dlf_metadataformat',35,''),
('b733f1f1a19bcc4e5f3c623c10250be2','tx_dlf_metadataformat',47,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('bab37143de5339e474516691bf0c5857','sys_file',4,'storage','','','',0,0,'sys_file_storage',1,''),
('bb27add24eadc31d28bbc421ef776019','tx_dlf_metadataformat',28,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('bca7a540f2bfaa6950c7157fb9feb1dc','tx_dlf_metadataformat',41,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('be8ce7071b9ef4d476eaaaf4f41fd2f8','sys_template',1,'constants','','url','2',-1,0,'_STRING',0,'https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/'),
('bfd4d4c37090ae7efa0589cdc03826aa','tx_dlf_metadataformat',13,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('c3043e1babcffca64ed238e94b73dceb','tx_dlf_metadataformat',38,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('c6e1c789dec12f8305ed04cacaf7dbd9','tx_dlf_metadata',8,'format','','','',1,0,'tx_dlf_metadataformat',11,''),
('c72e0860e45748fe1cca415d3a23e071','tx_dlf_metadataformat',10,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('d0a796fb4090c09cc91ba08bc8772936','tx_dlf_metadata',18,'format','','','',1,0,'tx_dlf_metadataformat',34,''),
('d1adffd67d502ad2415e65e4ce92beb6','tx_dlf_metadataformat',15,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('d4fdfe691e54329e45a0df6927b5e3a9','tx_dlf_metadataformat',31,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('d659fe87912b7df45376edfa83184558','tx_dlf_metadata',4,'format','','','',0,0,'tx_dlf_metadataformat',4,''),
('d71c049ceae84c1311daf0d38476a9fe','tx_dlf_metadataformat',7,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('d9fb2fdbbcad9ef8264658a923d10a05','tx_dlf_metadata',36,'l18n_parent','','','',0,0,'tx_dlf_metadata',37,''),
('da26694a59c3819cd12fdc75803ef6c6','tx_dlf_metadataformat',16,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('db26d25cfdbe2b1fe49756f87e6cafda','tx_dlf_metadataformat',3,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('dca02605db1e190d2f7f3bf61b54bdcb','tx_dlf_metadata',13,'format','','','',1,0,'tx_dlf_metadataformat',23,''),
('dd293be3b8c7d6d482d9de084261f775','tx_dlf_metadata',2,'format','','','',0,0,'tx_dlf_metadataformat',2,''),
('e0c6881d95d9ac441f3e4edb6e097b0c','tx_dlf_metadataformat',25,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('e1f83239363c1d8e24d8ee7dcc694942','tx_dlf_documents',2,'structure','','','',0,0,'tx_dlf_structures',34,''),
('e4c30a6e80bda0e19a3ab133be36073c','tx_dlf_metadata',30,'l18n_parent','','','',0,0,'tx_dlf_metadata',31,''),
('e4d3d6a901ad9af96300dbf6c23240b5','tx_dlf_metadata',8,'format','','','',0,0,'tx_dlf_metadataformat',10,''),
('e4de06b43464bf069823386f74af276f','tx_dlf_metadata',5,'format','','','',0,0,'tx_dlf_metadataformat',5,''),
('e5798aae4c39a006e3f8a86bf7574358','tx_dlf_metadata',11,'format','','','',2,0,'tx_dlf_metadataformat',19,''),
('e6cec14e44b6f83571e0ad8e53f08879','tx_dlf_metadataformat',32,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('ed1b09d0f42f24bc8fce97bc9f8a07a8','tx_dlf_metadata',33,'format','','','',0,0,'tx_dlf_metadataformat',45,''),
('f183f916cc44df6c24aea3afa59ac010','tx_dlf_metadata',39,'format','','','',0,0,'tx_dlf_metadataformat',48,''),
('f3ac7ce19926112cae389e490a6b14ac','tx_dlf_metadata',17,'format','','','',0,0,'tx_dlf_metadataformat',31,''),
('f48abf1d36b2ad46e563c54f9475149c','tx_dlf_metadataformat',21,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('fa5626e21bf13c1ea2ef408afe068370','tx_dlf_metadataformat',23,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('fb727e59fa4f911b56dd3e568551e91a','tx_dlf_metadataformat',9,'encoded','','','',0,0,'tx_dlf_formats',1,''),
('fbf85f305f8689f407fffef0cc4a0a49','tx_dlf_metadataformat',20,'encoded','','','',0,0,'tx_dlf_formats',2,''),
('fc6523e8f4ca9c81a2187ad1d92e5759','tx_dlf_metadataformat',22,'encoded','','','',0,0,'tx_dlf_formats',5,''),
('ff56fc02246f13e0740ec8a26cb3f31d','tx_dlf_metadata',13,'format','','','',0,0,'tx_dlf_metadataformat',22,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=2115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),
(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),
(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),
(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),
(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),
(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),
(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),
(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),
(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),
(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),
(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),
(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),
(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),
(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),
(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),
(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),
(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),
(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),
(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),
(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),
(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),
(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),
(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),
(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),
(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),
(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),
(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),
(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),
(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),
(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization','i:1;'),
(31,'installUpdateRows','rowUpdatersDone','a:7:{i:0;s:52:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L10nModeUpdater\";i:1;s:53:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\ImageCropUpdater\";i:2;s:57:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\RteLinkSyntaxUpdater\";i:3;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";i:4;s:66:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L18nDiffsourceToJsonMigration\";i:5;s:77:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceMovePlaceholderRemovalMigration\";i:6;s:76:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceNewPlaceholderRemovalMigration\";}'),
(32,'core','formProtectionSessionToken:1',NULL),
(33,'languagePacks','baseUrl','s:33:\"https://localize.typo3.org/xliff/\";'),
(34,'extensionDataImport','typo3conf/ext/dlf/ext_tables_static+adt.sql','s:0:\"\";'),
(209,'core','sys_refindex_lastUpdate','i:1719335620;'),
(443,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate','i:1;'),
(444,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),
(445,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),
(446,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),
(447,'installUpdate','TYPO3\\CMS\\Felogin\\Updates\\MigrateFeloginPlugins','i:1;'),
(448,'installUpdate','Kitodo\\Dlf\\Updates\\MigrateSettings','i:1;'),
(449,'installUpdate','Kitodo\\Dlf\\Updates\\FileLocationUpdater','i:1;'),
(682,'languagePacks','de-dlf','i:1719236534;'),
(683,'languagePacks','de','i:1719236536;'),
(1149,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ShortcutRecordsMigration','i:1;'),
(1150,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CollectionsExtractionUpdate','i:1;'),
(1151,'installUpdate','TYPO3\\CMS\\FrontendLogin\\Updates\\MigrateFeloginPlugins','i:1;'),
(1152,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogChannel','i:1;'),
(1153,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserLanguageMigration','i:1;'),
(1792,'core','formProtectionSessionToken:3','s:64:\"2df4f1cb1ff15b9ede848e6e0f259f8611bec67686e213c578bacca79b9baa2e\";'),
(1793,'extensionScannerNotAffected','9aa93b9277a65f284b5f77ebc3d79435','s:32:\"9aa93b9277a65f284b5f77ebc3d79435\";'),
(1794,'extensionScannerNotAffected','e9cf64ee9da1d5e62168bd794df2247d','s:32:\"e9cf64ee9da1d5e62168bd794df2247d\";'),
(1795,'extensionScannerNotAffected','8280e3513619dfe238c096f653be5302','s:32:\"8280e3513619dfe238c096f653be5302\";'),
(1796,'extensionScannerNotAffected','62a6991c22ec61aeb428572c720b37d6','s:32:\"62a6991c22ec61aeb428572c720b37d6\";'),
(1797,'extensionScannerNotAffected','8b5b904b1ee09d5394dfbbc338ee9bf7','s:32:\"8b5b904b1ee09d5394dfbbc338ee9bf7\";'),
(1798,'extensionScannerNotAffected','6603e1c47876b136ecae8ce17b90bff0','s:32:\"6603e1c47876b136ecae8ce17b90bff0\";'),
(1799,'extensionScannerNotAffected','4544a28f584624d49bb2eaef6e82ff26','s:32:\"4544a28f584624d49bb2eaef6e82ff26\";'),
(1800,'extensionScannerNotAffected','5d5153c44dca7eb24b0b2d24f1529721','s:32:\"5d5153c44dca7eb24b0b2d24f1529721\";'),
(1801,'extensionScannerNotAffected','e3175d691acb5b8e87df0cb048e42c5d','s:32:\"e3175d691acb5b8e87df0cb048e42c5d\";'),
(1802,'extensionScannerNotAffected','03851323f0a1307a6f32f3a73395193e','s:32:\"03851323f0a1307a6f32f3a73395193e\";'),
(1803,'extensionScannerNotAffected','a271ca83d6927ba0377f95eec02ed24f','s:32:\"a271ca83d6927ba0377f95eec02ed24f\";'),
(1804,'extensionScannerNotAffected','096d981ed62c017ea36b3f208f540ad4','s:32:\"096d981ed62c017ea36b3f208f540ad4\";'),
(1805,'extensionScannerNotAffected','771615afe13a7d48fbbaeab727343ea7','s:32:\"771615afe13a7d48fbbaeab727343ea7\";'),
(1806,'extensionScannerNotAffected','4c3c8b406e47d993850476de555da48c','s:32:\"4c3c8b406e47d993850476de555da48c\";'),
(1807,'extensionScannerNotAffected','9a59a47b5a0c4d5640387d5988846925','s:32:\"9a59a47b5a0c4d5640387d5988846925\";'),
(1808,'extensionScannerNotAffected','32582e7e731318c3febcee6634dff7db','s:32:\"32582e7e731318c3febcee6634dff7db\";'),
(1809,'extensionScannerNotAffected','e3b129156a3c6cf9b08c70337b7db7f0','s:32:\"e3b129156a3c6cf9b08c70337b7db7f0\";'),
(1810,'extensionScannerNotAffected','1c69a07ef79e504938ce64c8a5c01c37','s:32:\"1c69a07ef79e504938ce64c8a5c01c37\";'),
(1811,'extensionScannerNotAffected','c926977edb9b1381dfd6db42c9c38d36','s:32:\"c926977edb9b1381dfd6db42c9c38d36\";'),
(1812,'extensionScannerNotAffected','ebdbde59436ef40f9c094558399a519b','s:32:\"ebdbde59436ef40f9c094558399a519b\";'),
(1813,'extensionScannerNotAffected','42729c0de6c7a88f7d3c9011c2b701fb','s:32:\"42729c0de6c7a88f7d3c9011c2b701fb\";'),
(1814,'extensionScannerNotAffected','7433bd10eda73f92ebf48c79212a73ec','s:32:\"7433bd10eda73f92ebf48c79212a73ec\";'),
(1815,'extensionScannerNotAffected','1cf2d82e029d22d6ae7d1e0a0a28b893','s:32:\"1cf2d82e029d22d6ae7d1e0a0a28b893\";'),
(1816,'extensionScannerNotAffected','ecbdd5a9bb889ebbbf53edf3f81cd73b','s:32:\"ecbdd5a9bb889ebbbf53edf3f81cd73b\";'),
(1817,'extensionScannerNotAffected','a3943f180a3dbd67b2bcef2bed01255e','s:32:\"a3943f180a3dbd67b2bcef2bed01255e\";'),
(1818,'extensionScannerNotAffected','6f522c8490e86245258b6885f1b9b050','s:32:\"6f522c8490e86245258b6885f1b9b050\";'),
(1819,'extensionScannerNotAffected','796d5caea2b1a1bdc8cf7cf0734ce75b','s:32:\"796d5caea2b1a1bdc8cf7cf0734ce75b\";'),
(1820,'extensionScannerNotAffected','a2dde15e078601ea894a564c7f9d03e4','s:32:\"a2dde15e078601ea894a564c7f9d03e4\";'),
(1821,'extensionScannerNotAffected','848ac016d8024c33b82218774be62922','s:32:\"848ac016d8024c33b82218774be62922\";'),
(1822,'extensionScannerNotAffected','6b5f1a87c899b96759842d532f846cd1','s:32:\"6b5f1a87c899b96759842d532f846cd1\";'),
(1823,'extensionScannerNotAffected','b340ea55b04524d0b05bef61e00e2cab','s:32:\"b340ea55b04524d0b05bef61e00e2cab\";'),
(1824,'extensionScannerNotAffected','3022fdf75d186f543092e249ea3cd85a','s:32:\"3022fdf75d186f543092e249ea3cd85a\";'),
(1825,'extensionScannerNotAffected','9691eecb539ea83b3216c7908587b72a','s:32:\"9691eecb539ea83b3216c7908587b72a\";'),
(1826,'extensionScannerNotAffected','a52a2b05cdb598d51404a5eb46519df4','s:32:\"a52a2b05cdb598d51404a5eb46519df4\";'),
(1827,'extensionScannerNotAffected','1e3b5786e1903466b88b3c1a509092d0','s:32:\"1e3b5786e1903466b88b3c1a509092d0\";'),
(1828,'extensionScannerNotAffected','fd8e1b0856c7ae38e466c41d752aef3f','s:32:\"fd8e1b0856c7ae38e466c41d752aef3f\";'),
(1829,'extensionScannerNotAffected','630c8c8d8746166b55311a3f4c7db54b','s:32:\"630c8c8d8746166b55311a3f4c7db54b\";'),
(1830,'extensionScannerNotAffected','9fddd15d376d2e3855ccf51accfa3264','s:32:\"9fddd15d376d2e3855ccf51accfa3264\";'),
(1831,'extensionScannerNotAffected','20ce57c9d72fadcfccd99b8bac7d5c21','s:32:\"20ce57c9d72fadcfccd99b8bac7d5c21\";'),
(1832,'extensionScannerNotAffected','add859d1c68f3596c666f1f85da17e31','s:32:\"add859d1c68f3596c666f1f85da17e31\";'),
(1833,'extensionScannerNotAffected','3e68193c203e6b76c95d4b133c7b6827','s:32:\"3e68193c203e6b76c95d4b133c7b6827\";'),
(1834,'extensionScannerNotAffected','f0410d322f416815fb67a55d8aee482f','s:32:\"f0410d322f416815fb67a55d8aee482f\";'),
(1835,'extensionScannerNotAffected','277048af15677be27c03486efa4be646','s:32:\"277048af15677be27c03486efa4be646\";'),
(1836,'extensionScannerNotAffected','10a10bd071eef7f994dc535f60152aa8','s:32:\"10a10bd071eef7f994dc535f60152aa8\";'),
(1837,'extensionScannerNotAffected','4ba4a468b340f78590df3e2bb833e796','s:32:\"4ba4a468b340f78590df3e2bb833e796\";'),
(1838,'extensionScannerNotAffected','be19c2660961eb4fe81db49071b3a0d4','s:32:\"be19c2660961eb4fe81db49071b3a0d4\";'),
(1839,'extensionScannerNotAffected','e927827226a57bbfbdd1e8c8c81cc271','s:32:\"e927827226a57bbfbdd1e8c8c81cc271\";'),
(1840,'extensionScannerNotAffected','abb489c1bda090e39515cf623878e2b8','s:32:\"abb489c1bda090e39515cf623878e2b8\";'),
(1841,'extensionScannerNotAffected','0ca5c3d2f2b476198b07bc55f557fa83','s:32:\"0ca5c3d2f2b476198b07bc55f557fa83\";'),
(1842,'extensionScannerNotAffected','1a26f21590cff67aaad705782d95ec06','s:32:\"1a26f21590cff67aaad705782d95ec06\";'),
(1843,'extensionScannerNotAffected','ae11ebb8b4956062f728f008f58afcd3','s:32:\"ae11ebb8b4956062f728f008f58afcd3\";'),
(1844,'extensionScannerNotAffected','1a857d84999ba726a44fd6c6fd2ce770','s:32:\"1a857d84999ba726a44fd6c6fd2ce770\";'),
(1845,'extensionScannerNotAffected','d91a4add54e367b01553a2db8fe55b37','s:32:\"d91a4add54e367b01553a2db8fe55b37\";'),
(1846,'extensionScannerNotAffected','b0751b546eae2d3e8ea52a7d030e86cf','s:32:\"b0751b546eae2d3e8ea52a7d030e86cf\";'),
(1847,'extensionScannerNotAffected','a2a4e9fce37afb9b1f528fff96fe824e','s:32:\"a2a4e9fce37afb9b1f528fff96fe824e\";'),
(1848,'extensionScannerNotAffected','5e07c8d39708e00f5bb0b7063cb58c79','s:32:\"5e07c8d39708e00f5bb0b7063cb58c79\";'),
(1849,'extensionScannerNotAffected','d1bfedd40b6dd3c56b6cf45f26b7ef4b','s:32:\"d1bfedd40b6dd3c56b6cf45f26b7ef4b\";'),
(1850,'extensionScannerNotAffected','d84fad04a43c41747f4da23fd528e251','s:32:\"d84fad04a43c41747f4da23fd528e251\";'),
(1851,'extensionScannerNotAffected','b6658dfd236e9d356e6b17746871f7d5','s:32:\"b6658dfd236e9d356e6b17746871f7d5\";'),
(1852,'extensionScannerNotAffected','78e52f9d827bcb2650ef6813691c2b8a','s:32:\"78e52f9d827bcb2650ef6813691c2b8a\";'),
(1853,'extensionScannerNotAffected','b2175f0ac6dafbd7d9a930dcd40640a1','s:32:\"b2175f0ac6dafbd7d9a930dcd40640a1\";'),
(1854,'extensionScannerNotAffected','08af1c5299d7f726d3ff4fa32ac787ff','s:32:\"08af1c5299d7f726d3ff4fa32ac787ff\";'),
(1855,'extensionScannerNotAffected','f3d55e844c58c4c29e23441b4cf246fa','s:32:\"f3d55e844c58c4c29e23441b4cf246fa\";'),
(1856,'extensionScannerNotAffected','8b028fc5be16a3a480680ffa2da44d69','s:32:\"8b028fc5be16a3a480680ffa2da44d69\";'),
(1857,'extensionScannerNotAffected','127a0f8d3d98a78e6d0322ae35512fdf','s:32:\"127a0f8d3d98a78e6d0322ae35512fdf\";'),
(1858,'extensionScannerNotAffected','28776db5a7c915d655dd92bfe81013bd','s:32:\"28776db5a7c915d655dd92bfe81013bd\";'),
(1859,'extensionScannerNotAffected','2a2a44c323a6dbddcc595689a4813b5c','s:32:\"2a2a44c323a6dbddcc595689a4813b5c\";'),
(1860,'extensionScannerNotAffected','8a52401a7a603319d58e6ac67b133e0d','s:32:\"8a52401a7a603319d58e6ac67b133e0d\";'),
(1861,'extensionScannerNotAffected','a7ba2396b0b8e6bda7ab7d7734688c6a','s:32:\"a7ba2396b0b8e6bda7ab7d7734688c6a\";'),
(1862,'extensionScannerNotAffected','33d43ec1e6e80dcc4b50d55cb270164c','s:32:\"33d43ec1e6e80dcc4b50d55cb270164c\";'),
(1863,'extensionScannerNotAffected','15c258875cbacbee5ce912a60f70a53a','s:32:\"15c258875cbacbee5ce912a60f70a53a\";'),
(1864,'extensionScannerNotAffected','be91d1ec18366c1d2c1bb450ab6e6982','s:32:\"be91d1ec18366c1d2c1bb450ab6e6982\";'),
(1865,'extensionScannerNotAffected','4f8893d36fde08799f185251ce8a1d7d','s:32:\"4f8893d36fde08799f185251ce8a1d7d\";'),
(1866,'extensionScannerNotAffected','a1e05622e232739de1c9f096122edf0d','s:32:\"a1e05622e232739de1c9f096122edf0d\";'),
(1867,'extensionScannerNotAffected','df8733b098af0c109ff700b9c6a45387','s:32:\"df8733b098af0c109ff700b9c6a45387\";'),
(1868,'extensionScannerNotAffected','3b35b1893c858b4c72beae89da4d72ee','s:32:\"3b35b1893c858b4c72beae89da4d72ee\";'),
(1869,'extensionScannerNotAffected','f99b5997a72dd36d831d762a6e072149','s:32:\"f99b5997a72dd36d831d762a6e072149\";'),
(1870,'extensionScannerNotAffected','42261e6899ab6b5b75f74222dcb223a4','s:32:\"42261e6899ab6b5b75f74222dcb223a4\";'),
(1871,'extensionScannerNotAffected','f2958c806d88d2d7aee445f3ea731b7a','s:32:\"f2958c806d88d2d7aee445f3ea731b7a\";'),
(1872,'extensionScannerNotAffected','9bf8366ee53aa0f01c679088c5eafbe9','s:32:\"9bf8366ee53aa0f01c679088c5eafbe9\";'),
(1873,'extensionScannerNotAffected','42d940b576b1305c7008fdfb9209b6b3','s:32:\"42d940b576b1305c7008fdfb9209b6b3\";'),
(1874,'extensionScannerNotAffected','de80e00d9fdc1af1885aef6221e0512f','s:32:\"de80e00d9fdc1af1885aef6221e0512f\";'),
(1875,'extensionScannerNotAffected','f89e6ca048ef0f505375776d72685893','s:32:\"f89e6ca048ef0f505375776d72685893\";'),
(1876,'extensionScannerNotAffected','e01033484593b9ae1680113f2c232c91','s:32:\"e01033484593b9ae1680113f2c232c91\";'),
(1877,'extensionScannerNotAffected','86bc714264687cf08e1cab4057e4bb02','s:32:\"86bc714264687cf08e1cab4057e4bb02\";'),
(1878,'extensionScannerNotAffected','3b13080fd465998d5c70f43e4fbb236e','s:32:\"3b13080fd465998d5c70f43e4fbb236e\";'),
(1879,'extensionScannerNotAffected','cd5ac3b13f0613715349c20619784838','s:32:\"cd5ac3b13f0613715349c20619784838\";'),
(1880,'extensionScannerNotAffected','13dfcb4815bbe6c5ab7592cbf5156cc7','s:32:\"13dfcb4815bbe6c5ab7592cbf5156cc7\";'),
(1881,'extensionScannerNotAffected','c4eed6810f2784df1829bc5f9a6706ab','s:32:\"c4eed6810f2784df1829bc5f9a6706ab\";'),
(1882,'extensionScannerNotAffected','6ea845a3aca017062bbfff2a1a2fa65c','s:32:\"6ea845a3aca017062bbfff2a1a2fa65c\";'),
(1883,'extensionScannerNotAffected','f178dbfd54aff5f0ed2317e0967e192e','s:32:\"f178dbfd54aff5f0ed2317e0967e192e\";'),
(1884,'extensionScannerNotAffected','21779e16fa1600602ca77f5889515810','s:32:\"21779e16fa1600602ca77f5889515810\";'),
(1885,'extensionScannerNotAffected','c116f4ad0d187dccaeda9f9474d89580','s:32:\"c116f4ad0d187dccaeda9f9474d89580\";'),
(1886,'extensionScannerNotAffected','6bdd13c460d24f22a219d91d121d7fb9','s:32:\"6bdd13c460d24f22a219d91d121d7fb9\";'),
(1887,'extensionScannerNotAffected','d317488deaebb06a0bbda5a729b39294','s:32:\"d317488deaebb06a0bbda5a729b39294\";'),
(1888,'extensionScannerNotAffected','ea9b64a2259862b3f566a977802ffa4e','s:32:\"ea9b64a2259862b3f566a977802ffa4e\";'),
(1889,'extensionScannerNotAffected','5f7ec5be0f2ea3bcc94f3915f92d07d5','s:32:\"5f7ec5be0f2ea3bcc94f3915f92d07d5\";'),
(1890,'extensionScannerNotAffected','7a97b6b1d6b27f8860485e8f99fda0fa','s:32:\"7a97b6b1d6b27f8860485e8f99fda0fa\";'),
(1891,'extensionScannerNotAffected','9b8cc7b4cf993f0b189e714dbab03e09','s:32:\"9b8cc7b4cf993f0b189e714dbab03e09\";'),
(1892,'extensionScannerNotAffected','4130ab4500044da22279febeae784c5d','s:32:\"4130ab4500044da22279febeae784c5d\";'),
(1893,'extensionScannerNotAffected','9d78f10d3d3468f3ea0abbc8ac9efefd','s:32:\"9d78f10d3d3468f3ea0abbc8ac9efefd\";'),
(1894,'extensionScannerNotAffected','c21097a04e68fa3997d1b4c7451e42df','s:32:\"c21097a04e68fa3997d1b4c7451e42df\";'),
(1895,'extensionScannerNotAffected','b55534ba49175a2a71a489fe1cdc9151','s:32:\"b55534ba49175a2a71a489fe1cdc9151\";'),
(1896,'extensionScannerNotAffected','8b68914e7701bbbd09a4360a8eeb30b4','s:32:\"8b68914e7701bbbd09a4360a8eeb30b4\";'),
(1897,'extensionScannerNotAffected','0fdaee63c65c5e7385912e99a860bec0','s:32:\"0fdaee63c65c5e7385912e99a860bec0\";'),
(1898,'extensionScannerNotAffected','3a9d51446d583867eaa29e96d1b3d82f','s:32:\"3a9d51446d583867eaa29e96d1b3d82f\";'),
(1899,'extensionScannerNotAffected','4f0204efbbaeb96d5bd5a8a8be77ab3a','s:32:\"4f0204efbbaeb96d5bd5a8a8be77ab3a\";'),
(1900,'extensionScannerNotAffected','6a612953cdfb79e84af300876b6cffee','s:32:\"6a612953cdfb79e84af300876b6cffee\";'),
(1901,'extensionScannerNotAffected','5ae6448ae34f394c75accc0cba4ba219','s:32:\"5ae6448ae34f394c75accc0cba4ba219\";'),
(1902,'extensionScannerNotAffected','eb6039312047fc7f3b8bd323927ce28e','s:32:\"eb6039312047fc7f3b8bd323927ce28e\";'),
(1903,'extensionScannerNotAffected','e0da9b531546c31c5c7437f76b41bfd7','s:32:\"e0da9b531546c31c5c7437f76b41bfd7\";'),
(1904,'extensionScannerNotAffected','f97579819f68986e299a019267bccb2c','s:32:\"f97579819f68986e299a019267bccb2c\";'),
(1905,'extensionScannerNotAffected','184dfa358aba8cae0d7d44431aa42641','s:32:\"184dfa358aba8cae0d7d44431aa42641\";'),
(1906,'extensionScannerNotAffected','0799b85e05618bcea4e866433d1aa91c','s:32:\"0799b85e05618bcea4e866433d1aa91c\";'),
(1907,'extensionScannerNotAffected','0a4387299f7d949791ac6d1d553cb080','s:32:\"0a4387299f7d949791ac6d1d553cb080\";'),
(1908,'extensionScannerNotAffected','dc689766d5e6930a255cef3d91db491e','s:32:\"dc689766d5e6930a255cef3d91db491e\";'),
(1909,'extensionScannerNotAffected','788999224bc619ee7b8b044ff075e623','s:32:\"788999224bc619ee7b8b044ff075e623\";'),
(1910,'extensionScannerNotAffected','03dfd2403b9bdac1c7326a88d9e4de83','s:32:\"03dfd2403b9bdac1c7326a88d9e4de83\";'),
(1911,'extensionScannerNotAffected','7c4c3a6eb349d033a95e8724b0b725ba','s:32:\"7c4c3a6eb349d033a95e8724b0b725ba\";'),
(1912,'extensionScannerNotAffected','07ec0dc573eb2edafa4c0971a383e416','s:32:\"07ec0dc573eb2edafa4c0971a383e416\";'),
(1913,'extensionScannerNotAffected','e10fc0ad498c2aa35102ffc3f1a46406','s:32:\"e10fc0ad498c2aa35102ffc3f1a46406\";'),
(1914,'extensionScannerNotAffected','91e85bb312ba7e102ecf80bf6154571e','s:32:\"91e85bb312ba7e102ecf80bf6154571e\";'),
(1915,'extensionScannerNotAffected','256b019437f4ac0f38be053ccb87c620','s:32:\"256b019437f4ac0f38be053ccb87c620\";'),
(1916,'extensionScannerNotAffected','4c0080be91e78bc2db633158c829d74c','s:32:\"4c0080be91e78bc2db633158c829d74c\";'),
(1917,'extensionScannerNotAffected','ce03f60b48a230594678c59b47037c43','s:32:\"ce03f60b48a230594678c59b47037c43\";'),
(1918,'extensionScannerNotAffected','0fd2b9d19dc468afd1a2226befc95a06','s:32:\"0fd2b9d19dc468afd1a2226befc95a06\";'),
(1919,'extensionScannerNotAffected','e4671c9fbe712457bb532249bc285a2a','s:32:\"e4671c9fbe712457bb532249bc285a2a\";'),
(1920,'extensionScannerNotAffected','eb35eb32497292de1fb8435020010941','s:32:\"eb35eb32497292de1fb8435020010941\";'),
(1921,'extensionScannerNotAffected','6900e7df764d6a41fb2ebcc7dfc14ea1','s:32:\"6900e7df764d6a41fb2ebcc7dfc14ea1\";'),
(1922,'extensionScannerNotAffected','55abdd51e86705fe8f31b2ebf0aaef1d','s:32:\"55abdd51e86705fe8f31b2ebf0aaef1d\";'),
(1923,'extensionScannerNotAffected','c9d3417dcfeb2ec79d94cee3931620fa','s:32:\"c9d3417dcfeb2ec79d94cee3931620fa\";'),
(1924,'extensionScannerNotAffected','870bb1337c3298e1a860315b29ce64a5','s:32:\"870bb1337c3298e1a860315b29ce64a5\";'),
(1925,'extensionScannerNotAffected','537ed0121bec18054c028243572475db','s:32:\"537ed0121bec18054c028243572475db\";'),
(1926,'extensionScannerNotAffected','e2f51fcc9cc38f925d503d395a128a0e','s:32:\"e2f51fcc9cc38f925d503d395a128a0e\";'),
(1927,'extensionScannerNotAffected','b14531e3f124f99afe0504385d6c1be4','s:32:\"b14531e3f124f99afe0504385d6c1be4\";'),
(1928,'extensionScannerNotAffected','d9fa61ceef7e46613edf7e5ae1273484','s:32:\"d9fa61ceef7e46613edf7e5ae1273484\";'),
(1929,'extensionScannerNotAffected','a0fb94cf6157e707d59816ee14406074','s:32:\"a0fb94cf6157e707d59816ee14406074\";'),
(1930,'extensionScannerNotAffected','7eb83a2ce593f46e0b4a46767e69cd93','s:32:\"7eb83a2ce593f46e0b4a46767e69cd93\";'),
(1931,'extensionScannerNotAffected','f9a4d89c8e28ff90a28734095ea74555','s:32:\"f9a4d89c8e28ff90a28734095ea74555\";'),
(1932,'extensionScannerNotAffected','37407c4308a472ccba7650c5f23dba92','s:32:\"37407c4308a472ccba7650c5f23dba92\";'),
(1933,'extensionScannerNotAffected','98fd606bb35f37d478cdfe6b0b1c7ac6','s:32:\"98fd606bb35f37d478cdfe6b0b1c7ac6\";'),
(1934,'extensionScannerNotAffected','2cdfaa818b2211039ffbd8a3357882f1','s:32:\"2cdfaa818b2211039ffbd8a3357882f1\";'),
(1935,'extensionScannerNotAffected','957aabf519fc2649d2e8fd0a515e5c4d','s:32:\"957aabf519fc2649d2e8fd0a515e5c4d\";'),
(1936,'extensionScannerNotAffected','05496464c4f22fde57877043219b4aa2','s:32:\"05496464c4f22fde57877043219b4aa2\";'),
(1937,'extensionScannerNotAffected','2531f07c8ce72590bf64df6851f9e7f3','s:32:\"2531f07c8ce72590bf64df6851f9e7f3\";'),
(1938,'extensionScannerNotAffected','137c68bff595a7d3d3e390ecebdd12a7','s:32:\"137c68bff595a7d3d3e390ecebdd12a7\";'),
(1939,'extensionScannerNotAffected','a497be10ea132112be39785227cb0ece','s:32:\"a497be10ea132112be39785227cb0ece\";'),
(1940,'extensionScannerNotAffected','208e590ab73e0724cb7bb4283cf4614d','s:32:\"208e590ab73e0724cb7bb4283cf4614d\";'),
(1941,'extensionScannerNotAffected','81f90e4d011a4678ca3fe2b6c42b526b','s:32:\"81f90e4d011a4678ca3fe2b6c42b526b\";'),
(1942,'extensionScannerNotAffected','d05e9eefdf1c2d3ca8d12d9bffc8dc70','s:32:\"d05e9eefdf1c2d3ca8d12d9bffc8dc70\";'),
(1943,'extensionScannerNotAffected','3fbf4bd45cce93c96497033287d8a593','s:32:\"3fbf4bd45cce93c96497033287d8a593\";'),
(1944,'extensionScannerNotAffected','7b0e8e3deae1a71df8c6e5df4c75efd2','s:32:\"7b0e8e3deae1a71df8c6e5df4c75efd2\";'),
(1945,'extensionScannerNotAffected','59b3c66f73bcf1dc84b0b61283767e62','s:32:\"59b3c66f73bcf1dc84b0b61283767e62\";'),
(1946,'extensionScannerNotAffected','f75b87d6994f2b45294b074450ed99de','s:32:\"f75b87d6994f2b45294b074450ed99de\";'),
(1947,'extensionScannerNotAffected','af518efa7bcec68d4ef3e89361f5b070','s:32:\"af518efa7bcec68d4ef3e89361f5b070\";'),
(1948,'extensionScannerNotAffected','dc6f49c793bd3e4818c2488de6998383','s:32:\"dc6f49c793bd3e4818c2488de6998383\";'),
(1949,'extensionScannerNotAffected','84f6f7d7608e67ae0db88e1bb21552cb','s:32:\"84f6f7d7608e67ae0db88e1bb21552cb\";'),
(1950,'extensionScannerNotAffected','f49583e7730ced96d47e45d463a4b90f','s:32:\"f49583e7730ced96d47e45d463a4b90f\";'),
(1951,'extensionScannerNotAffected','2ebf7d215f3949990d607aa363293f0d','s:32:\"2ebf7d215f3949990d607aa363293f0d\";'),
(1952,'extensionScannerNotAffected','bd33cfe4457c74dcf2dbe60551d8bdf0','s:32:\"bd33cfe4457c74dcf2dbe60551d8bdf0\";'),
(1953,'extensionScannerNotAffected','ebb3837c3eca6ae5bc77817421a99414','s:32:\"ebb3837c3eca6ae5bc77817421a99414\";'),
(1954,'extensionScannerNotAffected','78faa602896a4de888adfc4fff74911c','s:32:\"78faa602896a4de888adfc4fff74911c\";'),
(1955,'extensionScannerNotAffected','278a6d9a9359a298239b9757ca5a0658','s:32:\"278a6d9a9359a298239b9757ca5a0658\";'),
(1956,'extensionScannerNotAffected','f134e01b05f71463a3b9f0d8305cb18b','s:32:\"f134e01b05f71463a3b9f0d8305cb18b\";'),
(1957,'extensionScannerNotAffected','ce3a08ec49aed55bfb6321ab29322fcf','s:32:\"ce3a08ec49aed55bfb6321ab29322fcf\";'),
(1958,'extensionScannerNotAffected','22bb500ab0da0114296d835fb4843911','s:32:\"22bb500ab0da0114296d835fb4843911\";'),
(1959,'extensionScannerNotAffected','7de310ef0781372c22235f4e4c5a9c93','s:32:\"7de310ef0781372c22235f4e4c5a9c93\";'),
(1960,'extensionScannerNotAffected','986af5e700498af0c406a1c354a88530','s:32:\"986af5e700498af0c406a1c354a88530\";'),
(1961,'extensionScannerNotAffected','d760f6bb19706badecf16a0731e3f886','s:32:\"d760f6bb19706badecf16a0731e3f886\";'),
(1962,'extensionScannerNotAffected','01d9ebc50c69075c509adff41094aa44','s:32:\"01d9ebc50c69075c509adff41094aa44\";'),
(1963,'extensionScannerNotAffected','06331cd1ab789a6f37a92782fab478a5','s:32:\"06331cd1ab789a6f37a92782fab478a5\";'),
(1964,'extensionScannerNotAffected','ef288692cd84d1eaec05b5bb33d20695','s:32:\"ef288692cd84d1eaec05b5bb33d20695\";'),
(1965,'extensionScannerNotAffected','e8fdb29754fd6723d18dc1dd35141fc4','s:32:\"e8fdb29754fd6723d18dc1dd35141fc4\";'),
(1966,'extensionScannerNotAffected','a87b3e8873680dce295d9ed5b66477ac','s:32:\"a87b3e8873680dce295d9ed5b66477ac\";'),
(1967,'extensionScannerNotAffected','9bc85f8e20068e602d56f51ce7b5b552','s:32:\"9bc85f8e20068e602d56f51ce7b5b552\";'),
(1968,'extensionScannerNotAffected','dfd8ba28be70852dc68caf4dd4c2c5af','s:32:\"dfd8ba28be70852dc68caf4dd4c2c5af\";'),
(1969,'extensionScannerNotAffected','4678a60d71342df4ba8c2af44dc28a02','s:32:\"4678a60d71342df4ba8c2af44dc28a02\";'),
(1970,'extensionScannerNotAffected','a78382b6a17344a1319f363781e89c96','s:32:\"a78382b6a17344a1319f363781e89c96\";'),
(1971,'extensionScannerNotAffected','10660a0b55948bda8b5be11b94520f86','s:32:\"10660a0b55948bda8b5be11b94520f86\";'),
(1972,'extensionScannerNotAffected','e4cb2ff8131e30096b67f313934fa5aa','s:32:\"e4cb2ff8131e30096b67f313934fa5aa\";'),
(1973,'extensionScannerNotAffected','f62e9efda740779576c4c093b92e6bbe','s:32:\"f62e9efda740779576c4c093b92e6bbe\";'),
(1974,'extensionScannerNotAffected','0b33776f56c0dffe5c52b71a78c3dd4b','s:32:\"0b33776f56c0dffe5c52b71a78c3dd4b\";'),
(1975,'extensionScannerNotAffected','c33b16da42572b9806ded75f963920a7','s:32:\"c33b16da42572b9806ded75f963920a7\";'),
(1976,'extensionScannerNotAffected','96a54ac430bbab2fe25c603cb66a867f','s:32:\"96a54ac430bbab2fe25c603cb66a867f\";'),
(1977,'extensionScannerNotAffected','2f9b3b80341d776d9ad3b9d058542f05','s:32:\"2f9b3b80341d776d9ad3b9d058542f05\";'),
(1978,'extensionScannerNotAffected','bfda64bdc41110ac0acb521e86615e77','s:32:\"bfda64bdc41110ac0acb521e86615e77\";'),
(1979,'extensionScannerNotAffected','56902cf074ec99809e13cad1c1c0cbb2','s:32:\"56902cf074ec99809e13cad1c1c0cbb2\";'),
(1980,'extensionScannerNotAffected','6837c353aef861c3ac6f606739b3ddcc','s:32:\"6837c353aef861c3ac6f606739b3ddcc\";'),
(1981,'extensionScannerNotAffected','bee700e394d9007ba778c844642036f3','s:32:\"bee700e394d9007ba778c844642036f3\";'),
(1982,'extensionScannerNotAffected','14e2908d4969859fbfe5a6e49d765db7','s:32:\"14e2908d4969859fbfe5a6e49d765db7\";'),
(1983,'extensionScannerNotAffected','e6fcf9d1c9a9dc665e6932affb8d511c','s:32:\"e6fcf9d1c9a9dc665e6932affb8d511c\";'),
(1984,'extensionScannerNotAffected','1d37a84ca40f9e51f34ff6f6fdac2de8','s:32:\"1d37a84ca40f9e51f34ff6f6fdac2de8\";'),
(1985,'extensionScannerNotAffected','63fc98fb3dae1d448038c0728e5c831c','s:32:\"63fc98fb3dae1d448038c0728e5c831c\";'),
(1986,'extensionScannerNotAffected','fb767442225dde0917ca4bc81374c81e','s:32:\"fb767442225dde0917ca4bc81374c81e\";'),
(1987,'extensionScannerNotAffected','592df2e16ddeb1271cccc117cc7294da','s:32:\"592df2e16ddeb1271cccc117cc7294da\";'),
(1988,'extensionScannerNotAffected','070572597d5900b4e595c4638e2d6ca9','s:32:\"070572597d5900b4e595c4638e2d6ca9\";'),
(1989,'extensionScannerNotAffected','408aaa0b0b297def9510a000ca11e67e','s:32:\"408aaa0b0b297def9510a000ca11e67e\";'),
(1990,'extensionScannerNotAffected','0b598b5b27fa6c9747520984827ce15d','s:32:\"0b598b5b27fa6c9747520984827ce15d\";'),
(1991,'extensionScannerNotAffected','f2a5e29ebd6e77e8284bfd667552d72b','s:32:\"f2a5e29ebd6e77e8284bfd667552d72b\";'),
(1992,'extensionScannerNotAffected','fb57d229f20aa1fd5c6d3782aa2876bf','s:32:\"fb57d229f20aa1fd5c6d3782aa2876bf\";'),
(1993,'extensionScannerNotAffected','1acdeca153a31c73b609be55ff1ac429','s:32:\"1acdeca153a31c73b609be55ff1ac429\";'),
(1994,'extensionScannerNotAffected','b212dd503d7e271942ab72f2c5542d1f','s:32:\"b212dd503d7e271942ab72f2c5542d1f\";'),
(1995,'extensionScannerNotAffected','6767c02d78ce379e858132e8d139869b','s:32:\"6767c02d78ce379e858132e8d139869b\";'),
(1996,'extensionScannerNotAffected','ef020968202a77309121be978c7c0292','s:32:\"ef020968202a77309121be978c7c0292\";'),
(1997,'extensionScannerNotAffected','3aa3d709385b55f13667c6dafb43d2ac','s:32:\"3aa3d709385b55f13667c6dafb43d2ac\";'),
(1998,'extensionScannerNotAffected','f5c3440870c206d74dc1791022d2cf50','s:32:\"f5c3440870c206d74dc1791022d2cf50\";'),
(1999,'extensionScannerNotAffected','51b3ed169a236061c892468f96536a04','s:32:\"51b3ed169a236061c892468f96536a04\";'),
(2000,'extensionScannerNotAffected','af0a23a44bb5bb32def66fdc7ac37ff6','s:32:\"af0a23a44bb5bb32def66fdc7ac37ff6\";'),
(2001,'extensionScannerNotAffected','4e273c76d177075b32a1de4e575b36fe','s:32:\"4e273c76d177075b32a1de4e575b36fe\";'),
(2002,'extensionScannerNotAffected','d08fec9ae34ee0ad0cf1a0f730be6158','s:32:\"d08fec9ae34ee0ad0cf1a0f730be6158\";'),
(2003,'extensionScannerNotAffected','5627c1c2616ced5a6079f10125b6b957','s:32:\"5627c1c2616ced5a6079f10125b6b957\";'),
(2004,'extensionScannerNotAffected','b1c59bf2973c28b6b79fb9484dbd655c','s:32:\"b1c59bf2973c28b6b79fb9484dbd655c\";'),
(2005,'extensionScannerNotAffected','285cde81518a89b7e19c8da61cdc7eb3','s:32:\"285cde81518a89b7e19c8da61cdc7eb3\";'),
(2006,'extensionScannerNotAffected','058c2cd497d04f04ecca5405d592732e','s:32:\"058c2cd497d04f04ecca5405d592732e\";'),
(2007,'extensionScannerNotAffected','ce88a0b5902c3d390c9435df759b141e','s:32:\"ce88a0b5902c3d390c9435df759b141e\";'),
(2008,'extensionScannerNotAffected','7287f0c0c453f2270a8cc6fe7a699d66','s:32:\"7287f0c0c453f2270a8cc6fe7a699d66\";'),
(2009,'extensionScannerNotAffected','456afe54ec4ec13fd6e01a633c5a2f87','s:32:\"456afe54ec4ec13fd6e01a633c5a2f87\";'),
(2010,'extensionScannerNotAffected','de3328553ef2b98b39b02ea6e7dd3eb1','s:32:\"de3328553ef2b98b39b02ea6e7dd3eb1\";'),
(2011,'extensionScannerNotAffected','9e6bb703ab0a4982c845ddc31ecf90bb','s:32:\"9e6bb703ab0a4982c845ddc31ecf90bb\";'),
(2012,'extensionScannerNotAffected','6f44d7cac7278bf07b397868b0df15ff','s:32:\"6f44d7cac7278bf07b397868b0df15ff\";'),
(2013,'extensionScannerNotAffected','b851ac52bbc8927e75dff314ed405e93','s:32:\"b851ac52bbc8927e75dff314ed405e93\";'),
(2014,'extensionScannerNotAffected','6450e345665c955597e281849e0c7783','s:32:\"6450e345665c955597e281849e0c7783\";'),
(2015,'extensionScannerNotAffected','569e0d056c3aaeff79f187703889951c','s:32:\"569e0d056c3aaeff79f187703889951c\";'),
(2016,'extensionScannerNotAffected','4915d856ea15cf4b767e3acdbcefede3','s:32:\"4915d856ea15cf4b767e3acdbcefede3\";'),
(2017,'extensionScannerNotAffected','5aa53e24af63f32576a6e1d63f15bde9','s:32:\"5aa53e24af63f32576a6e1d63f15bde9\";'),
(2018,'extensionScannerNotAffected','2f258818426852044301138c6f46179a','s:32:\"2f258818426852044301138c6f46179a\";'),
(2019,'extensionScannerNotAffected','f48e0ba5207c5324970154a75d29b1c9','s:32:\"f48e0ba5207c5324970154a75d29b1c9\";'),
(2020,'extensionScannerNotAffected','58af194aeae79e057fce90e8c98f54a6','s:32:\"58af194aeae79e057fce90e8c98f54a6\";'),
(2021,'extensionScannerNotAffected','0ad4491f83e9941adaab117313616a2f','s:32:\"0ad4491f83e9941adaab117313616a2f\";'),
(2022,'extensionScannerNotAffected','7557914e0b9b51e5208a72228a1e965b','s:32:\"7557914e0b9b51e5208a72228a1e965b\";'),
(2023,'extensionScannerNotAffected','b5f4a07dce885bf1b0298fa009f3361c','s:32:\"b5f4a07dce885bf1b0298fa009f3361c\";'),
(2024,'extensionScannerNotAffected','ddf516f2f3a89ae88361b977c33a975d','s:32:\"ddf516f2f3a89ae88361b977c33a975d\";'),
(2025,'extensionScannerNotAffected','227579bb5f3c219173b1d51c954922c6','s:32:\"227579bb5f3c219173b1d51c954922c6\";'),
(2026,'extensionScannerNotAffected','216570b14c2fff9cfc3ee94e1eb24f2e','s:32:\"216570b14c2fff9cfc3ee94e1eb24f2e\";'),
(2027,'extensionScannerNotAffected','fe2f9a9b0c37d895c46df7d51ef09181','s:32:\"fe2f9a9b0c37d895c46df7d51ef09181\";'),
(2028,'extensionScannerNotAffected','1a92cc3b5831210486ea03c430f56d88','s:32:\"1a92cc3b5831210486ea03c430f56d88\";'),
(2029,'extensionScannerNotAffected','1208fe4faf8d7c79a35062a09b7f2eae','s:32:\"1208fe4faf8d7c79a35062a09b7f2eae\";'),
(2030,'extensionScannerNotAffected','59fef1c2b40d2d8350c39ad06e156ea9','s:32:\"59fef1c2b40d2d8350c39ad06e156ea9\";'),
(2031,'extensionScannerNotAffected','a31b514709041e97f29586eb5079a903','s:32:\"a31b514709041e97f29586eb5079a903\";'),
(2032,'extensionScannerNotAffected','a1806357ca558948209b36f5d593b142','s:32:\"a1806357ca558948209b36f5d593b142\";'),
(2033,'extensionScannerNotAffected','cd44481dd7e0a393eced3f07903a4fa4','s:32:\"cd44481dd7e0a393eced3f07903a4fa4\";'),
(2034,'extensionScannerNotAffected','422f8fe2ea2521e2f37d1fb860e541a3','s:32:\"422f8fe2ea2521e2f37d1fb860e541a3\";'),
(2035,'extensionScannerNotAffected','5afce444e60d42897f6ecb0fce69e1d9','s:32:\"5afce444e60d42897f6ecb0fce69e1d9\";'),
(2036,'extensionScannerNotAffected','b2a3f6cea1908e52d895da466077ab2f','s:32:\"b2a3f6cea1908e52d895da466077ab2f\";'),
(2037,'extensionScannerNotAffected','8b64bb4c9ac34650e95550e6551f8cb6','s:32:\"8b64bb4c9ac34650e95550e6551f8cb6\";'),
(2038,'extensionScannerNotAffected','466f48497d7e45ab4bb32986afbaf866','s:32:\"466f48497d7e45ab4bb32986afbaf866\";'),
(2039,'extensionScannerNotAffected','c00f4fd03a4d1d0756b345f780c80ab2','s:32:\"c00f4fd03a4d1d0756b345f780c80ab2\";'),
(2040,'extensionScannerNotAffected','e1ed00caa3aa2ff7009d058eec51d2af','s:32:\"e1ed00caa3aa2ff7009d058eec51d2af\";'),
(2041,'extensionScannerNotAffected','64d5b0af961deb88f232def01741b2a7','s:32:\"64d5b0af961deb88f232def01741b2a7\";'),
(2042,'extensionScannerNotAffected','a6bcd0bf9b7536707d0b4c400f158700','s:32:\"a6bcd0bf9b7536707d0b4c400f158700\";'),
(2043,'extensionScannerNotAffected','26b568c4108fe855aa4963f405948b50','s:32:\"26b568c4108fe855aa4963f405948b50\";'),
(2044,'extensionScannerNotAffected','7b90305a803d3e08093e2dff4c7ecaca','s:32:\"7b90305a803d3e08093e2dff4c7ecaca\";'),
(2045,'extensionScannerNotAffected','e800b0ba43c6f890ae6735246ea61fa5','s:32:\"e800b0ba43c6f890ae6735246ea61fa5\";'),
(2046,'extensionScannerNotAffected','046423736bdbf918b41b87a61940c5b8','s:32:\"046423736bdbf918b41b87a61940c5b8\";'),
(2047,'extensionScannerNotAffected','8bc5ad0d51d7ac49f3b3aa30cd8af355','s:32:\"8bc5ad0d51d7ac49f3b3aa30cd8af355\";'),
(2048,'extensionScannerNotAffected','6989bc9c54f1489e5fbd304bfb85fe7b','s:32:\"6989bc9c54f1489e5fbd304bfb85fe7b\";'),
(2049,'extensionScannerNotAffected','9ca0f82713338bc06bef76cb58fa16f1','s:32:\"9ca0f82713338bc06bef76cb58fa16f1\";'),
(2050,'extensionScannerNotAffected','435b38b6d79a7d2633e668fde2650f43','s:32:\"435b38b6d79a7d2633e668fde2650f43\";'),
(2051,'extensionScannerNotAffected','235fb3d4f7115a40ee7e8842e0ed9a35','s:32:\"235fb3d4f7115a40ee7e8842e0ed9a35\";'),
(2052,'extensionScannerNotAffected','9938bb18555f2cc53cb922a0d5141d4c','s:32:\"9938bb18555f2cc53cb922a0d5141d4c\";'),
(2053,'extensionScannerNotAffected','cf04c008d0fa3079bf98ef594713f5a8','s:32:\"cf04c008d0fa3079bf98ef594713f5a8\";'),
(2054,'extensionScannerNotAffected','8a32943483d5bfa2b6bed51216fa5451','s:32:\"8a32943483d5bfa2b6bed51216fa5451\";'),
(2055,'extensionScannerNotAffected','511d2684aa7cac72af1b5e2b7e9de255','s:32:\"511d2684aa7cac72af1b5e2b7e9de255\";'),
(2056,'extensionScannerNotAffected','3c8a35634f63a3811b2b33fbe34a9ce1','s:32:\"3c8a35634f63a3811b2b33fbe34a9ce1\";'),
(2057,'extensionScannerNotAffected','09b9e1995fbb1faeec102698748afd37','s:32:\"09b9e1995fbb1faeec102698748afd37\";'),
(2058,'extensionScannerNotAffected','05d8826fd8e31fa4ad2e4409a65f3c5a','s:32:\"05d8826fd8e31fa4ad2e4409a65f3c5a\";'),
(2059,'extensionScannerNotAffected','a267e0d6dc4a0385543f7a8b8a2a8ebb','s:32:\"a267e0d6dc4a0385543f7a8b8a2a8ebb\";'),
(2060,'extensionScannerNotAffected','550131c2f986f14233bee328f8575fde','s:32:\"550131c2f986f14233bee328f8575fde\";'),
(2061,'extensionScannerNotAffected','bb5096d59349243d9b93c5bb76ee3b99','s:32:\"bb5096d59349243d9b93c5bb76ee3b99\";'),
(2062,'extensionScannerNotAffected','17e39071a5767874c7fbd19b843d9619','s:32:\"17e39071a5767874c7fbd19b843d9619\";'),
(2063,'extensionScannerNotAffected','129bc81c107d3bbfa3c4c94a54e79a40','s:32:\"129bc81c107d3bbfa3c4c94a54e79a40\";'),
(2064,'extensionScannerNotAffected','713cfb33040b6ff60ef6d99704e7765c','s:32:\"713cfb33040b6ff60ef6d99704e7765c\";'),
(2065,'extensionScannerNotAffected','95b6a0afe2747053be7cab0c248db0e2','s:32:\"95b6a0afe2747053be7cab0c248db0e2\";'),
(2066,'extensionScannerNotAffected','c987477c498f08df3ca1d5e058beff08','s:32:\"c987477c498f08df3ca1d5e058beff08\";'),
(2067,'extensionScannerNotAffected','0b4ad84bc1e75dd53de367929b6c92d9','s:32:\"0b4ad84bc1e75dd53de367929b6c92d9\";'),
(2068,'extensionScannerNotAffected','6f722b29b499fdd7cd1a82ea2eb717ae','s:32:\"6f722b29b499fdd7cd1a82ea2eb717ae\";'),
(2069,'extensionScannerNotAffected','c6ba8120004a8e0af898f96b4e97a9fc','s:32:\"c6ba8120004a8e0af898f96b4e97a9fc\";'),
(2070,'extensionScannerNotAffected','e8429333673212f64f32c76b416da6e0','s:32:\"e8429333673212f64f32c76b416da6e0\";'),
(2071,'extensionScannerNotAffected','169498d3585f4ee33f69ca2b28164072','s:32:\"169498d3585f4ee33f69ca2b28164072\";'),
(2072,'extensionScannerNotAffected','96a7b8ab4f0b1564454a6e828390f508','s:32:\"96a7b8ab4f0b1564454a6e828390f508\";'),
(2073,'extensionScannerNotAffected','f0dd86e41e8d55eec356526ad020da8a','s:32:\"f0dd86e41e8d55eec356526ad020da8a\";'),
(2074,'extensionScannerNotAffected','e0abb58dfb365c02f3f6e2ffaf581c12','s:32:\"e0abb58dfb365c02f3f6e2ffaf581c12\";'),
(2075,'extensionScannerNotAffected','76e1a770e400d8d1220f2837c260e612','s:32:\"76e1a770e400d8d1220f2837c260e612\";'),
(2076,'extensionScannerNotAffected','25dad0a2358f701cf82922902bddd7f9','s:32:\"25dad0a2358f701cf82922902bddd7f9\";'),
(2077,'extensionScannerNotAffected','d83b9f62e3292a7faa27e098be40eff5','s:32:\"d83b9f62e3292a7faa27e098be40eff5\";'),
(2078,'extensionScannerNotAffected','cb152522032f194f256bb8d6368d0dc1','s:32:\"cb152522032f194f256bb8d6368d0dc1\";'),
(2079,'extensionScannerNotAffected','e1943b26f0ee032eccbd8c5cec70e6f0','s:32:\"e1943b26f0ee032eccbd8c5cec70e6f0\";'),
(2080,'extensionScannerNotAffected','5e52243143430b34d208001e6011a391','s:32:\"5e52243143430b34d208001e6011a391\";'),
(2081,'extensionScannerNotAffected','bfa9546298181bf8f962615b6b035fb8','s:32:\"bfa9546298181bf8f962615b6b035fb8\";'),
(2082,'extensionScannerNotAffected','f6cf4cd16f9220568666d1ffa8105afe','s:32:\"f6cf4cd16f9220568666d1ffa8105afe\";'),
(2083,'extensionScannerNotAffected','417979edfdf1d45a66d7139520f70782','s:32:\"417979edfdf1d45a66d7139520f70782\";'),
(2084,'extensionScannerNotAffected','0b7bbd7f8d3979379e9e122e5b67fbf7','s:32:\"0b7bbd7f8d3979379e9e122e5b67fbf7\";'),
(2085,'extensionScannerNotAffected','1ccc68572b84b1f3581e46779b0cebd8','s:32:\"1ccc68572b84b1f3581e46779b0cebd8\";'),
(2086,'extensionScannerNotAffected','283dbddb51bcd984372398e7307e6c83','s:32:\"283dbddb51bcd984372398e7307e6c83\";'),
(2087,'extensionScannerNotAffected','2788c2f447675b0eeca29f1f15a2c6d4','s:32:\"2788c2f447675b0eeca29f1f15a2c6d4\";'),
(2088,'extensionScannerNotAffected','bf75aef4c22551bcf024a77b0a5f5fd7','s:32:\"bf75aef4c22551bcf024a77b0a5f5fd7\";'),
(2089,'extensionScannerNotAffected','3edb33dc9fb3f10c4ee1516d69d22f1a','s:32:\"3edb33dc9fb3f10c4ee1516d69d22f1a\";'),
(2090,'extensionScannerNotAffected','927633a7b3129f06fa506b0d458cd461','s:32:\"927633a7b3129f06fa506b0d458cd461\";'),
(2091,'extensionScannerNotAffected','e6abadec7619cc7ccfc06ca29505d1e4','s:32:\"e6abadec7619cc7ccfc06ca29505d1e4\";'),
(2092,'extensionScannerNotAffected','4ce1939046edae0765089bf05315888a','s:32:\"4ce1939046edae0765089bf05315888a\";'),
(2093,'extensionScannerNotAffected','1d67b576365955875136043bf6bee959','s:32:\"1d67b576365955875136043bf6bee959\";'),
(2094,'extensionScannerNotAffected','9b96dae8949ecb3893cbca73e0ab5617','s:32:\"9b96dae8949ecb3893cbca73e0ab5617\";'),
(2095,'extensionScannerNotAffected','97ce31778e6391ef7a447f72b2c198a1','s:32:\"97ce31778e6391ef7a447f72b2c198a1\";'),
(2096,'extensionScannerNotAffected','9bbe46e9f29b9fd928ca0d0f4a86aad9','s:32:\"9bbe46e9f29b9fd928ca0d0f4a86aad9\";'),
(2097,'extensionScannerNotAffected','29b27a1faa229d6dd9673d7cfb675f34','s:32:\"29b27a1faa229d6dd9673d7cfb675f34\";'),
(2098,'extensionScannerNotAffected','652a590e07c5655d4c008ee6af48811f','s:32:\"652a590e07c5655d4c008ee6af48811f\";'),
(2099,'extensionScannerNotAffected','d17e594c2b1f50c72cd8b62550aa1dcd','s:32:\"d17e594c2b1f50c72cd8b62550aa1dcd\";'),
(2100,'extensionScannerNotAffected','5b8e649cf57fa7bb2d7264559a190eb0','s:32:\"5b8e649cf57fa7bb2d7264559a190eb0\";'),
(2101,'extensionScannerNotAffected','fda4af81c962ae92f8d1673ab2b063fe','s:32:\"fda4af81c962ae92f8d1673ab2b063fe\";'),
(2102,'extensionScannerNotAffected','4ea3e98f23cd4a2f6baf717f83d3d3d3','s:32:\"4ea3e98f23cd4a2f6baf717f83d3d3d3\";'),
(2103,'extensionScannerNotAffected','6cbd3bcd01860a60e94788088ea5c6a6','s:32:\"6cbd3bcd01860a60e94788088ea5c6a6\";'),
(2104,'extensionScannerNotAffected','510efa94c0ee42f17d1f05ae810251dd','s:32:\"510efa94c0ee42f17d1f05ae810251dd\";'),
(2105,'extensionScannerNotAffected','bdf4e4a8423e8e80705e9eafcbec16e6','s:32:\"bdf4e4a8423e8e80705e9eafcbec16e6\";'),
(2106,'extensionScannerNotAffected','69bef04a629b5817cf16a08e3fda32b7','s:32:\"69bef04a629b5817cf16a08e3fda32b7\";'),
(2107,'extensionScannerNotAffected','63e57460e0bdefeffef0edbd28fa0acf','s:32:\"63e57460e0bdefeffef0edbd28fa0acf\";'),
(2108,'extensionScannerNotAffected','ce363e728964326b673d958567a829f7','s:32:\"ce363e728964326b673d958567a829f7\";'),
(2109,'extensionScannerNotAffected','9dc065b79a3e17c8c4ebe75a16db0079','s:32:\"9dc065b79a3e17c8c4ebe75a16db0079\";'),
(2110,'extensionScannerNotAffected','191e3ee8972e2cb93fc7122f83650e9b','s:32:\"191e3ee8972e2cb93fc7122f83650e9b\";'),
(2111,'extensionScannerNotAffected','b2fa6c9a867bec6bcefb002d22caa81d','s:32:\"b2fa6c9a867bec6bcefb002d22caa81d\";'),
(2112,'extensionScannerNotAffected','3b2bf7afff81e5d27fe73b7efaa53850','s:32:\"3b2bf7afff81e5d27fe73b7efaa53850\";'),
(2113,'extensionScannerNotAffected','dcb6c1625fa3f587a61ace48093f8513','s:32:\"dcb6c1625fa3f587a61ace48093f8513\";'),
(2114,'extensionScannerNotAffected','db7b14433498a1befb8c85c227714269','s:32:\"db7b14433498a1befb8c85c227714269\";');
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
  `title` varchar(255) NOT NULL DEFAULT '',
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
INSERT INTO `sys_template` VALUES
(1,1,1731068437,1628488695,1,0,0,0,0,256,NULL,0,0,0,0,0,'Viewer',1,3,'EXT:dlf/Configuration/TypoScript/Toolbox/,EXT:ddb_kitodo_zeitungsportal/Configuration/TypoScript','constant {\r\n  # id of configuration directory (Kitodo Konfiguration)\r\n  configPid = 2\r\n  # id of Viewer page\r\n  viewerPid = 4\r\n  # id of Solr Core\r\n  solrCore = 7\n  #page url on which viewer will be visible\r\n  #baseUrl = https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/\r\n  #baseUrl = https://viewer-dzp.deutsche-digitale-bibliothek.de/\r\n  baseUrl = https://ddev-ddb-zeitungsportal.ddev.site/\r\n  #baseUrl = https://dev-zpviewerdev.fiz-karlsruhe.de/\r\n  #baseUrl = http://ddb-p2-vmzpviewer01:8001/zp-viewer\r\n}','# dev\r\n#plugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record\r\n\r\n# master\r\n#plugin.tx_dlf_searchindocumenttool.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.documentIdUrlSchema = https://api-q1.deutsche-digitale-bibliothek.de/items/*id*/source/record\r\n\r\n','',0,0,0);
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
  `selected_categories` longtext DEFAULT NULL,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_documents`
--

LOCK TABLES `tx_dlf_documents` WRITE;
/*!40000 ALTER TABLE `tx_dlf_documents` DISABLE KEYS */;
INSERT INTO `tx_dlf_documents` VALUES
(1,2,1731069051,1723725151,0,0,0,0,0,'','','https://api.deutsche-digitale-bibliothek.de/items/72OLPWCWDFDG7AVAYDDVJGMYRMZWBHDR/source/record','st10137','','','','http://fes.imageware.de/fes/web/index.html?open=st10137','Sozialdemokrat Test','','','1930-06-12','Prag','https://library.fes.de/ddb/st10137/st10137_01_thumb.jpg',48,0,'10','10','','','','','',0,'10 137, 12.06.1930','1930-06-12',1,7,0,'METS'),
(2,2,1731068644,1730309640,0,0,0,0,0,'','','https://digital.slub-dresden.de/data/kitodo/SchDo_480520429-18891116/SchDo_480520429-18891116_anchor.xml','oai:de:slub-dresden:db:id-480520429','','','urn:nbn:de:bsz:14-db-id4805204290','http://digital.slub-dresden.de/id480520429','Sächsische Dorfzeitung','Sächsische Dorfzeitung','','','Dresden-Neustadt','',34,0,'','','','','','','',0,'Sächsische Dorfzeitung','Sächsische Dorfzeitung',1,7,0,'METS'),
(3,2,1730912582,1730309640,0,1,0,0,0,'','','https://digital.slub-dresden.de/data/kitodo/SchDo_480520429-18891116/SchDo_480520429-18891116_year.xml','oai:de:slub-dresden:db:id-480520429-1889','','','urn:nbn:de:bsz:14-db-id480520429-18897','http://digital.slub-dresden.de/id480520429-1889','','','','','','',1,2,'','','','','','','',0,'','1889',1,4,0,'METS'),
(4,2,1730912591,1730309640,0,1,0,0,0,'','','https://api.deutsche-digitale-bibliothek.de/items/WSGSC3P73OTKV2KDNUKAMYIZZW3BJ2T3/source/record','oai:de:slub-dresden:db:id-480520429-18891116','','','urn:nbn:de:bsz:14-db-id480520429-188911164','http://digital.slub-dresden.de/id480520429-18891116','','','','1889-11-16','Dresden','https://digital.slub-dresden.de/data/kitodo/SchDo_480520429-18891116/SchDo_480520429-18891116_tif/jpegs/00000001.tif.thumbnail.jpg',48,3,'16. November 1889','16. November 1889','http://creativecommons.org/publicdomain/mark/1.0/','','http://purl.org/coar/access_right/c_abf2/','','',0,'','',1,4,0,'METS'),
(5,2,1731068644,1731068644,0,0,0,0,0,'','','https://digital.slub-dresden.de/data/kitodo/SchDo_480520429-18891116/SchDo_480520429-18891116_year.xml','oai:de:slub-dresden:db:id-480520429-1889','','','urn:nbn:de:bsz:14-db-id480520429-18897','http://digital.slub-dresden.de/id480520429-1889','','','','','','',1,2,'','','','','','','',0,'','1889',1,7,0,'METS'),
(6,2,1731068644,1731068644,0,0,0,0,0,'','','https://api.deutsche-digitale-bibliothek.de/items/WSGSC3P73OTKV2KDNUKAMYIZZW3BJ2T3/source/record','oai:de:slub-dresden:db:id-480520429-18891116','','','urn:nbn:de:bsz:14-db-id480520429-188911164','http://digital.slub-dresden.de/id480520429-18891116','','','','1889-11-16','Dresden','https://digital.slub-dresden.de/data/kitodo/SchDo_480520429-18891116/SchDo_480520429-18891116_tif/jpegs/00000001.tif.thumbnail.jpg',48,5,'16. November 1889','16. November 1889','http://creativecommons.org/publicdomain/mark/1.0/','','http://purl.org/coar/access_right/c_abf2/','','',0,'','',1,7,0,'METS');
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
INSERT INTO `tx_dlf_formats` VALUES
(1,0,1628166052,1628166052,1,0,'MODS','mods','http://www.loc.gov/mods/v3','Kitodo\\Dlf\\Format\\Mods'),
(2,0,1628166052,1628166052,1,0,'TEIHDR','teiHeader','http://www.tei-c.org/ns/1.0','Kitodo\\Dlf\\Format\\TeiHeader'),
(3,0,1628166052,1628166052,1,0,'ALTO','alto','http://www.loc.gov/standards/alto/ns-v2#','Kitodo\\Dlf\\Format\\Alto'),
(4,0,1628166052,1628166052,1,0,'IIIF1','IIIF1','http://www.shared-canvas.org/ns/context.json',''),
(5,0,1628166052,1628166052,1,0,'IIIF2','IIIF2','http://iiif.io/api/presentation/2/context.json',''),
(6,0,1628166052,1628166052,1,0,'IIIF3','IIIF3','http://iiif.io/api/presentation/3/context.json','');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_libraries`
--

LOCK TABLES `tx_dlf_libraries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_libraries` DISABLE KEYS */;
INSERT INTO `tx_dlf_libraries` VALUES
(1,2,1723725151,1723725151,0,0,0,0,'',NULL,'default','default','','','0','','','','','','');
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
INSERT INTO `tx_dlf_metadata` VALUES
(1,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1280,NULL,'Rights Information','rights_info',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(2,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1152,NULL,'Out Of Print Works','out_of_print',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(3,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1088,NULL,'Restrictions on Access','restrictions',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(4,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1056,NULL,'Terms of Use','terms',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(5,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1040,NULL,'License','license',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(6,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1032,NULL,'Coordinates','coordinates',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(7,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1028,NULL,'Kitodo Process Number','prod_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(8,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1026,NULL,'OAI Identifier','record_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(9,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1025,NULL,'Union Catalog ID','union_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(10,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,1024,NULL,'OPAC Identifier','opac_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(11,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,768,NULL,'URN','urn',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(12,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,640,NULL,'PURL','purl',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(13,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,576,NULL,'Owner','owner',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(14,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,544,NULL,'Collection(s)','collection',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,0,1,1,0,1,0,0,0),
(15,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,528,NULL,'Language','language',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(16,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,520,NULL,'Year of Publication','year',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,1,1,0,0),
(17,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,516,NULL,'Place of Publication','place',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,1,1,1,1,1,1,0,0),
(18,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,514,NULL,'Author','author',2,'','key.wrap = <dt class=\"tx-dlf-metadata-author\">|</dt>\nvalue.required = 1\nvalue.split.token.char = 31\nvalue.split.cObjNum = 1\nvalue.split.1.1 = CASE\nvalue.split.1.1.key.data = register:SPLIT_COUNT\nvalue.split.1.1.0 = LOAD_REGISTER\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\nvalue.split.1.1.1 = LOAD_REGISTER\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\nvalue.postCObject = TEXT\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-author\">|</dd>',1,1,1,2,1,1,1,1,0),
(19,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,513,NULL,'Volume','volume',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,0,1,0,0),
(20,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,512,NULL,'Title','title',3,'','key.wrap = <dt class=\"tx-dlf-metadata-title\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-title\">|</dd>',1,1,1,2,1,0,1,1,0),
(21,2,1628486790,1628486790,1,0,0,0,'{\"label\":null,\"index_name\":null,\"format\":null,\"default_value\":null,\"wrap\":null,\"index_tokenized\":null,\"index_stored\":null,\"index_indexed\":null,\"index_boost\":null,\"is_sortable\":null,\"is_facet\":null,\"is_listed\":null,\"index_autocomplete\":null,\"sys_language_uid\":null}',0,256,NULL,'Type','type',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,1,1,0,0),
(22,2,1718807170,1718807170,0,0,1,23,'',0,0,NULL,'Date','date',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(23,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Datum','date',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,0,1,0,0),
(24,2,1718807170,1718807170,0,0,1,25,'',0,0,NULL,'Description','description',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(25,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Beschreibung','description',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(26,2,1718807170,1718807170,0,0,1,27,'',0,0,NULL,'Missing translation for metadata.identifier','identifier',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(27,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.identifier','identifier',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(28,2,1718807170,1718807170,0,0,1,29,'',0,0,NULL,'Missing translation for metadata.object_name','object_name',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(29,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_name','object_name',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(30,2,1718807170,1718807170,0,0,1,31,'',0,0,NULL,'Missing translation for metadata.object_alternative_names','object_alternative_names',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(31,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_alternative_names','object_alternative_names',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(32,2,1718807170,1718807170,0,0,1,33,'',0,0,NULL,'Missing translation for metadata.object_location','object_location',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(33,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.object_location','object_location',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(34,2,1718807170,1718807170,0,0,1,35,'',0,0,NULL,'Missing translation for metadata.geonames','geonames',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(35,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.geonames','geonames',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(36,2,1718807170,1718807170,0,0,1,37,'',0,0,NULL,'Missing translation for metadata.wikidata','wikidata',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(37,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.wikidata','wikidata',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(38,2,1718807170,1718807170,0,0,1,39,'',0,0,NULL,'Missing translation for metadata.wikipedia','wikipedia',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,1,0,0,0,0,0),
(39,2,1718807170,1718807170,0,0,0,0,'',0,0,NULL,'Missing translation for metadata.wikipedia','wikipedia',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0);
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
  `l10n_state` text DEFAULT NULL,
  `subentries` int(11) NOT NULL DEFAULT 0,
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
INSERT INTO `tx_dlf_metadataformat` VALUES
(1,2,1628486790,1628486790,1,0,1,1,'./mods:accessCondition[@type=\"info\"]','',0,NULL,0),
(2,2,1628486790,1628486790,1,0,2,1,'./mods:accessCondition[@type=\"out of print work\"]','',0,NULL,0),
(3,2,1628486790,1628486790,1,0,3,1,'./mods:accessCondition[@type=\"restriction on access\"]/@xlink:href','',0,NULL,0),
(4,2,1628486790,1628486790,1,0,4,1,'./mods:accessCondition[@type=\"local terms of use\"]/@xlink:href','',0,NULL,0),
(5,2,1628486790,1628486790,1,0,5,1,'./mods:accessCondition[@type=\"use and reproduction\"]/@xlink:href','',0,NULL,0),
(6,2,1628486790,1628486790,1,0,6,1,'./mods:subject/mods:cartographics/mods:coordinates','',0,NULL,0),
(7,2,1628486790,1628486790,1,0,7,5,'$.metadata.[?(@.label==\'Kitodo\')].value','',0,NULL,0),
(8,2,1628486790,1628486790,1,0,7,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"kitodo\"]','',0,NULL,0),
(9,2,1628486790,1628486790,1,0,7,1,'./mods:identifier[@type=\"kitodo\"]','',0,NULL,0),
(10,2,1628486790,1628486790,1,0,8,5,'$[\'@id\']','',0,NULL,0),
(11,2,1628486790,1628486790,1,0,8,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"recordIdentifier\"]','',0,NULL,0),
(12,2,1628486790,1628486790,1,0,8,1,'./mods:recordInfo/mods:recordIdentifier','',0,NULL,0),
(13,2,1628486790,1628486790,1,0,9,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"mmid\"]','',0,NULL,0),
(14,2,1628486790,1628486790,1,0,9,1,'./mods:identifier[@type=\"ppn\"]','',0,NULL,0),
(15,2,1628486790,1628486790,1,0,10,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"opac\"]','',0,NULL,0),
(16,2,1628486790,1628486790,1,0,10,1,'./mods:identifier[@type=\"opac\"]','',0,NULL,0),
(17,2,1628486790,1628486790,1,0,11,5,'$.metadata.[?(@.label==\'URN\')].value','',0,NULL,0),
(18,2,1628486790,1628486790,1,0,11,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"urn\"]','',0,NULL,0),
(19,2,1628486790,1628486790,1,0,11,1,'./mods:identifier[@type=\"urn\"]','',0,NULL,0),
(20,2,1628486790,1628486790,1,0,12,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"purl\"]','',0,NULL,0),
(21,2,1628486790,1628486790,1,0,12,1,'./mods:identifier[@type=\"purl\"]','',0,NULL,0),
(22,2,1628486790,1628486790,1,0,13,5,'$.metadata.[?(@.label==\'Owner\')].value','',0,NULL,0),
(23,2,1628486790,1628486790,1,0,13,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:publisher','',0,NULL,0),
(24,2,1628486790,1628486790,1,0,13,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0,NULL,0),
(25,2,1628486790,1628486790,1,0,14,5,'$.metadata.[?(@.label==\'Collection\')].value','',0,NULL,0),
(26,2,1628486790,1628486790,1,0,14,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:collection','',0,NULL,0),
(27,2,1628486790,1628486790,1,0,14,1,'./mods:classification','',0,NULL,0),
(28,2,1628486790,1628486790,1,0,15,1,'./mods:language/mods:languageTerm','',0,NULL,0),
(29,2,1628486790,1628486790,1,0,16,5,'$.metadata.[?(@.label==\'Date of publication\')].value','',0,NULL,0),
(30,2,1628486790,1628486790,1,0,16,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate/@when',0,NULL,0),
(31,2,1628486790,1628486790,1,0,17,5,'$.metadata.[?(@.label==\'Place of publication\')].value','',0,NULL,0),
(32,2,1628486790,1628486790,1,0,17,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origPlace','',0,NULL,0),
(33,2,1628486790,1628486790,1,0,18,5,'$.metadata.[?(@.label==\'Author\')].value','',0,NULL,0),
(34,2,1628486790,1628486790,1,0,18,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:name','',0,NULL,0),
(35,2,1628486790,1628486790,1,0,19,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,NULL,0),
(36,2,1628486790,1628486790,1,0,20,5,'$[label]','',0,NULL,0),
(37,2,1628486790,1628486790,1,0,20,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:note[@type=\"caption\"]','',0,NULL,0),
(38,2,1628486790,1628486790,1,0,20,1,'concat(./mods:titleInfo/mods:nonSort,\" \",./mods:titleInfo/mods:title)','./mods:titleInfo/mods:title',0,NULL,0),
(39,2,1628486790,1628486790,1,0,21,5,'$.metadata.[?(@.label==\'Manifest Type\')].value','',0,NULL,0),
(40,2,1718807170,1718807170,0,0,23,1,'./mods:originInfo/*[@encoding=\"iso8601\" or @encoding=\"w3cdtf\"][@keyDate=\"yes\"]','',0,NULL,0),
(41,2,1718807170,1718807170,0,0,25,1,'./mods:recordInfo/mods:recordInfoNote','',0,NULL,0),
(42,2,1718807170,1718807170,0,0,27,1,'./mods:identifier','',0,NULL,0),
(43,2,1718807170,1718807170,0,0,29,1,'./mods:relatedItem/mods:titleInfo[not(@displayLabel=\"alternative\")]/mods:title','',0,NULL,0),
(44,2,1718807170,1718807170,0,0,31,1,'./mods:relatedItem/mods:titleInfo[@displayLabel=\"alternative\"]/mods:title','',0,NULL,0),
(45,2,1718807170,1718807170,0,0,33,1,'./mods:relatedItem/mods:location/mods:physicalLocation','',0,NULL,0),
(46,2,1718807170,1718807170,0,0,35,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"geonames\"]','',0,NULL,0),
(47,2,1718807170,1718807170,0,0,37,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikidata\"]','',0,NULL,0),
(48,2,1718807170,1718807170,0,0,39,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikipedia\"]','',0,NULL,0);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadatasubentries`
--

DROP TABLE IF EXISTS `tx_dlf_metadatasubentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadatasubentries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `index_name` varchar(255) NOT NULL DEFAULT '',
  `xpath` varchar(1024) NOT NULL DEFAULT '',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `wrap` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_id` (`parent_id`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadatasubentries`
--

LOCK TABLES `tx_dlf_metadatasubentries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadatasubentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_metadatasubentries` ENABLE KEYS */;
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
  KEY `local_foreign` (`uid_local`,`uid_foreign`,`ident`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_solrcores`
--

LOCK TABLES `tx_dlf_solrcores` WRITE;
/*!40000 ALTER TABLE `tx_dlf_solrcores` DISABLE KEYS */;
INSERT INTO `tx_dlf_solrcores` VALUES
(1,2,1723559880,0,0,1,'newspaper-issues','newspaper-issues'),
(3,2,1723645677,1723639805,3,1,'dlfCore0_shard1_replica_n1',''),
(4,2,1731066790,1723712510,0,1,'dlfCore0','dlfCore0'),
(5,0,1730902744,1730901947,3,1,'dlfCore0',''),
(6,0,1730902846,1730902791,3,1,'dlfCore0','dlfCore1'),
(7,2,1731067553,1731067553,0,0,'Solr Kern (PID 2)','dlfCore0');
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
INSERT INTO `tx_dlf_structures` VALUES
(1,2,1651569223,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null,\"hidden\":null,\"status\":null}',0,NULL,1,'Jahr','year','',0,0),
(2,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Volume','volume','',0,0),
(3,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Verse','verse','',0,0),
(4,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Titlepage','title_page','',0,0),
(5,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Text','text','',0,0),
(6,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Table','table','',0,0),
(7,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Subinventory','subinventory','',0,0),
(8,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Study','study','',0,0),
(9,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Stamp','stamp','',0,0),
(10,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Spine','spine','',0,0),
(11,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Section','section','',0,0),
(12,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Seal','seal','',0,0),
(13,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Scheme','scheme','',0,0),
(14,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Research Paper','research_paper','',0,0),
(15,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Report','report','',0,0),
(16,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Register','register','',0,0),
(17,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Provenance','provenance','',0,0),
(18,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Proceeding','proceeding','',0,0),
(19,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Privileges','privileges','',0,0),
(20,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Printers Mark','printers_mark','',0,0),
(21,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Printed Archives','printed_archives','',0,0),
(22,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Preprint','preprint','',0,0),
(23,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Preface','preface','',0,0),
(24,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Poster','poster','',0,0),
(25,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Plan','plan','',0,0),
(26,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Photograph','photograph','',0,0),
(27,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Periodical','periodical','',0,0),
(28,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Paste Down','paste_down','',0,0),
(29,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Paper','paper','',0,0),
(30,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Page','page','',0,0),
(31,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Ornament','ornament','',0,0),
(32,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Official Notification','official_notification','',0,0),
(33,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Note','note','',0,0),
(34,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Newspaper','newspaper','',0,0),
(35,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Musical Notation','musical_notation','',0,0),
(36,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Multivolume Work','multivolume_work','',0,0),
(37,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Month','month','',0,0),
(38,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Monograph','monograph','',0,0),
(39,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Map','map','',0,0),
(40,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Manuscript','manuscript','',0,0),
(41,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Master Thesis','master_thesis','',0,0),
(42,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Magister Thesis','magister_thesis','',0,0),
(43,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Letter','letter','',0,0),
(44,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Lecture','lecture','',0,0),
(45,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Leaflet','leaflet','',0,0),
(46,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Land Register','land_register','',0,0),
(47,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Judgement','judgement','',0,0),
(48,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Issue','issue','',0,0),
(49,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Inventory','inventory','',0,0),
(50,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Initial Decoration','initial_decoration','',0,0),
(51,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Index','index','',0,0),
(52,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Imprint','imprint','',0,0),
(53,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Image','image','',0,0),
(54,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Illustration','illustration','',0,0),
(55,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Habilitation Thesis','habilitation_thesis','',0,0),
(56,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Ground Plan','ground_plan','',0,0),
(57,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Fragment','fragment','',0,0),
(58,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Folder','folder','',0,0),
(59,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'File','file','',0,0),
(60,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Fascicle','fascicle','',0,0),
(61,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Ephemera','ephemera','',0,0),
(62,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Entry','entry','',0,0),
(63,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Engraved Titlepage','engraved_titlepage','',0,0),
(64,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Endsheet','endsheet','',0,0),
(65,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Edge','edge','',0,0),
(66,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Dossier','dossier','',0,0),
(67,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Document','document','',0,0),
(68,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Doctoral Thesis','doctoral_thesis','',0,0),
(69,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Diploma Thesis','diploma_thesis','',0,0),
(70,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Dedication','dedication','',0,0),
(71,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Day','day','',0,0),
(72,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Back Cover','cover_back','',0,0),
(73,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Front Cover','cover_front','',0,0),
(74,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Cover','cover','',0,0),
(75,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Corrigenda','corrigenda','',0,0),
(76,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Table of Contents','contents','',0,0),
(77,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Contained Work','contained_work','',0,0),
(78,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Colophon','colophon','',0,0),
(79,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Collation','collation','',0,0),
(80,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Chapter','chapter','',0,0),
(81,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Cartulary','cartulary','',0,0),
(82,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Bookplate','bookplate','',0,0),
(83,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Binding','binding','',0,0),
(84,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Bachelor Thesis','bachelor_thesis','',0,0),
(85,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Atlas','atlas','',0,0),
(86,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Article','article','',0,0),
(87,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Annotation','annotation','',0,0),
(88,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Album','album','',0,0),
(89,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Address','address','',0,0),
(90,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,0,'Additional','additional','',0,0),
(91,2,1628486788,1628486788,1,0,0,0,'{\"toplevel\":null,\"label\":null,\"index_name\":null,\"oai_name\":null,\"thumbnail\":null,\"sys_language_uid\":null}',0,NULL,1,'Act','act','',0,0),
(93,2,1718807168,1718807168,0,0,0,0,'',0,NULL,0,'Abbildung','figure','',0,0),
(94,2,1718807168,1718807168,0,0,1,93,'',0,NULL,0,'Figure','figure','',0,0);
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
  `repository` int(11) NOT NULL DEFAULT 1,
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
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`)
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
