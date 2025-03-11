
-- Dump of TYPO3 Connection "Default"
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
(3,0,1736339910,1629184393,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$Y2dOZ0hnNUIvUnlxUjlVRg$hwsrFkUiggAx7NXrnTqHQKeMaJZaRtPFVmjiN2w0A44',1,'','default','',NULL,0,'',NULL,'','a:27:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:15:{s:12:\"system_dbint\";a:5:{s:8:\"function\";s:8:\"refindex\";s:8:\"language\";N;s:19:\"constant_editor_cat\";N;s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}s:13:\"system_config\";a:4:{s:4:\"tree\";s:3:\"tca\";s:11:\"regexSearch\";b:0;s:13:\"node_confVars\";a:6:{s:10:\"EXTENSIONS\";i:1;s:22:\"EXTENSIONS.dlf.general\";i:1;s:20:\"EXTENSIONS.dlf.files\";i:1;s:19:\"EXTENSIONS.dlf.solr\";i:1;s:7:\"EXTCONF\";i:1;s:3:\"EXT\";i:1;}s:8:\"node_tca\";a:6:{s:17:\"sys_language.ctrl\";i:1;s:20:\"sys_language.columns\";i:1;s:20:\"tx_dlf_metadata.ctrl\";i:1;s:10:\"tt_content\";i:1;s:15:\"tx_dlf_metadata\";i:1;s:34:\"tx_dlf_metadata.ctrl.enablecolumns\";i:1;}}s:10:\"web_layout\";a:3:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";s:19:\"constant_editor_cat\";N;}s:8:\"web_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:6:\"web_ts\";a:8:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:8:\"language\";N;s:19:\"constant_editor_cat\";s:32:\"plugin.ddb_kitodo_zeitungsportal\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_const\";a:5:{s:14:\"styles.content\";i:1;s:28:\"plugin.tx_felogin_login.view\";i:1;s:8:\"constant\";i:1;s:9:\"constants\";i:1;s:6:\"plugin\";i:1;}s:25:\"tsbrowser_depthKeys_setup\";a:17:{s:43:\"plugin.tx_dlf_searchindocumenttool.settings\";i:1;s:36:\"plugin.tx_dlf.view.templateRootPaths\";i:1;s:22:\"plugin.tx_dlf.settings\";i:1;s:25:\"plugin.tx_dlf.persistence\";i:1;s:18:\"plugin.tx_dlf.view\";i:1;s:55:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default\";i:1;s:64:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default.pageview\";i:1;s:77:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.default.pageview.overview-map\";i:1;s:50:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de\";i:1;s:59:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de.pageview\";i:1;s:72:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG.de.pageview.overview-map\";i:1;s:6:\"plugin\";i:1;s:35:\"plugin.tx_ddb_kitodo_zeitungsportal\";i:1;s:47:\"plugin.tx_ddb_kitodo_zeitungsportal._LOCAL_LANG\";i:1;s:34:\"plugin.tx_dlf_searchindocumenttool\";i:1;s:26:\"plugin.tx_dlf_fulltexttool\";i:1;s:35:\"plugin.tx_dlf_fulltexttool.settings\";i:1;}}s:10:\"FormEngine\";a:2:{i:0;a:1:{s:32:\"517a109c31fa4e7ba21f43f3a7dcb36c\";a:4:{i:0;s:43:\"Missing translation for metadata.identifier\";i:1;a:5:{s:4:\"edit\";a:1:{s:15:\"tx_dlf_metadata\";a:1:{i:27;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_metadata%5D%5B27%5D=edit\";i:3;a:5:{s:5:\"table\";s:15:\"tx_dlf_metadata\";s:3:\"uid\";i:27;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"3af505b920348c1a79bf62ea28cbec90\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"3af505b920348c1a79bf62ea28cbec90\";a:4:{i:0;s:44:\"[Translate to English:] Kitodo Konfiguration\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:5;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"20ed475662b97ac33d3aa853a74f9c9c\";a:4:{i:0;s:20:\"Kitodo Konfiguration\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d05de5db7a95716a106a7b65a59bfc32\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:9:\"constants\";s:6:\"noView\";N;}i:2;s:57:\"&edit%5Bsys_template%5D%5B1%5D=edit&columnsOnly=constants\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"76f4971b4247dd8a00e0dddaf5c3b684\";a:4:{i:0;s:16:\"newspaper-issues\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ad6c6673a0ce0bd828f9e86c3bc41bf4\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:6:\"config\";s:6:\"noView\";N;}i:2;s:54:\"&edit%5Bsys_template%5D%5B1%5D=edit&columnsOnly=config\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:6:\"Viewer\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"457104654cd91c678ff07af47ccb1df2\";a:4:{i:0;s:17:\"Solr Kern (PID 2)\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_solrcores\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_solrcores%5D%5B7%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_solrcores\";s:3:\"uid\";i:7;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"66c91b4df6c608b2e122422f819a919a\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:16:\"tx_dlf_documents\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:39:\"&edit%5Btx_dlf_documents%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:16:\"tx_dlf_documents\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:337:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":11:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:10:\"\0*\0channel\";s:3:\"php\";s:8:\"\0*\0level\";s:5:\"debug\";s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";s:9:\"file_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:9:\"tx_beuser\";a:2:{s:15:\"compareUserList\";a:0:{}s:6:\"demand\";a:5:{s:8:\"userName\";s:0:\"\";s:8:\"userType\";i:0;s:6:\"status\";i:0;s:6:\"logins\";i:0;s:16:\"backendUserGroup\";i:0;}}s:8:\"web_info\";a:3:{s:8:\"function\";s:48:\"TYPO3\\CMS\\Belog\\Module\\BackendLogModuleBootstrap\";s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:4:\"list\";a:2:{s:8:\"be_users\";s:1:\"1\";s:16:\"tx_dlf_solrcores\";s:1:\"0\";}s:16:\"ExtensionManager\";a:1:{s:6:\"filter\";s:5:\"Local\";}s:18:\"list/displayFields\";a:2:{s:16:\"tx_dlf_solrcores\";a:9:{i:0;s:5:\"label\";i:1;s:3:\"uid\";i:2;s:6:\"crdate\";i:3;s:9:\"cruser_id\";i:4;s:3:\"pid\";i:5;s:6:\"_PATH_\";i:6;s:5:\"_REF_\";i:7;s:10:\"index_name\";i:8;s:6:\"tstamp\";}s:15:\"tx_dlf_metadata\";a:7:{i:0;s:5:\"label\";i:1;s:6:\"crdate\";i:2;s:6:\"format\";i:3;s:13:\"default_value\";i:4;s:11:\"index_boost\";i:5;s:10:\"index_name\";i:6;s:16:\"sys_language_uid\";}}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1719407155;s:15:\"moduleSessionID\";a:13:{s:12:\"system_dbint\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";s:10:\"web_layout\";s:40:\"4c7765043f318251aa68e74974a968b8b38e5863\";s:8:\"web_list\";s:40:\"4c7765043f318251aa68e74974a968b8b38e5863\";s:6:\"web_ts\";s:40:\"c726876be14dd593fa601da39b159d5a8613d1b0\";s:10:\"FormEngine\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";s:16:\"opendocs::recent\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";s:9:\"file_list\";s:40:\"63872a1c30a9c0271ba8680867a836f84e998ca8\";s:9:\"tx_beuser\";s:40:\"6dbb395c23559c9ff20228c8951a961744064097\";s:8:\"web_info\";s:40:\"6dbb395c23559c9ff20228c8951a961744064097\";s:16:\"ExtensionManager\";s:40:\"452e642b51122124f2a82715191431f3ae403dc8\";s:18:\"list/displayFields\";s:40:\"622112fc8b0bde3440b2d5fdb70e3233a1a77026\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:1:{s:3:\"0_1\";s:1:\"1\";}}s:17:\"typo3-module-menu\";a:1:{s:9:\"collapsed\";s:5:\"false\";}s:15:\"FileStorageTree\";a:1:{s:9:\"stateHash\";a:2:{s:10:\"1_59663721\";s:1:\"1\";s:11:\"1_130865399\";s:1:\"1\";}}}}s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:0:\"\";s:6:\"report\";s:0:\"\";}}s:10:\"inlineView\";s:140:\"{\"tx_dlf_metadata\":{\"13\":{\"tx_dlf_metadataformat\":{\"2\":\"\"}},\"27\":{\"tx_dlf_metadataformat\":[\"42\"]}},\"site\":{\"1\":{\"site_base_variant\":[\"0\"]}}}\";s:10:\"navigation\";a:1:{s:5:\"width\";s:3:\"300\";}s:10:\"modulemenu\";s:2:\"{}\";s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1731066939}}\";s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:11:\"startModule\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:18:\"resetConfiguration\";s:0:\"\";s:12:\"mfaProviders\";s:0:\"\";s:18:\"backendTitleFormat\";s:10:\"titleFirst\";}',NULL,NULL,1,NULL,1741692220,0,NULL,'',NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(4,1,1718879470,1630500948,3,0,0,0,0,'',128,'',0,0,0,0,NULL,0,'{\"hidden\":null}',0,0,0,0,3,0,31,27,0,'Viewerdev','/viewerdev',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1718879470,'','',0,'','','',0,0,0,0,0,0,'','','',0,'',0,0,'','',0,'','',0,'',0,0.5,'',''),
(5,1,1741697144,1741697119,3,1,1,0,0,'',256,NULL,0,1,2,2,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"254\",\"slug\":\"\\/1\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":null}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Kitodo Konfiguration\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"fe_login_mode\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\"}',0,0,0,0,1,0,31,27,0,'[Translate to English:] Kitodo Konfiguration','/translate-to-english-kitodo-konfiguration',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'',0,0.5,'','summary');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(6,0,1723635878,1723635878,0,1,'1',0,'/user_upload/_temp_/importexport/index.html','68614dc2826769e93d8a8ead62af30ac99aaa83a','0795cf796b4fc959be0ec00b183c0f47609dd9a5','html','text/html','index.html','344e8d2f838769251206d105d6977c1e6b5dab44',110,1718719998,1718719998),
(7,0,1738686960,1738686960,0,0,'2',0,'/typo3conf/ext/dlf/Resources/Public/Images/PageGridPlaceholder.jpg','8675d255aade79834b3eccc1f60069819220e032','c65b0eb414b23cf663e38c8f9ae27449537d8bd1','jpg','image/jpeg','PageGridPlaceholder.jpg','d9f024f58ca1081ef2507e6db2c46a88d903c947',7106,1732639688,1722432743);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(6,0,1723635878,1723635878,3,0,0,NULL,0,'',0,0,0,0,6,NULL,0,0,NULL,NULL,0),
(7,0,1738686958,1738686958,0,0,0,NULL,0,'',0,0,0,0,7,NULL,100,150,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
('000603ec9f62ed313cc57dba6f81599d','tx_dlf_structures',94,'l18n_parent','','','',0,0,'tx_dlf_structures',2,''),
('007602a09efb06c27e68cb5e7af85c7c','tx_dlf_metadata',71,'l18n_parent','','','',0,0,'tx_dlf_metadata',41,''),
('00adcfdc6b0de960dad2e1a4dd298275','tx_dlf_structures',109,'l18n_parent','','','',0,0,'tx_dlf_structures',17,''),
('00e1a39617a98d4bba7275f5833628fc','tx_dlf_structures',106,'l18n_parent','','','',0,0,'tx_dlf_structures',14,''),
('010c202f2e56751245ee57a853fa198f','tx_dlf_documents',1,'structure','','','',0,0,'tx_dlf_structures',48,''),
('023fb5ae4069946f890b8c759e446cdf','tx_dlf_structures',132,'l18n_parent','','','',0,0,'tx_dlf_structures',40,''),
('02df716e0ea6122023e6bccea64cc3d7','tx_dlf_documents',6,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('056d11322af6bab50f452f99ae96f230','tx_dlf_structures',111,'l18n_parent','','','',0,0,'tx_dlf_structures',19,''),
('06195a0fc2c2df173c34ed935fabb666','tx_dlf_metadata',78,'l18n_parent','','','',0,0,'tx_dlf_metadata',48,''),
('083161d47196ef7d288fee7891acc695','tx_dlf_structures',184,'l18n_parent','','','',0,0,'tx_dlf_structures',92,''),
('0bc75fc48a18f1b7592b49955076fe97','sys_file',6,'storage','','','',0,0,'sys_file_storage',1,''),
('0bf363f198352c1f251386c0a559f6ac','sys_file',3,'metadata','','','',0,0,'sys_file_metadata',3,''),
('0c05763e0484cd094ea2a45cd78d3de5','tx_dlf_structures',179,'l18n_parent','','','',0,0,'tx_dlf_structures',87,''),
('0c88f7f9de2b11af6c3f7cc8debe5511','tx_dlf_structures',157,'l18n_parent','','','',0,0,'tx_dlf_structures',65,''),
('0d79f3369989022a25652436b5264c9a','tx_dlf_metadata',95,'l18n_parent','','','',0,0,'tx_dlf_metadata',65,''),
('0e53b00e42ba0ea5267e5d9bc6d31201','tx_dlf_structures',113,'l18n_parent','','','',0,0,'tx_dlf_structures',21,''),
('0fd518f24ac3aeef7a41210255434137','tx_dlf_structures',135,'l18n_parent','','','',0,0,'tx_dlf_structures',43,''),
('1044e0f46c254339d94dc0296707d0c8','tx_dlf_structures',116,'l18n_parent','','','',0,0,'tx_dlf_structures',24,''),
('1358f1bba7c75fbc8ec7248426861502','tx_dlf_metadata',49,'l18n_parent','','','',0,0,'tx_dlf_metadata',19,''),
('13cf8e05f9a7a82510358a10a6bd1794','tx_dlf_structures',95,'l18n_parent','','','',0,0,'tx_dlf_structures',3,''),
('15bc1560287bd80608bdf8bbba7b3ff4','tx_dlf_structures',181,'l18n_parent','','','',0,0,'tx_dlf_structures',89,''),
('16623af61789a5304e0b94953f8192dd','tx_dlf_structures',129,'l18n_parent','','','',0,0,'tx_dlf_structures',37,''),
('1795ae991b5f6df6baae80a76c8eae30','tx_dlf_structures',147,'l18n_parent','','','',0,0,'tx_dlf_structures',55,''),
('1abc31150f4eb64043f5296cd368d939','tx_dlf_metadata',96,'l18n_parent','','','',0,0,'tx_dlf_metadata',66,''),
('1d713afd85a7f34bd902802c399a45d1','tx_dlf_structures',159,'l18n_parent','','','',0,0,'tx_dlf_structures',67,''),
('201dc1e0bfcfe2f0da28f73af08e60c0','sys_file_metadata',2,'file','','','',0,0,'sys_file',2,''),
('21ca73eb88150f99f40d491d625701db','tx_dlf_metadata',80,'l18n_parent','','','',0,0,'tx_dlf_metadata',50,''),
('22dd0580be6df0f87bea84a14cb10859','tx_dlf_structures',133,'l18n_parent','','','',0,0,'tx_dlf_structures',41,''),
('23bbeaf7257373896d589379af9aa03c','tx_dlf_metadata',35,'l18n_parent','','','',0,0,'tx_dlf_metadata',5,''),
('281b33af344a8d7611015f1b2f99ecc5','tx_dlf_metadata',72,'l18n_parent','','','',0,0,'tx_dlf_metadata',42,''),
('28522af34b08c632c912c2a268863e2d','sys_template',1,'config','','url','22',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item'),
('2a8377115e82b6de00d1947385eed826','tx_dlf_structures',161,'l18n_parent','','','',0,0,'tx_dlf_structures',69,''),
('2c6b043b062c4b0de93103e94d86d010','tx_dlf_metadata',85,'l18n_parent','','','',0,0,'tx_dlf_metadata',55,''),
('2c7a75ce44c8735c75bea41509b3c401','tx_dlf_metadata',89,'l18n_parent','','','',0,0,'tx_dlf_metadata',59,''),
('2da46d48f19048dc1154748837a2f327','tx_dlf_structures',134,'l18n_parent','','','',0,0,'tx_dlf_structures',42,''),
('2e7c794fa89bde805482b4fdd1dbd136','tx_dlf_metadata',54,'l18n_parent','','','',0,0,'tx_dlf_metadata',24,''),
('2ec4d172316982bc8897b742097a15f6','tx_dlf_structures',153,'l18n_parent','','','',0,0,'tx_dlf_structures',61,''),
('2f1b0bc8be17b449df3a92e51f022811','tx_dlf_structures',174,'l18n_parent','','','',0,0,'tx_dlf_structures',82,''),
('2f3fc7e6c4b57421955881bccf149634','tx_dlf_metadata',73,'l18n_parent','','','',0,0,'tx_dlf_metadata',43,''),
('3037608b9d136e2035f6d360f893c6f3','tx_dlf_structures',99,'l18n_parent','','','',0,0,'tx_dlf_structures',7,''),
('30bbcad68d187568964654bbfc72de86','tx_dlf_structures',145,'l18n_parent','','','',0,0,'tx_dlf_structures',53,''),
('382eef42374f7ef8ce247c37b32ad2ac','tx_dlf_metadata',58,'l18n_parent','','','',0,0,'tx_dlf_metadata',28,''),
('383999cefd43309ee5529bd61590fdf3','tx_dlf_metadata',51,'l18n_parent','','','',0,0,'tx_dlf_metadata',21,''),
('38ec7232e2d0a1d720436ededd320c33','tx_dlf_structures',112,'l18n_parent','','','',0,0,'tx_dlf_structures',20,''),
('3b0b026300c414e2a5d092f5bbcfe7da','tx_dlf_metadata',41,'l18n_parent','','','',0,0,'tx_dlf_metadata',11,''),
('3b1b60a274b1bcb3886bb924c51f94b5','tx_dlf_metadata',48,'l18n_parent','','','',0,0,'tx_dlf_metadata',18,''),
('3b6f10693d0e1591c4bf1901824118b8','tx_dlf_structures',128,'l18n_parent','','','',0,0,'tx_dlf_structures',36,''),
('3c85124e612498ca37f91e8781454202','tx_dlf_metadata',92,'l18n_parent','','','',0,0,'tx_dlf_metadata',62,''),
('3ee4ac8e7bc6ddc5b99d9dd53afdf470','tx_dlf_metadata',36,'l18n_parent','','','',0,0,'tx_dlf_metadata',6,''),
('40ae306c67cfb9ca0b6bd9df86cc57b1','tx_dlf_documents',6,'structure','','','',0,0,'tx_dlf_structures',48,''),
('4204d40b235614187657ca8dae9cef98','tx_dlf_metadata',33,'l18n_parent','','','',0,0,'tx_dlf_metadata',3,''),
('42985a23d30360cd4d7381c8f4ac26e9','tx_dlf_structures',130,'l18n_parent','','','',0,0,'tx_dlf_structures',38,''),
('43e4c2bcc9561e913f714012bcfdf24a','tx_dlf_metadata',39,'l18n_parent','','','',0,0,'tx_dlf_metadata',9,''),
('45696eaf20a9d57533457ecdf9bc244c','tx_dlf_structures',163,'l18n_parent','','','',0,0,'tx_dlf_structures',71,''),
('4579944c2050ab95e0b0d906991e97ce','tx_dlf_structures',146,'l18n_parent','','','',0,0,'tx_dlf_structures',54,''),
('45f52f7bec273a3660e84af542af597b','tx_dlf_structures',98,'l18n_parent','','','',0,0,'tx_dlf_structures',6,''),
('460f40df396301c42b9c08ac9bac9e12','tx_dlf_documents',1,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('46276d761fab7204a8b5fda53621bea4','tx_dlf_metadata',83,'l18n_parent','','','',0,0,'tx_dlf_metadata',53,''),
('47857aac800c7273bb30ad6275313f5c','tx_dlf_structures',103,'l18n_parent','','','',0,0,'tx_dlf_structures',11,''),
('48a6534cf9c87519f23682f3e07dc23b','tx_dlf_structures',101,'l18n_parent','','','',0,0,'tx_dlf_structures',9,''),
('4a063db097360242c5c97efef727210c','tx_dlf_metadata',90,'l18n_parent','','','',0,0,'tx_dlf_metadata',60,''),
('4a2761996ee49c548ba995e6cd02dac5','tx_dlf_documents',2,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('4e3c14ac116a5457ad85d1f20c702548','tx_dlf_structures',165,'l18n_parent','','','',0,0,'tx_dlf_structures',73,''),
('4f56a3c92c6224692d60c26bbdcd167d','tx_dlf_documents',5,'structure','','','',0,0,'tx_dlf_structures',1,''),
('513ee089454d835c6487b8412de02c1d','tx_dlf_metadata',59,'l18n_parent','','','',0,0,'tx_dlf_metadata',29,''),
('52257a75cf11be7e8f62cf5446bc0a2c','tx_dlf_metadata',84,'l18n_parent','','','',0,0,'tx_dlf_metadata',54,''),
('545fec2194b35e2990ae715967ae1c09','tx_dlf_metadata',37,'l18n_parent','','','',0,0,'tx_dlf_metadata',7,''),
('5464ec8dc9a5b7e82a9dc5d80d17994d','tx_dlf_metadata',93,'l18n_parent','','','',0,0,'tx_dlf_metadata',63,''),
('548c352283f7ff33d682a6e1218f19ab','sys_template',1,'constants','','url','12',-1,0,'_STRING',0,'https://ddev-ddb-zeitungsportal.ddev.site/'),
('553ab7db31a894b2caa57e56557481b4','tx_dlf_metadata',56,'l18n_parent','','','',0,0,'tx_dlf_metadata',26,''),
('5a86ad1024d82029ca0ab1247c766bef','tx_dlf_structures',124,'l18n_parent','','','',0,0,'tx_dlf_structures',32,''),
('5c719c779c7ee760a0611e72eb5a28f8','tx_dlf_metadata',50,'l18n_parent','','','',0,0,'tx_dlf_metadata',20,''),
('5d8397cfaf509abb249feef3f4ce7f52','tx_dlf_metadata',52,'l18n_parent','','','',0,0,'tx_dlf_metadata',22,''),
('5eb677714f25c0e4a257240bc832aaca','tx_dlf_metadata',76,'l18n_parent','','','',0,0,'tx_dlf_metadata',46,''),
('63a495079c98552b400b18912439a322','tx_dlf_metadata',38,'l18n_parent','','','',0,0,'tx_dlf_metadata',8,''),
('66f94ae3275f6970a1646fd2e37c7eb4','tx_dlf_metadata',91,'l18n_parent','','','',0,0,'tx_dlf_metadata',61,''),
('683d01c0f296ba44e79681559d353396','tx_dlf_structures',152,'l18n_parent','','','',0,0,'tx_dlf_structures',60,''),
('686877265af49abbd5e539445f41bbad','tx_dlf_metadata',98,'l18n_parent','','','',0,0,'tx_dlf_metadata',68,''),
('68f6973cc2a07e1e66e26257408c9f9a','tx_dlf_metadata',87,'l18n_parent','','','',0,0,'tx_dlf_metadata',57,''),
('699d92f3ca36a23083348055a6d1c205','tx_dlf_structures',119,'l18n_parent','','','',0,0,'tx_dlf_structures',27,''),
('69cd6e45fc523a9228acba3cfe0b60dd','sys_template',1,'config','','url','7',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record'),
('6be0ae4de14da57ad28cade0afd4df9d','sys_template',1,'config','','url','17',-1,0,'_STRING',0,'https://api-q1.deutsche-digitale-bibliothek.de/2/items/*id*/source/record'),
('6ccb58b7cab75432d30baf29acf637c9','tx_dlf_metadata',79,'l18n_parent','','','',0,0,'tx_dlf_metadata',49,''),
('6ccbb959a8a1a1170792d706c5146350','tx_dlf_metadata',44,'l18n_parent','','','',0,0,'tx_dlf_metadata',14,''),
('6d1ea30abc2a89207d37412973cd6512','tx_dlf_metadata',86,'l18n_parent','','','',0,0,'tx_dlf_metadata',56,''),
('6d5e48a996a077d87adf7ceb88fe0e64','tx_dlf_metadata',45,'l18n_parent','','','',0,0,'tx_dlf_metadata',15,''),
('6e09f4e93dca39cafb5e5944a5e5ce52','tx_dlf_structures',155,'l18n_parent','','','',0,0,'tx_dlf_structures',63,''),
('6eb125160b9287a1b9bfb8c1bc974499','tx_dlf_metadata',34,'l18n_parent','','','',0,0,'tx_dlf_metadata',4,''),
('6fa175b7e149ed2c900e9113b2e59584','tx_dlf_documents',5,'owner','','','',0,0,'tx_dlf_libraries',1,''),
('714bd81d45c6851fa92e7a3331136ff8','tx_dlf_structures',123,'l18n_parent','','','',0,0,'tx_dlf_structures',31,''),
('7151773f57b13d692be30e8615acfe17','sys_template',1,'config','','url','27',-1,0,'_STRING',0,'https://api.deutsche-digitale-bibliothek.de/2/items/*id*/source/record'),
('749b0771828793d3e3eba1372852a7a8','sys_file',2,'metadata','','','',0,0,'sys_file_metadata',2,''),
('74c5858ab5fc71f621d24aae9ce9a055','tx_dlf_structures',168,'l18n_parent','','','',0,0,'tx_dlf_structures',76,''),
('75c3834928efa07a49a851db11354ab0','tx_dlf_structures',114,'l18n_parent','','','',0,0,'tx_dlf_structures',22,''),
('75d5cf58c2d1f292d821368060a9ff7c','tx_dlf_structures',171,'l18n_parent','','','',0,0,'tx_dlf_structures',79,''),
('7618d6f6b41f5a436c729d931d7a516d','pages',3,'l10n_parent','','','',0,0,'pages',1,''),
('787fec047eed67532d405c3389ff2b64','tx_dlf_structures',177,'l18n_parent','','','',0,0,'tx_dlf_structures',85,''),
('791d3f9d43dcbfa78cd49dd8258caa09','sys_file',5,'storage','','','',0,0,'sys_file_storage',1,''),
('7aff16c332e72757a200bc370c1e22cd','tx_dlf_structures',180,'l18n_parent','','','',0,0,'tx_dlf_structures',88,''),
('7c628cc2813d6e1a628843c218a55c11','tx_dlf_structures',143,'l18n_parent','','','',0,0,'tx_dlf_structures',51,''),
('7c84dfe748dae8d7bd613bca0ba2f5d0','tx_dlf_structures',183,'l18n_parent','','','',0,0,'tx_dlf_structures',91,''),
('7df79178f66c7231413fd50d50835200','tx_dlf_structures',176,'l18n_parent','','','',0,0,'tx_dlf_structures',84,''),
('7e675bebc65155451de78d7ae95eefdb','tx_dlf_metadata',77,'l18n_parent','','','',0,0,'tx_dlf_metadata',47,''),
('7fe8ea6a78afdd6b018669784fa3561c','tx_dlf_metadata',31,'l18n_parent','','','',0,0,'tx_dlf_metadata',1,''),
('829bf074b3306ceb826b44299e129943','tx_dlf_structures',96,'l18n_parent','','','',0,0,'tx_dlf_structures',4,''),
('8987893411baca05f986dca0a4c38bd8','sys_file',5,'metadata','','','',0,0,'sys_file_metadata',5,''),
('8a3bd6bdcdf852626604deaff950998f','tx_dlf_metadata',32,'l18n_parent','','','',0,0,'tx_dlf_metadata',2,''),
('8c58f8f91b793b55494934169b9d80c7','sys_template',1,'constants','','url','17',-1,0,'_STRING',0,'https://dev-zpviewerdev.fiz-karlsruhe.de/'),
('8d23731a2b2037f4781f89c5149c57be','sys_file_metadata',5,'file','','','',0,0,'sys_file',5,''),
('8d55ce4b99003fe87129f93b4ae88028','tx_dlf_structures',173,'l18n_parent','','','',0,0,'tx_dlf_structures',81,''),
('8fa2ff0688e23ce05d21093f320a5803','sys_template',1,'constants','','url','7',-1,0,'_STRING',0,'https://viewer-dzp.deutsche-digitale-bibliothek.de/'),
('9042dac4724481e65cc7f8848e3432f3','sys_template',1,'config','','url','12',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item'),
('91f420091808462582cbf7881b5575a3','tx_dlf_structures',158,'l18n_parent','','','',0,0,'tx_dlf_structures',66,''),
('95c9ca6ff845615f85e66bf69f2341f9','tx_dlf_structures',169,'l18n_parent','','','',0,0,'tx_dlf_structures',77,''),
('982d8b37af94ac37e7bcbc537cf8486a','tx_dlf_structures',148,'l18n_parent','','','',0,0,'tx_dlf_structures',56,''),
('99de689fcc8d549c1edc8d615d5e37a0','sys_file_metadata',4,'file','','','',0,0,'sys_file',4,''),
('9a3639d69c109c3b5281377dd3b011be','tx_dlf_structures',137,'l18n_parent','','','',0,0,'tx_dlf_structures',45,''),
('9cc3f820ab6a69459a9c2fc66a61f092','sys_file',6,'metadata','','','',0,0,'sys_file_metadata',6,''),
('a0dbfa9f6255b9344f8fd1e8cbfb7269','tx_dlf_structures',100,'l18n_parent','','','',0,0,'tx_dlf_structures',8,''),
('a15ffabbd8584a219558604b4c6fcda6','tx_dlf_structures',166,'l18n_parent','','','',0,0,'tx_dlf_structures',74,''),
('a186c3cc713cc021cfda1cf03f0862e3','tx_dlf_structures',149,'l18n_parent','','','',0,0,'tx_dlf_structures',57,''),
('a2261533f76015319db8e60f7004c933','tx_dlf_structures',125,'l18n_parent','','','',0,0,'tx_dlf_structures',33,''),
('a3be61d64fb8bd03aa4d44d12d4ebcf7','tx_dlf_metadata',88,'l18n_parent','','','',0,0,'tx_dlf_metadata',58,''),
('a405c5d009b5d4cf46875aaec3a65057','tx_dlf_metadata',47,'l18n_parent','','','',0,0,'tx_dlf_metadata',17,''),
('a80364c230090978cca867e76f1e8690','tx_dlf_structures',115,'l18n_parent','','','',0,0,'tx_dlf_structures',23,''),
('a8bc7131ac991025d11a9d3290c9ec8f','tx_dlf_structures',182,'l18n_parent','','','',0,0,'tx_dlf_structures',90,''),
('a9226a24ca1e89a6bcf746e21c278592','tx_dlf_metadata',43,'l18n_parent','','','',0,0,'tx_dlf_metadata',13,''),
('aab8b631685c09f7efcd856c8732bdad','sys_template',1,'constants','','url','22',-1,0,'_STRING',0,'http://ddb-p2-vmzpviewer01:8001/zp-viewer'),
('ab0a23a5bb46dc333128fab5b088e440','tx_dlf_structures',144,'l18n_parent','','','',0,0,'tx_dlf_structures',52,''),
('acf8c9546f07eea964ff789985a9bca2','tx_dlf_structures',164,'l18n_parent','','','',0,0,'tx_dlf_structures',72,''),
('ad4609aab00b5bb685126b110a5212bd','tx_dlf_structures',160,'l18n_parent','','','',0,0,'tx_dlf_structures',68,''),
('ad7ab6854f07166a1a5f2ac27c9bcc81','tx_dlf_structures',110,'l18n_parent','','','',0,0,'tx_dlf_structures',18,''),
('adff59518c68b7c6e4dca65245b57aed','sys_file_metadata',3,'file','','','',0,0,'sys_file',3,''),
('ae3163c20f743c6c027b4fe10519bcf2','tx_dlf_structures',151,'l18n_parent','','','',0,0,'tx_dlf_structures',59,''),
('ae533d4bc98aed20a950fd7ced2b0824','tx_dlf_documents',6,'partof','','','',0,0,'tx_dlf_documents',5,''),
('aef669d9d47ed3680f13646ce1c11003','tx_dlf_structures',154,'l18n_parent','','','',0,0,'tx_dlf_structures',62,''),
('b16aefb18d21297f2b0763c787a691aa','tx_dlf_structures',121,'l18n_parent','','','',0,0,'tx_dlf_structures',29,''),
('b177d33da6548d461fa70e5b21e3a9bf','tx_dlf_structures',178,'l18n_parent','','','',0,0,'tx_dlf_structures',86,''),
('b21abd7b4ae1c3b33580f6fba2754c15','tx_dlf_structures',117,'l18n_parent','','','',0,0,'tx_dlf_structures',25,''),
('b261de4229bf3683cce7c9b50d4da73d','tx_dlf_structures',97,'l18n_parent','','','',0,0,'tx_dlf_structures',5,''),
('b4a60f1ce5adee2dd59c58fe70cd39bf','tx_dlf_structures',136,'l18n_parent','','','',0,0,'tx_dlf_structures',44,''),
('b4bc234e46ed74db4148415c2fa432f8','sys_template',1,'config','','url','2',-1,0,'_STRING',0,'https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item'),
('b534ee70c0071980d192c095fadc740a','tx_dlf_documents',5,'partof','','','',0,0,'tx_dlf_documents',2,''),
('b54723b80f999bffb9a5f91064ec8ad8','tx_dlf_metadata',70,'l18n_parent','','','',0,0,'tx_dlf_metadata',40,''),
('b6b1843674acf34ccf38cf3e6fb375ab','tx_dlf_metadata',57,'l18n_parent','','','',0,0,'tx_dlf_metadata',27,''),
('b812d6fd373d8484f54ba1bfc4bb053e','tx_dlf_structures',126,'l18n_parent','','','',0,0,'tx_dlf_structures',34,''),
('b95e3ef8158ea0936f98407266d9f13b','tx_dlf_metadata',60,'l18n_parent','','','',0,0,'tx_dlf_metadata',30,''),
('ba8ec115beb88856361291bf87ff7c6d','sys_file_metadata',6,'file','','','',0,0,'sys_file',6,''),
('bab37143de5339e474516691bf0c5857','sys_file',4,'storage','','','',0,0,'sys_file_storage',1,''),
('bb9038a252bcfeadc2e1e8a6b5266986','sys_file_metadata',1,'file','','','',0,0,'sys_file',1,''),
('bdf0469eba05a6eebbf975d8fe9410d1','tx_dlf_metadata',55,'l18n_parent','','','',0,0,'tx_dlf_metadata',25,''),
('be8ce7071b9ef4d476eaaaf4f41fd2f8','sys_template',1,'constants','','url','2',-1,0,'_STRING',0,'https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/'),
('be9341ade7cdd7b5d5ea6beff27b358b','tx_dlf_metadata',99,'l18n_parent','','','',0,0,'tx_dlf_metadata',69,''),
('bf3010d8652b46ab8c64318098af99d7','tx_dlf_metadata',97,'l18n_parent','','','',0,0,'tx_dlf_metadata',67,''),
('bfa38cea3215058461072bbdefb9a1ad','sys_file_metadata',7,'file','','','',0,0,'sys_file',7,''),
('c2ea819c99de2f8c829dc371f60f4921','tx_dlf_structures',156,'l18n_parent','','','',0,0,'tx_dlf_structures',64,''),
('c30c152f266bcf4887b69adb8bf99bda','tx_dlf_structures',175,'l18n_parent','','','',0,0,'tx_dlf_structures',83,''),
('c55ea8d07caf1c7051289af6c8b551df','tx_dlf_structures',108,'l18n_parent','','','',0,0,'tx_dlf_structures',16,''),
('c6133e56f2585bf33b4cba9af37a4853','tx_dlf_structures',170,'l18n_parent','','','',0,0,'tx_dlf_structures',78,''),
('c708e79426c3a361e0cec69603e246b6','tx_dlf_metadata',40,'l18n_parent','','','',0,0,'tx_dlf_metadata',10,''),
('cc90ec9bece685a5c91209a2da142109','tx_dlf_structures',142,'l18n_parent','','','',0,0,'tx_dlf_structures',50,''),
('cece91c8fba45fdf2c479f7f518106a8','tx_dlf_structures',140,'l18n_parent','','','',0,0,'tx_dlf_structures',48,''),
('cedaa785292852996800d2041df0a645','tx_dlf_structures',150,'l18n_parent','','','',0,0,'tx_dlf_structures',58,''),
('d26d73c3ede75a4d465e89b6c27980b6','tx_dlf_structures',167,'l18n_parent','','','',0,0,'tx_dlf_structures',75,''),
('d5172a2ca480aecc1fca8fe94e040adb','tx_dlf_structures',131,'l18n_parent','','','',0,0,'tx_dlf_structures',39,''),
('d5e902d2056ca7bd1786887a04502e47','tx_dlf_metadata',42,'l18n_parent','','','',0,0,'tx_dlf_metadata',12,''),
('d7b5207105e8cace92d67197730bc004','tx_dlf_structures',172,'l18n_parent','','','',0,0,'tx_dlf_structures',80,''),
('d8687b22df341faa4ef53caf5188ece8','tx_dlf_structures',105,'l18n_parent','','','',0,0,'tx_dlf_structures',13,''),
('d8f5bb260a8c8f86253d0211be3d439b','tx_dlf_structures',93,'l18n_parent','','','',0,0,'tx_dlf_structures',1,''),
('da8032170d3dcba63ad592efce8024b7','tx_dlf_metadata',74,'l18n_parent','','','',0,0,'tx_dlf_metadata',44,''),
('e08c6d8a5c3cbaf506f34f378fb6e8f3','tx_dlf_metadata',82,'l18n_parent','','','',0,0,'tx_dlf_metadata',52,''),
('e1f83239363c1d8e24d8ee7dcc694942','tx_dlf_documents',2,'structure','','','',0,0,'tx_dlf_structures',34,''),
('e4227008cdd3360e4c2dc167f663b744','tx_dlf_metadata',46,'l18n_parent','','','',0,0,'tx_dlf_metadata',16,''),
('e536f57007d9df59561e6cbecb0e8f64','tx_dlf_structures',102,'l18n_parent','','','',0,0,'tx_dlf_structures',10,''),
('e595413bfc1840ef8d6a4f0797ff2168','tx_dlf_structures',139,'l18n_parent','','','',0,0,'tx_dlf_structures',47,''),
('e59ba733ba90af84530b5e6c946daf2c','tx_dlf_structures',127,'l18n_parent','','','',0,0,'tx_dlf_structures',35,''),
('e8111cc6842a423c6f3eca6622eb7e90','tx_dlf_structures',138,'l18n_parent','','','',0,0,'tx_dlf_structures',46,''),
('e9bd10a034e21341a59198e43b8ded55','tx_dlf_structures',141,'l18n_parent','','','',0,0,'tx_dlf_structures',49,''),
('ea5520aa0d902949c386fa3fde1f71dc','tx_dlf_metadata',81,'l18n_parent','','','',0,0,'tx_dlf_metadata',51,''),
('eabc92a2ecf2e9fb94c4e11d0f9ad9d4','tx_dlf_metadata',75,'l18n_parent','','','',0,0,'tx_dlf_metadata',45,''),
('ec01e9666331703a2215b40555f23bf6','sys_file',4,'metadata','','','',0,0,'sys_file_metadata',4,''),
('ed4067fe5f72a2bb0a03dc63b575d23c','tx_dlf_metadata',53,'l18n_parent','','','',0,0,'tx_dlf_metadata',23,''),
('f20c5cb5635fc31f63a6451e57790066','tx_dlf_structures',120,'l18n_parent','','','',0,0,'tx_dlf_structures',28,''),
('f409799c12b76efb8b0fa5e136816c2d','tx_dlf_structures',104,'l18n_parent','','','',0,0,'tx_dlf_structures',12,''),
('f5a9714814bef08e8611bf6f82ee8863','tx_dlf_structures',162,'l18n_parent','','','',0,0,'tx_dlf_structures',70,''),
('f83c4a4afa1a9902695302410a7b4ca3','tx_dlf_structures',118,'l18n_parent','','','',0,0,'tx_dlf_structures',26,''),
('fb5869a92642530bb366d7e4a2e96401','tx_dlf_structures',122,'l18n_parent','','','',0,0,'tx_dlf_structures',30,''),
('fb629c9f6597e5ba18417c9070f74d78','tx_dlf_structures',107,'l18n_parent','','','',0,0,'tx_dlf_structures',15,''),
('fbe82301f6bf12516df2608e40af4518','tx_dlf_metadata',94,'l18n_parent','','','',0,0,'tx_dlf_metadata',64,''),
('fe80a6589cac9798aa13ab5e0192cb56','sys_file',1,'metadata','','','',0,0,'sys_file_metadata',1,''),
('ffae3457a86e31ff3e84e22fec53eb1d','sys_file',7,'metadata','','','',0,0,'sys_file_metadata',7,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3069 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(209,'core','sys_refindex_lastUpdate','i:1741693278;'),
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
(2750,'core','formProtectionSessionToken:3','s:64:\"e6d25e5b0e13fd76c160608e65e650fbb98cf333f1e80b9f243e9e6ca585f05a\";'),
(2751,'extensionScannerNotAffected','9aa93b9277a65f284b5f77ebc3d79435','s:32:\"9aa93b9277a65f284b5f77ebc3d79435\";'),
(2752,'extensionScannerNotAffected','e9cf64ee9da1d5e62168bd794df2247d','s:32:\"e9cf64ee9da1d5e62168bd794df2247d\";'),
(2753,'extensionScannerNotAffected','8280e3513619dfe238c096f653be5302','s:32:\"8280e3513619dfe238c096f653be5302\";'),
(2754,'extensionScannerNotAffected','62a6991c22ec61aeb428572c720b37d6','s:32:\"62a6991c22ec61aeb428572c720b37d6\";'),
(2755,'extensionScannerNotAffected','8b5b904b1ee09d5394dfbbc338ee9bf7','s:32:\"8b5b904b1ee09d5394dfbbc338ee9bf7\";'),
(2756,'extensionScannerNotAffected','6603e1c47876b136ecae8ce17b90bff0','s:32:\"6603e1c47876b136ecae8ce17b90bff0\";'),
(2757,'extensionScannerNotAffected','4544a28f584624d49bb2eaef6e82ff26','s:32:\"4544a28f584624d49bb2eaef6e82ff26\";'),
(2758,'extensionScannerNotAffected','5d5153c44dca7eb24b0b2d24f1529721','s:32:\"5d5153c44dca7eb24b0b2d24f1529721\";'),
(2759,'extensionScannerNotAffected','e3175d691acb5b8e87df0cb048e42c5d','s:32:\"e3175d691acb5b8e87df0cb048e42c5d\";'),
(2760,'extensionScannerNotAffected','a271ca83d6927ba0377f95eec02ed24f','s:32:\"a271ca83d6927ba0377f95eec02ed24f\";'),
(2761,'extensionScannerNotAffected','096d981ed62c017ea36b3f208f540ad4','s:32:\"096d981ed62c017ea36b3f208f540ad4\";'),
(2762,'extensionScannerNotAffected','771615afe13a7d48fbbaeab727343ea7','s:32:\"771615afe13a7d48fbbaeab727343ea7\";'),
(2763,'extensionScannerNotAffected','4c3c8b406e47d993850476de555da48c','s:32:\"4c3c8b406e47d993850476de555da48c\";'),
(2764,'extensionScannerNotAffected','9a59a47b5a0c4d5640387d5988846925','s:32:\"9a59a47b5a0c4d5640387d5988846925\";'),
(2765,'extensionScannerNotAffected','32582e7e731318c3febcee6634dff7db','s:32:\"32582e7e731318c3febcee6634dff7db\";'),
(2766,'extensionScannerNotAffected','e3b129156a3c6cf9b08c70337b7db7f0','s:32:\"e3b129156a3c6cf9b08c70337b7db7f0\";'),
(2767,'extensionScannerNotAffected','1c69a07ef79e504938ce64c8a5c01c37','s:32:\"1c69a07ef79e504938ce64c8a5c01c37\";'),
(2768,'extensionScannerNotAffected','c926977edb9b1381dfd6db42c9c38d36','s:32:\"c926977edb9b1381dfd6db42c9c38d36\";'),
(2769,'extensionScannerNotAffected','ebdbde59436ef40f9c094558399a519b','s:32:\"ebdbde59436ef40f9c094558399a519b\";'),
(2770,'extensionScannerNotAffected','42729c0de6c7a88f7d3c9011c2b701fb','s:32:\"42729c0de6c7a88f7d3c9011c2b701fb\";'),
(2771,'extensionScannerNotAffected','7433bd10eda73f92ebf48c79212a73ec','s:32:\"7433bd10eda73f92ebf48c79212a73ec\";'),
(2772,'extensionScannerNotAffected','1cf2d82e029d22d6ae7d1e0a0a28b893','s:32:\"1cf2d82e029d22d6ae7d1e0a0a28b893\";'),
(2773,'extensionScannerNotAffected','ecbdd5a9bb889ebbbf53edf3f81cd73b','s:32:\"ecbdd5a9bb889ebbbf53edf3f81cd73b\";'),
(2774,'extensionScannerNotAffected','a3943f180a3dbd67b2bcef2bed01255e','s:32:\"a3943f180a3dbd67b2bcef2bed01255e\";'),
(2775,'extensionScannerNotAffected','6f522c8490e86245258b6885f1b9b050','s:32:\"6f522c8490e86245258b6885f1b9b050\";'),
(2776,'extensionScannerNotAffected','796d5caea2b1a1bdc8cf7cf0734ce75b','s:32:\"796d5caea2b1a1bdc8cf7cf0734ce75b\";'),
(2777,'extensionScannerNotAffected','a2dde15e078601ea894a564c7f9d03e4','s:32:\"a2dde15e078601ea894a564c7f9d03e4\";'),
(2778,'extensionScannerNotAffected','848ac016d8024c33b82218774be62922','s:32:\"848ac016d8024c33b82218774be62922\";'),
(2779,'extensionScannerNotAffected','6b5f1a87c899b96759842d532f846cd1','s:32:\"6b5f1a87c899b96759842d532f846cd1\";'),
(2780,'extensionScannerNotAffected','b340ea55b04524d0b05bef61e00e2cab','s:32:\"b340ea55b04524d0b05bef61e00e2cab\";'),
(2781,'extensionScannerNotAffected','3022fdf75d186f543092e249ea3cd85a','s:32:\"3022fdf75d186f543092e249ea3cd85a\";'),
(2782,'extensionScannerNotAffected','9691eecb539ea83b3216c7908587b72a','s:32:\"9691eecb539ea83b3216c7908587b72a\";'),
(2783,'extensionScannerNotAffected','a52a2b05cdb598d51404a5eb46519df4','s:32:\"a52a2b05cdb598d51404a5eb46519df4\";'),
(2784,'extensionScannerNotAffected','1e3b5786e1903466b88b3c1a509092d0','s:32:\"1e3b5786e1903466b88b3c1a509092d0\";'),
(2785,'extensionScannerNotAffected','fd8e1b0856c7ae38e466c41d752aef3f','s:32:\"fd8e1b0856c7ae38e466c41d752aef3f\";'),
(2786,'extensionScannerNotAffected','630c8c8d8746166b55311a3f4c7db54b','s:32:\"630c8c8d8746166b55311a3f4c7db54b\";'),
(2787,'extensionScannerNotAffected','9fddd15d376d2e3855ccf51accfa3264','s:32:\"9fddd15d376d2e3855ccf51accfa3264\";'),
(2788,'extensionScannerNotAffected','20ce57c9d72fadcfccd99b8bac7d5c21','s:32:\"20ce57c9d72fadcfccd99b8bac7d5c21\";'),
(2789,'extensionScannerNotAffected','add859d1c68f3596c666f1f85da17e31','s:32:\"add859d1c68f3596c666f1f85da17e31\";'),
(2790,'extensionScannerNotAffected','3e68193c203e6b76c95d4b133c7b6827','s:32:\"3e68193c203e6b76c95d4b133c7b6827\";'),
(2791,'extensionScannerNotAffected','f0410d322f416815fb67a55d8aee482f','s:32:\"f0410d322f416815fb67a55d8aee482f\";'),
(2792,'extensionScannerNotAffected','10a10bd071eef7f994dc535f60152aa8','s:32:\"10a10bd071eef7f994dc535f60152aa8\";'),
(2793,'extensionScannerNotAffected','4ba4a468b340f78590df3e2bb833e796','s:32:\"4ba4a468b340f78590df3e2bb833e796\";'),
(2794,'extensionScannerNotAffected','be19c2660961eb4fe81db49071b3a0d4','s:32:\"be19c2660961eb4fe81db49071b3a0d4\";'),
(2795,'extensionScannerNotAffected','e927827226a57bbfbdd1e8c8c81cc271','s:32:\"e927827226a57bbfbdd1e8c8c81cc271\";'),
(2796,'extensionScannerNotAffected','0ca5c3d2f2b476198b07bc55f557fa83','s:32:\"0ca5c3d2f2b476198b07bc55f557fa83\";'),
(2797,'extensionScannerNotAffected','ae11ebb8b4956062f728f008f58afcd3','s:32:\"ae11ebb8b4956062f728f008f58afcd3\";'),
(2798,'extensionScannerNotAffected','1a857d84999ba726a44fd6c6fd2ce770','s:32:\"1a857d84999ba726a44fd6c6fd2ce770\";'),
(2799,'extensionScannerNotAffected','d91a4add54e367b01553a2db8fe55b37','s:32:\"d91a4add54e367b01553a2db8fe55b37\";'),
(2800,'extensionScannerNotAffected','b0751b546eae2d3e8ea52a7d030e86cf','s:32:\"b0751b546eae2d3e8ea52a7d030e86cf\";'),
(2801,'extensionScannerNotAffected','9c11910ac58c787973556755e9b9b6ec','s:32:\"9c11910ac58c787973556755e9b9b6ec\";'),
(2802,'extensionScannerNotAffected','a2a4e9fce37afb9b1f528fff96fe824e','s:32:\"a2a4e9fce37afb9b1f528fff96fe824e\";'),
(2803,'extensionScannerNotAffected','5e07c8d39708e00f5bb0b7063cb58c79','s:32:\"5e07c8d39708e00f5bb0b7063cb58c79\";'),
(2804,'extensionScannerNotAffected','d1bfedd40b6dd3c56b6cf45f26b7ef4b','s:32:\"d1bfedd40b6dd3c56b6cf45f26b7ef4b\";'),
(2805,'extensionScannerNotAffected','d84fad04a43c41747f4da23fd528e251','s:32:\"d84fad04a43c41747f4da23fd528e251\";'),
(2806,'extensionScannerNotAffected','b6658dfd236e9d356e6b17746871f7d5','s:32:\"b6658dfd236e9d356e6b17746871f7d5\";'),
(2807,'extensionScannerNotAffected','78e52f9d827bcb2650ef6813691c2b8a','s:32:\"78e52f9d827bcb2650ef6813691c2b8a\";'),
(2808,'extensionScannerNotAffected','b2175f0ac6dafbd7d9a930dcd40640a1','s:32:\"b2175f0ac6dafbd7d9a930dcd40640a1\";'),
(2809,'extensionScannerNotAffected','08af1c5299d7f726d3ff4fa32ac787ff','s:32:\"08af1c5299d7f726d3ff4fa32ac787ff\";'),
(2810,'extensionScannerNotAffected','f3d55e844c58c4c29e23441b4cf246fa','s:32:\"f3d55e844c58c4c29e23441b4cf246fa\";'),
(2811,'extensionScannerNotAffected','8b028fc5be16a3a480680ffa2da44d69','s:32:\"8b028fc5be16a3a480680ffa2da44d69\";'),
(2812,'extensionScannerNotAffected','127a0f8d3d98a78e6d0322ae35512fdf','s:32:\"127a0f8d3d98a78e6d0322ae35512fdf\";'),
(2813,'extensionScannerNotAffected','28776db5a7c915d655dd92bfe81013bd','s:32:\"28776db5a7c915d655dd92bfe81013bd\";'),
(2814,'extensionScannerNotAffected','2a2a44c323a6dbddcc595689a4813b5c','s:32:\"2a2a44c323a6dbddcc595689a4813b5c\";'),
(2815,'extensionScannerNotAffected','8a52401a7a603319d58e6ac67b133e0d','s:32:\"8a52401a7a603319d58e6ac67b133e0d\";'),
(2816,'extensionScannerNotAffected','a7ba2396b0b8e6bda7ab7d7734688c6a','s:32:\"a7ba2396b0b8e6bda7ab7d7734688c6a\";'),
(2817,'extensionScannerNotAffected','33d43ec1e6e80dcc4b50d55cb270164c','s:32:\"33d43ec1e6e80dcc4b50d55cb270164c\";'),
(2818,'extensionScannerNotAffected','15c258875cbacbee5ce912a60f70a53a','s:32:\"15c258875cbacbee5ce912a60f70a53a\";'),
(2819,'extensionScannerNotAffected','be91d1ec18366c1d2c1bb450ab6e6982','s:32:\"be91d1ec18366c1d2c1bb450ab6e6982\";'),
(2820,'extensionScannerNotAffected','4f8893d36fde08799f185251ce8a1d7d','s:32:\"4f8893d36fde08799f185251ce8a1d7d\";'),
(2821,'extensionScannerNotAffected','a1e05622e232739de1c9f096122edf0d','s:32:\"a1e05622e232739de1c9f096122edf0d\";'),
(2822,'extensionScannerNotAffected','df8733b098af0c109ff700b9c6a45387','s:32:\"df8733b098af0c109ff700b9c6a45387\";'),
(2823,'extensionScannerNotAffected','3b35b1893c858b4c72beae89da4d72ee','s:32:\"3b35b1893c858b4c72beae89da4d72ee\";'),
(2824,'extensionScannerNotAffected','f99b5997a72dd36d831d762a6e072149','s:32:\"f99b5997a72dd36d831d762a6e072149\";'),
(2825,'extensionScannerNotAffected','42261e6899ab6b5b75f74222dcb223a4','s:32:\"42261e6899ab6b5b75f74222dcb223a4\";'),
(2826,'extensionScannerNotAffected','f2958c806d88d2d7aee445f3ea731b7a','s:32:\"f2958c806d88d2d7aee445f3ea731b7a\";'),
(2827,'extensionScannerNotAffected','9bf8366ee53aa0f01c679088c5eafbe9','s:32:\"9bf8366ee53aa0f01c679088c5eafbe9\";'),
(2828,'extensionScannerNotAffected','42d940b576b1305c7008fdfb9209b6b3','s:32:\"42d940b576b1305c7008fdfb9209b6b3\";'),
(2829,'extensionScannerNotAffected','de80e00d9fdc1af1885aef6221e0512f','s:32:\"de80e00d9fdc1af1885aef6221e0512f\";'),
(2830,'extensionScannerNotAffected','f89e6ca048ef0f505375776d72685893','s:32:\"f89e6ca048ef0f505375776d72685893\";'),
(2831,'extensionScannerNotAffected','e01033484593b9ae1680113f2c232c91','s:32:\"e01033484593b9ae1680113f2c232c91\";'),
(2832,'extensionScannerNotAffected','86bc714264687cf08e1cab4057e4bb02','s:32:\"86bc714264687cf08e1cab4057e4bb02\";'),
(2833,'extensionScannerNotAffected','3b13080fd465998d5c70f43e4fbb236e','s:32:\"3b13080fd465998d5c70f43e4fbb236e\";'),
(2834,'extensionScannerNotAffected','cd5ac3b13f0613715349c20619784838','s:32:\"cd5ac3b13f0613715349c20619784838\";'),
(2835,'extensionScannerNotAffected','13dfcb4815bbe6c5ab7592cbf5156cc7','s:32:\"13dfcb4815bbe6c5ab7592cbf5156cc7\";'),
(2836,'extensionScannerNotAffected','c4eed6810f2784df1829bc5f9a6706ab','s:32:\"c4eed6810f2784df1829bc5f9a6706ab\";'),
(2837,'extensionScannerNotAffected','6ea845a3aca017062bbfff2a1a2fa65c','s:32:\"6ea845a3aca017062bbfff2a1a2fa65c\";'),
(2838,'extensionScannerNotAffected','f178dbfd54aff5f0ed2317e0967e192e','s:32:\"f178dbfd54aff5f0ed2317e0967e192e\";'),
(2839,'extensionScannerNotAffected','21779e16fa1600602ca77f5889515810','s:32:\"21779e16fa1600602ca77f5889515810\";'),
(2840,'extensionScannerNotAffected','c116f4ad0d187dccaeda9f9474d89580','s:32:\"c116f4ad0d187dccaeda9f9474d89580\";'),
(2841,'extensionScannerNotAffected','6bdd13c460d24f22a219d91d121d7fb9','s:32:\"6bdd13c460d24f22a219d91d121d7fb9\";'),
(2842,'extensionScannerNotAffected','d317488deaebb06a0bbda5a729b39294','s:32:\"d317488deaebb06a0bbda5a729b39294\";'),
(2843,'extensionScannerNotAffected','ea9b64a2259862b3f566a977802ffa4e','s:32:\"ea9b64a2259862b3f566a977802ffa4e\";'),
(2844,'extensionScannerNotAffected','5f7ec5be0f2ea3bcc94f3915f92d07d5','s:32:\"5f7ec5be0f2ea3bcc94f3915f92d07d5\";'),
(2845,'extensionScannerNotAffected','7a97b6b1d6b27f8860485e8f99fda0fa','s:32:\"7a97b6b1d6b27f8860485e8f99fda0fa\";'),
(2846,'extensionScannerNotAffected','9b8cc7b4cf993f0b189e714dbab03e09','s:32:\"9b8cc7b4cf993f0b189e714dbab03e09\";'),
(2847,'extensionScannerNotAffected','4130ab4500044da22279febeae784c5d','s:32:\"4130ab4500044da22279febeae784c5d\";'),
(2848,'extensionScannerNotAffected','9d78f10d3d3468f3ea0abbc8ac9efefd','s:32:\"9d78f10d3d3468f3ea0abbc8ac9efefd\";'),
(2849,'extensionScannerNotAffected','c21097a04e68fa3997d1b4c7451e42df','s:32:\"c21097a04e68fa3997d1b4c7451e42df\";'),
(2850,'extensionScannerNotAffected','b55534ba49175a2a71a489fe1cdc9151','s:32:\"b55534ba49175a2a71a489fe1cdc9151\";'),
(2851,'extensionScannerNotAffected','8b68914e7701bbbd09a4360a8eeb30b4','s:32:\"8b68914e7701bbbd09a4360a8eeb30b4\";'),
(2852,'extensionScannerNotAffected','0fdaee63c65c5e7385912e99a860bec0','s:32:\"0fdaee63c65c5e7385912e99a860bec0\";'),
(2853,'extensionScannerNotAffected','3a9d51446d583867eaa29e96d1b3d82f','s:32:\"3a9d51446d583867eaa29e96d1b3d82f\";'),
(2854,'extensionScannerNotAffected','4f0204efbbaeb96d5bd5a8a8be77ab3a','s:32:\"4f0204efbbaeb96d5bd5a8a8be77ab3a\";'),
(2855,'extensionScannerNotAffected','6a612953cdfb79e84af300876b6cffee','s:32:\"6a612953cdfb79e84af300876b6cffee\";'),
(2856,'extensionScannerNotAffected','5ae6448ae34f394c75accc0cba4ba219','s:32:\"5ae6448ae34f394c75accc0cba4ba219\";'),
(2857,'extensionScannerNotAffected','eb6039312047fc7f3b8bd323927ce28e','s:32:\"eb6039312047fc7f3b8bd323927ce28e\";'),
(2858,'extensionScannerNotAffected','e0da9b531546c31c5c7437f76b41bfd7','s:32:\"e0da9b531546c31c5c7437f76b41bfd7\";'),
(2859,'extensionScannerNotAffected','f97579819f68986e299a019267bccb2c','s:32:\"f97579819f68986e299a019267bccb2c\";'),
(2860,'extensionScannerNotAffected','184dfa358aba8cae0d7d44431aa42641','s:32:\"184dfa358aba8cae0d7d44431aa42641\";'),
(2861,'extensionScannerNotAffected','0799b85e05618bcea4e866433d1aa91c','s:32:\"0799b85e05618bcea4e866433d1aa91c\";'),
(2862,'extensionScannerNotAffected','0a4387299f7d949791ac6d1d553cb080','s:32:\"0a4387299f7d949791ac6d1d553cb080\";'),
(2863,'extensionScannerNotAffected','dc689766d5e6930a255cef3d91db491e','s:32:\"dc689766d5e6930a255cef3d91db491e\";'),
(2864,'extensionScannerNotAffected','788999224bc619ee7b8b044ff075e623','s:32:\"788999224bc619ee7b8b044ff075e623\";'),
(2865,'extensionScannerNotAffected','03dfd2403b9bdac1c7326a88d9e4de83','s:32:\"03dfd2403b9bdac1c7326a88d9e4de83\";'),
(2866,'extensionScannerNotAffected','7c4c3a6eb349d033a95e8724b0b725ba','s:32:\"7c4c3a6eb349d033a95e8724b0b725ba\";'),
(2867,'extensionScannerNotAffected','07ec0dc573eb2edafa4c0971a383e416','s:32:\"07ec0dc573eb2edafa4c0971a383e416\";'),
(2868,'extensionScannerNotAffected','e10fc0ad498c2aa35102ffc3f1a46406','s:32:\"e10fc0ad498c2aa35102ffc3f1a46406\";'),
(2869,'extensionScannerNotAffected','91e85bb312ba7e102ecf80bf6154571e','s:32:\"91e85bb312ba7e102ecf80bf6154571e\";'),
(2870,'extensionScannerNotAffected','256b019437f4ac0f38be053ccb87c620','s:32:\"256b019437f4ac0f38be053ccb87c620\";'),
(2871,'extensionScannerNotAffected','4c0080be91e78bc2db633158c829d74c','s:32:\"4c0080be91e78bc2db633158c829d74c\";'),
(2872,'extensionScannerNotAffected','ce03f60b48a230594678c59b47037c43','s:32:\"ce03f60b48a230594678c59b47037c43\";'),
(2873,'extensionScannerNotAffected','0fd2b9d19dc468afd1a2226befc95a06','s:32:\"0fd2b9d19dc468afd1a2226befc95a06\";'),
(2874,'extensionScannerNotAffected','e4671c9fbe712457bb532249bc285a2a','s:32:\"e4671c9fbe712457bb532249bc285a2a\";'),
(2875,'extensionScannerNotAffected','eb35eb32497292de1fb8435020010941','s:32:\"eb35eb32497292de1fb8435020010941\";'),
(2876,'extensionScannerNotAffected','6900e7df764d6a41fb2ebcc7dfc14ea1','s:32:\"6900e7df764d6a41fb2ebcc7dfc14ea1\";'),
(2877,'extensionScannerNotAffected','55abdd51e86705fe8f31b2ebf0aaef1d','s:32:\"55abdd51e86705fe8f31b2ebf0aaef1d\";'),
(2878,'extensionScannerNotAffected','870bb1337c3298e1a860315b29ce64a5','s:32:\"870bb1337c3298e1a860315b29ce64a5\";'),
(2879,'extensionScannerNotAffected','537ed0121bec18054c028243572475db','s:32:\"537ed0121bec18054c028243572475db\";'),
(2880,'extensionScannerNotAffected','e2f51fcc9cc38f925d503d395a128a0e','s:32:\"e2f51fcc9cc38f925d503d395a128a0e\";'),
(2881,'extensionScannerNotAffected','b14531e3f124f99afe0504385d6c1be4','s:32:\"b14531e3f124f99afe0504385d6c1be4\";'),
(2882,'extensionScannerNotAffected','d9fa61ceef7e46613edf7e5ae1273484','s:32:\"d9fa61ceef7e46613edf7e5ae1273484\";'),
(2883,'extensionScannerNotAffected','a0fb94cf6157e707d59816ee14406074','s:32:\"a0fb94cf6157e707d59816ee14406074\";'),
(2884,'extensionScannerNotAffected','7eb83a2ce593f46e0b4a46767e69cd93','s:32:\"7eb83a2ce593f46e0b4a46767e69cd93\";'),
(2885,'extensionScannerNotAffected','f9a4d89c8e28ff90a28734095ea74555','s:32:\"f9a4d89c8e28ff90a28734095ea74555\";'),
(2886,'extensionScannerNotAffected','37407c4308a472ccba7650c5f23dba92','s:32:\"37407c4308a472ccba7650c5f23dba92\";'),
(2887,'extensionScannerNotAffected','98fd606bb35f37d478cdfe6b0b1c7ac6','s:32:\"98fd606bb35f37d478cdfe6b0b1c7ac6\";'),
(2888,'extensionScannerNotAffected','2cdfaa818b2211039ffbd8a3357882f1','s:32:\"2cdfaa818b2211039ffbd8a3357882f1\";'),
(2889,'extensionScannerNotAffected','957aabf519fc2649d2e8fd0a515e5c4d','s:32:\"957aabf519fc2649d2e8fd0a515e5c4d\";'),
(2890,'extensionScannerNotAffected','05496464c4f22fde57877043219b4aa2','s:32:\"05496464c4f22fde57877043219b4aa2\";'),
(2891,'extensionScannerNotAffected','2531f07c8ce72590bf64df6851f9e7f3','s:32:\"2531f07c8ce72590bf64df6851f9e7f3\";'),
(2892,'extensionScannerNotAffected','137c68bff595a7d3d3e390ecebdd12a7','s:32:\"137c68bff595a7d3d3e390ecebdd12a7\";'),
(2893,'extensionScannerNotAffected','a497be10ea132112be39785227cb0ece','s:32:\"a497be10ea132112be39785227cb0ece\";'),
(2894,'extensionScannerNotAffected','208e590ab73e0724cb7bb4283cf4614d','s:32:\"208e590ab73e0724cb7bb4283cf4614d\";'),
(2895,'extensionScannerNotAffected','81f90e4d011a4678ca3fe2b6c42b526b','s:32:\"81f90e4d011a4678ca3fe2b6c42b526b\";'),
(2896,'extensionScannerNotAffected','d05e9eefdf1c2d3ca8d12d9bffc8dc70','s:32:\"d05e9eefdf1c2d3ca8d12d9bffc8dc70\";'),
(2897,'extensionScannerNotAffected','3fbf4bd45cce93c96497033287d8a593','s:32:\"3fbf4bd45cce93c96497033287d8a593\";'),
(2898,'extensionScannerNotAffected','7b0e8e3deae1a71df8c6e5df4c75efd2','s:32:\"7b0e8e3deae1a71df8c6e5df4c75efd2\";'),
(2899,'extensionScannerNotAffected','59b3c66f73bcf1dc84b0b61283767e62','s:32:\"59b3c66f73bcf1dc84b0b61283767e62\";'),
(2900,'extensionScannerNotAffected','f75b87d6994f2b45294b074450ed99de','s:32:\"f75b87d6994f2b45294b074450ed99de\";'),
(2901,'extensionScannerNotAffected','af518efa7bcec68d4ef3e89361f5b070','s:32:\"af518efa7bcec68d4ef3e89361f5b070\";'),
(2902,'extensionScannerNotAffected','dc6f49c793bd3e4818c2488de6998383','s:32:\"dc6f49c793bd3e4818c2488de6998383\";'),
(2903,'extensionScannerNotAffected','84f6f7d7608e67ae0db88e1bb21552cb','s:32:\"84f6f7d7608e67ae0db88e1bb21552cb\";'),
(2904,'extensionScannerNotAffected','f49583e7730ced96d47e45d463a4b90f','s:32:\"f49583e7730ced96d47e45d463a4b90f\";'),
(2905,'extensionScannerNotAffected','2ebf7d215f3949990d607aa363293f0d','s:32:\"2ebf7d215f3949990d607aa363293f0d\";'),
(2906,'extensionScannerNotAffected','bd33cfe4457c74dcf2dbe60551d8bdf0','s:32:\"bd33cfe4457c74dcf2dbe60551d8bdf0\";'),
(2907,'extensionScannerNotAffected','ebb3837c3eca6ae5bc77817421a99414','s:32:\"ebb3837c3eca6ae5bc77817421a99414\";'),
(2908,'extensionScannerNotAffected','78faa602896a4de888adfc4fff74911c','s:32:\"78faa602896a4de888adfc4fff74911c\";'),
(2909,'extensionScannerNotAffected','278a6d9a9359a298239b9757ca5a0658','s:32:\"278a6d9a9359a298239b9757ca5a0658\";'),
(2910,'extensionScannerNotAffected','f134e01b05f71463a3b9f0d8305cb18b','s:32:\"f134e01b05f71463a3b9f0d8305cb18b\";'),
(2911,'extensionScannerNotAffected','ce3a08ec49aed55bfb6321ab29322fcf','s:32:\"ce3a08ec49aed55bfb6321ab29322fcf\";'),
(2912,'extensionScannerNotAffected','22bb500ab0da0114296d835fb4843911','s:32:\"22bb500ab0da0114296d835fb4843911\";'),
(2913,'extensionScannerNotAffected','7de310ef0781372c22235f4e4c5a9c93','s:32:\"7de310ef0781372c22235f4e4c5a9c93\";'),
(2914,'extensionScannerNotAffected','986af5e700498af0c406a1c354a88530','s:32:\"986af5e700498af0c406a1c354a88530\";'),
(2915,'extensionScannerNotAffected','d760f6bb19706badecf16a0731e3f886','s:32:\"d760f6bb19706badecf16a0731e3f886\";'),
(2916,'extensionScannerNotAffected','01d9ebc50c69075c509adff41094aa44','s:32:\"01d9ebc50c69075c509adff41094aa44\";'),
(2917,'extensionScannerNotAffected','06331cd1ab789a6f37a92782fab478a5','s:32:\"06331cd1ab789a6f37a92782fab478a5\";'),
(2918,'extensionScannerNotAffected','ef288692cd84d1eaec05b5bb33d20695','s:32:\"ef288692cd84d1eaec05b5bb33d20695\";'),
(2919,'extensionScannerNotAffected','e8fdb29754fd6723d18dc1dd35141fc4','s:32:\"e8fdb29754fd6723d18dc1dd35141fc4\";'),
(2920,'extensionScannerNotAffected','a87b3e8873680dce295d9ed5b66477ac','s:32:\"a87b3e8873680dce295d9ed5b66477ac\";'),
(2921,'extensionScannerNotAffected','9bc85f8e20068e602d56f51ce7b5b552','s:32:\"9bc85f8e20068e602d56f51ce7b5b552\";'),
(2922,'extensionScannerNotAffected','dfd8ba28be70852dc68caf4dd4c2c5af','s:32:\"dfd8ba28be70852dc68caf4dd4c2c5af\";'),
(2923,'extensionScannerNotAffected','4678a60d71342df4ba8c2af44dc28a02','s:32:\"4678a60d71342df4ba8c2af44dc28a02\";'),
(2924,'extensionScannerNotAffected','a78382b6a17344a1319f363781e89c96','s:32:\"a78382b6a17344a1319f363781e89c96\";'),
(2925,'extensionScannerNotAffected','10660a0b55948bda8b5be11b94520f86','s:32:\"10660a0b55948bda8b5be11b94520f86\";'),
(2926,'extensionScannerNotAffected','e4cb2ff8131e30096b67f313934fa5aa','s:32:\"e4cb2ff8131e30096b67f313934fa5aa\";'),
(2927,'extensionScannerNotAffected','f62e9efda740779576c4c093b92e6bbe','s:32:\"f62e9efda740779576c4c093b92e6bbe\";'),
(2928,'extensionScannerNotAffected','0b33776f56c0dffe5c52b71a78c3dd4b','s:32:\"0b33776f56c0dffe5c52b71a78c3dd4b\";'),
(2929,'extensionScannerNotAffected','c33b16da42572b9806ded75f963920a7','s:32:\"c33b16da42572b9806ded75f963920a7\";'),
(2930,'extensionScannerNotAffected','96a54ac430bbab2fe25c603cb66a867f','s:32:\"96a54ac430bbab2fe25c603cb66a867f\";'),
(2931,'extensionScannerNotAffected','2f9b3b80341d776d9ad3b9d058542f05','s:32:\"2f9b3b80341d776d9ad3b9d058542f05\";'),
(2932,'extensionScannerNotAffected','bfda64bdc41110ac0acb521e86615e77','s:32:\"bfda64bdc41110ac0acb521e86615e77\";'),
(2933,'extensionScannerNotAffected','56902cf074ec99809e13cad1c1c0cbb2','s:32:\"56902cf074ec99809e13cad1c1c0cbb2\";'),
(2934,'extensionScannerNotAffected','6837c353aef861c3ac6f606739b3ddcc','s:32:\"6837c353aef861c3ac6f606739b3ddcc\";'),
(2935,'extensionScannerNotAffected','bee700e394d9007ba778c844642036f3','s:32:\"bee700e394d9007ba778c844642036f3\";'),
(2936,'extensionScannerNotAffected','14e2908d4969859fbfe5a6e49d765db7','s:32:\"14e2908d4969859fbfe5a6e49d765db7\";'),
(2937,'extensionScannerNotAffected','e6fcf9d1c9a9dc665e6932affb8d511c','s:32:\"e6fcf9d1c9a9dc665e6932affb8d511c\";'),
(2938,'extensionScannerNotAffected','1d37a84ca40f9e51f34ff6f6fdac2de8','s:32:\"1d37a84ca40f9e51f34ff6f6fdac2de8\";'),
(2939,'extensionScannerNotAffected','63fc98fb3dae1d448038c0728e5c831c','s:32:\"63fc98fb3dae1d448038c0728e5c831c\";'),
(2940,'extensionScannerNotAffected','fb767442225dde0917ca4bc81374c81e','s:32:\"fb767442225dde0917ca4bc81374c81e\";'),
(2941,'extensionScannerNotAffected','592df2e16ddeb1271cccc117cc7294da','s:32:\"592df2e16ddeb1271cccc117cc7294da\";'),
(2942,'extensionScannerNotAffected','070572597d5900b4e595c4638e2d6ca9','s:32:\"070572597d5900b4e595c4638e2d6ca9\";'),
(2943,'extensionScannerNotAffected','408aaa0b0b297def9510a000ca11e67e','s:32:\"408aaa0b0b297def9510a000ca11e67e\";'),
(2944,'extensionScannerNotAffected','0b598b5b27fa6c9747520984827ce15d','s:32:\"0b598b5b27fa6c9747520984827ce15d\";'),
(2945,'extensionScannerNotAffected','f2a5e29ebd6e77e8284bfd667552d72b','s:32:\"f2a5e29ebd6e77e8284bfd667552d72b\";'),
(2946,'extensionScannerNotAffected','fb57d229f20aa1fd5c6d3782aa2876bf','s:32:\"fb57d229f20aa1fd5c6d3782aa2876bf\";'),
(2947,'extensionScannerNotAffected','1acdeca153a31c73b609be55ff1ac429','s:32:\"1acdeca153a31c73b609be55ff1ac429\";'),
(2948,'extensionScannerNotAffected','b212dd503d7e271942ab72f2c5542d1f','s:32:\"b212dd503d7e271942ab72f2c5542d1f\";'),
(2949,'extensionScannerNotAffected','6767c02d78ce379e858132e8d139869b','s:32:\"6767c02d78ce379e858132e8d139869b\";'),
(2950,'extensionScannerNotAffected','ef020968202a77309121be978c7c0292','s:32:\"ef020968202a77309121be978c7c0292\";'),
(2951,'extensionScannerNotAffected','3aa3d709385b55f13667c6dafb43d2ac','s:32:\"3aa3d709385b55f13667c6dafb43d2ac\";'),
(2952,'extensionScannerNotAffected','f5c3440870c206d74dc1791022d2cf50','s:32:\"f5c3440870c206d74dc1791022d2cf50\";'),
(2953,'extensionScannerNotAffected','51b3ed169a236061c892468f96536a04','s:32:\"51b3ed169a236061c892468f96536a04\";'),
(2954,'extensionScannerNotAffected','af0a23a44bb5bb32def66fdc7ac37ff6','s:32:\"af0a23a44bb5bb32def66fdc7ac37ff6\";'),
(2955,'extensionScannerNotAffected','4e273c76d177075b32a1de4e575b36fe','s:32:\"4e273c76d177075b32a1de4e575b36fe\";'),
(2956,'extensionScannerNotAffected','d08fec9ae34ee0ad0cf1a0f730be6158','s:32:\"d08fec9ae34ee0ad0cf1a0f730be6158\";'),
(2957,'extensionScannerNotAffected','5627c1c2616ced5a6079f10125b6b957','s:32:\"5627c1c2616ced5a6079f10125b6b957\";'),
(2958,'extensionScannerNotAffected','b1c59bf2973c28b6b79fb9484dbd655c','s:32:\"b1c59bf2973c28b6b79fb9484dbd655c\";'),
(2959,'extensionScannerNotAffected','285cde81518a89b7e19c8da61cdc7eb3','s:32:\"285cde81518a89b7e19c8da61cdc7eb3\";'),
(2960,'extensionScannerNotAffected','058c2cd497d04f04ecca5405d592732e','s:32:\"058c2cd497d04f04ecca5405d592732e\";'),
(2961,'extensionScannerNotAffected','ce88a0b5902c3d390c9435df759b141e','s:32:\"ce88a0b5902c3d390c9435df759b141e\";'),
(2962,'extensionScannerNotAffected','7287f0c0c453f2270a8cc6fe7a699d66','s:32:\"7287f0c0c453f2270a8cc6fe7a699d66\";'),
(2963,'extensionScannerNotAffected','456afe54ec4ec13fd6e01a633c5a2f87','s:32:\"456afe54ec4ec13fd6e01a633c5a2f87\";'),
(2964,'extensionScannerNotAffected','de3328553ef2b98b39b02ea6e7dd3eb1','s:32:\"de3328553ef2b98b39b02ea6e7dd3eb1\";'),
(2965,'extensionScannerNotAffected','9e6bb703ab0a4982c845ddc31ecf90bb','s:32:\"9e6bb703ab0a4982c845ddc31ecf90bb\";'),
(2966,'extensionScannerNotAffected','6f44d7cac7278bf07b397868b0df15ff','s:32:\"6f44d7cac7278bf07b397868b0df15ff\";'),
(2967,'extensionScannerNotAffected','b851ac52bbc8927e75dff314ed405e93','s:32:\"b851ac52bbc8927e75dff314ed405e93\";'),
(2968,'extensionScannerNotAffected','6450e345665c955597e281849e0c7783','s:32:\"6450e345665c955597e281849e0c7783\";'),
(2969,'extensionScannerNotAffected','569e0d056c3aaeff79f187703889951c','s:32:\"569e0d056c3aaeff79f187703889951c\";'),
(2970,'extensionScannerNotAffected','4915d856ea15cf4b767e3acdbcefede3','s:32:\"4915d856ea15cf4b767e3acdbcefede3\";'),
(2971,'extensionScannerNotAffected','5aa53e24af63f32576a6e1d63f15bde9','s:32:\"5aa53e24af63f32576a6e1d63f15bde9\";'),
(2972,'extensionScannerNotAffected','2f258818426852044301138c6f46179a','s:32:\"2f258818426852044301138c6f46179a\";'),
(2973,'extensionScannerNotAffected','f48e0ba5207c5324970154a75d29b1c9','s:32:\"f48e0ba5207c5324970154a75d29b1c9\";'),
(2974,'extensionScannerNotAffected','58af194aeae79e057fce90e8c98f54a6','s:32:\"58af194aeae79e057fce90e8c98f54a6\";'),
(2975,'extensionScannerNotAffected','0ad4491f83e9941adaab117313616a2f','s:32:\"0ad4491f83e9941adaab117313616a2f\";'),
(2976,'extensionScannerNotAffected','7557914e0b9b51e5208a72228a1e965b','s:32:\"7557914e0b9b51e5208a72228a1e965b\";'),
(2977,'extensionScannerNotAffected','b5f4a07dce885bf1b0298fa009f3361c','s:32:\"b5f4a07dce885bf1b0298fa009f3361c\";'),
(2978,'extensionScannerNotAffected','ddf516f2f3a89ae88361b977c33a975d','s:32:\"ddf516f2f3a89ae88361b977c33a975d\";'),
(2979,'extensionScannerNotAffected','227579bb5f3c219173b1d51c954922c6','s:32:\"227579bb5f3c219173b1d51c954922c6\";'),
(2980,'extensionScannerNotAffected','216570b14c2fff9cfc3ee94e1eb24f2e','s:32:\"216570b14c2fff9cfc3ee94e1eb24f2e\";'),
(2981,'extensionScannerNotAffected','fe2f9a9b0c37d895c46df7d51ef09181','s:32:\"fe2f9a9b0c37d895c46df7d51ef09181\";'),
(2982,'extensionScannerNotAffected','1a92cc3b5831210486ea03c430f56d88','s:32:\"1a92cc3b5831210486ea03c430f56d88\";'),
(2983,'extensionScannerNotAffected','1208fe4faf8d7c79a35062a09b7f2eae','s:32:\"1208fe4faf8d7c79a35062a09b7f2eae\";'),
(2984,'extensionScannerNotAffected','59fef1c2b40d2d8350c39ad06e156ea9','s:32:\"59fef1c2b40d2d8350c39ad06e156ea9\";'),
(2985,'extensionScannerNotAffected','a31b514709041e97f29586eb5079a903','s:32:\"a31b514709041e97f29586eb5079a903\";'),
(2986,'extensionScannerNotAffected','a1806357ca558948209b36f5d593b142','s:32:\"a1806357ca558948209b36f5d593b142\";'),
(2987,'extensionScannerNotAffected','cd44481dd7e0a393eced3f07903a4fa4','s:32:\"cd44481dd7e0a393eced3f07903a4fa4\";'),
(2988,'extensionScannerNotAffected','422f8fe2ea2521e2f37d1fb860e541a3','s:32:\"422f8fe2ea2521e2f37d1fb860e541a3\";'),
(2989,'extensionScannerNotAffected','5afce444e60d42897f6ecb0fce69e1d9','s:32:\"5afce444e60d42897f6ecb0fce69e1d9\";'),
(2990,'extensionScannerNotAffected','b2a3f6cea1908e52d895da466077ab2f','s:32:\"b2a3f6cea1908e52d895da466077ab2f\";'),
(2991,'extensionScannerNotAffected','8b64bb4c9ac34650e95550e6551f8cb6','s:32:\"8b64bb4c9ac34650e95550e6551f8cb6\";'),
(2992,'extensionScannerNotAffected','466f48497d7e45ab4bb32986afbaf866','s:32:\"466f48497d7e45ab4bb32986afbaf866\";'),
(2993,'extensionScannerNotAffected','c00f4fd03a4d1d0756b345f780c80ab2','s:32:\"c00f4fd03a4d1d0756b345f780c80ab2\";'),
(2994,'extensionScannerNotAffected','e1ed00caa3aa2ff7009d058eec51d2af','s:32:\"e1ed00caa3aa2ff7009d058eec51d2af\";'),
(2995,'extensionScannerNotAffected','64d5b0af961deb88f232def01741b2a7','s:32:\"64d5b0af961deb88f232def01741b2a7\";'),
(2996,'extensionScannerNotAffected','a6bcd0bf9b7536707d0b4c400f158700','s:32:\"a6bcd0bf9b7536707d0b4c400f158700\";'),
(2997,'extensionScannerNotAffected','26b568c4108fe855aa4963f405948b50','s:32:\"26b568c4108fe855aa4963f405948b50\";'),
(2998,'extensionScannerNotAffected','7b90305a803d3e08093e2dff4c7ecaca','s:32:\"7b90305a803d3e08093e2dff4c7ecaca\";'),
(2999,'extensionScannerNotAffected','e800b0ba43c6f890ae6735246ea61fa5','s:32:\"e800b0ba43c6f890ae6735246ea61fa5\";'),
(3000,'extensionScannerNotAffected','046423736bdbf918b41b87a61940c5b8','s:32:\"046423736bdbf918b41b87a61940c5b8\";'),
(3001,'extensionScannerNotAffected','8bc5ad0d51d7ac49f3b3aa30cd8af355','s:32:\"8bc5ad0d51d7ac49f3b3aa30cd8af355\";'),
(3002,'extensionScannerNotAffected','6989bc9c54f1489e5fbd304bfb85fe7b','s:32:\"6989bc9c54f1489e5fbd304bfb85fe7b\";'),
(3003,'extensionScannerNotAffected','9ca0f82713338bc06bef76cb58fa16f1','s:32:\"9ca0f82713338bc06bef76cb58fa16f1\";'),
(3004,'extensionScannerNotAffected','435b38b6d79a7d2633e668fde2650f43','s:32:\"435b38b6d79a7d2633e668fde2650f43\";'),
(3005,'extensionScannerNotAffected','235fb3d4f7115a40ee7e8842e0ed9a35','s:32:\"235fb3d4f7115a40ee7e8842e0ed9a35\";'),
(3006,'extensionScannerNotAffected','9938bb18555f2cc53cb922a0d5141d4c','s:32:\"9938bb18555f2cc53cb922a0d5141d4c\";'),
(3007,'extensionScannerNotAffected','cf04c008d0fa3079bf98ef594713f5a8','s:32:\"cf04c008d0fa3079bf98ef594713f5a8\";'),
(3008,'extensionScannerNotAffected','8a32943483d5bfa2b6bed51216fa5451','s:32:\"8a32943483d5bfa2b6bed51216fa5451\";'),
(3009,'extensionScannerNotAffected','511d2684aa7cac72af1b5e2b7e9de255','s:32:\"511d2684aa7cac72af1b5e2b7e9de255\";'),
(3010,'extensionScannerNotAffected','3c8a35634f63a3811b2b33fbe34a9ce1','s:32:\"3c8a35634f63a3811b2b33fbe34a9ce1\";'),
(3011,'extensionScannerNotAffected','09b9e1995fbb1faeec102698748afd37','s:32:\"09b9e1995fbb1faeec102698748afd37\";'),
(3012,'extensionScannerNotAffected','05d8826fd8e31fa4ad2e4409a65f3c5a','s:32:\"05d8826fd8e31fa4ad2e4409a65f3c5a\";'),
(3013,'extensionScannerNotAffected','a267e0d6dc4a0385543f7a8b8a2a8ebb','s:32:\"a267e0d6dc4a0385543f7a8b8a2a8ebb\";'),
(3014,'extensionScannerNotAffected','550131c2f986f14233bee328f8575fde','s:32:\"550131c2f986f14233bee328f8575fde\";'),
(3015,'extensionScannerNotAffected','bb5096d59349243d9b93c5bb76ee3b99','s:32:\"bb5096d59349243d9b93c5bb76ee3b99\";'),
(3016,'extensionScannerNotAffected','17e39071a5767874c7fbd19b843d9619','s:32:\"17e39071a5767874c7fbd19b843d9619\";'),
(3017,'extensionScannerNotAffected','129bc81c107d3bbfa3c4c94a54e79a40','s:32:\"129bc81c107d3bbfa3c4c94a54e79a40\";'),
(3018,'extensionScannerNotAffected','713cfb33040b6ff60ef6d99704e7765c','s:32:\"713cfb33040b6ff60ef6d99704e7765c\";'),
(3019,'extensionScannerNotAffected','95b6a0afe2747053be7cab0c248db0e2','s:32:\"95b6a0afe2747053be7cab0c248db0e2\";'),
(3020,'extensionScannerNotAffected','c987477c498f08df3ca1d5e058beff08','s:32:\"c987477c498f08df3ca1d5e058beff08\";'),
(3021,'extensionScannerNotAffected','0b4ad84bc1e75dd53de367929b6c92d9','s:32:\"0b4ad84bc1e75dd53de367929b6c92d9\";'),
(3022,'extensionScannerNotAffected','6f722b29b499fdd7cd1a82ea2eb717ae','s:32:\"6f722b29b499fdd7cd1a82ea2eb717ae\";'),
(3023,'extensionScannerNotAffected','c6ba8120004a8e0af898f96b4e97a9fc','s:32:\"c6ba8120004a8e0af898f96b4e97a9fc\";'),
(3024,'extensionScannerNotAffected','e8429333673212f64f32c76b416da6e0','s:32:\"e8429333673212f64f32c76b416da6e0\";'),
(3025,'extensionScannerNotAffected','169498d3585f4ee33f69ca2b28164072','s:32:\"169498d3585f4ee33f69ca2b28164072\";'),
(3026,'extensionScannerNotAffected','96a7b8ab4f0b1564454a6e828390f508','s:32:\"96a7b8ab4f0b1564454a6e828390f508\";'),
(3027,'extensionScannerNotAffected','f0dd86e41e8d55eec356526ad020da8a','s:32:\"f0dd86e41e8d55eec356526ad020da8a\";'),
(3028,'extensionScannerNotAffected','e0abb58dfb365c02f3f6e2ffaf581c12','s:32:\"e0abb58dfb365c02f3f6e2ffaf581c12\";'),
(3029,'extensionScannerNotAffected','76e1a770e400d8d1220f2837c260e612','s:32:\"76e1a770e400d8d1220f2837c260e612\";'),
(3030,'extensionScannerNotAffected','25dad0a2358f701cf82922902bddd7f9','s:32:\"25dad0a2358f701cf82922902bddd7f9\";'),
(3031,'extensionScannerNotAffected','d83b9f62e3292a7faa27e098be40eff5','s:32:\"d83b9f62e3292a7faa27e098be40eff5\";'),
(3032,'extensionScannerNotAffected','cb152522032f194f256bb8d6368d0dc1','s:32:\"cb152522032f194f256bb8d6368d0dc1\";'),
(3033,'extensionScannerNotAffected','e1943b26f0ee032eccbd8c5cec70e6f0','s:32:\"e1943b26f0ee032eccbd8c5cec70e6f0\";'),
(3034,'extensionScannerNotAffected','5e52243143430b34d208001e6011a391','s:32:\"5e52243143430b34d208001e6011a391\";'),
(3035,'extensionScannerNotAffected','bfa9546298181bf8f962615b6b035fb8','s:32:\"bfa9546298181bf8f962615b6b035fb8\";'),
(3036,'extensionScannerNotAffected','f6cf4cd16f9220568666d1ffa8105afe','s:32:\"f6cf4cd16f9220568666d1ffa8105afe\";'),
(3037,'extensionScannerNotAffected','417979edfdf1d45a66d7139520f70782','s:32:\"417979edfdf1d45a66d7139520f70782\";'),
(3038,'extensionScannerNotAffected','0b7bbd7f8d3979379e9e122e5b67fbf7','s:32:\"0b7bbd7f8d3979379e9e122e5b67fbf7\";'),
(3039,'extensionScannerNotAffected','1ccc68572b84b1f3581e46779b0cebd8','s:32:\"1ccc68572b84b1f3581e46779b0cebd8\";'),
(3040,'extensionScannerNotAffected','283dbddb51bcd984372398e7307e6c83','s:32:\"283dbddb51bcd984372398e7307e6c83\";'),
(3041,'extensionScannerNotAffected','2788c2f447675b0eeca29f1f15a2c6d4','s:32:\"2788c2f447675b0eeca29f1f15a2c6d4\";'),
(3042,'extensionScannerNotAffected','bf75aef4c22551bcf024a77b0a5f5fd7','s:32:\"bf75aef4c22551bcf024a77b0a5f5fd7\";'),
(3043,'extensionScannerNotAffected','3edb33dc9fb3f10c4ee1516d69d22f1a','s:32:\"3edb33dc9fb3f10c4ee1516d69d22f1a\";'),
(3044,'extensionScannerNotAffected','927633a7b3129f06fa506b0d458cd461','s:32:\"927633a7b3129f06fa506b0d458cd461\";'),
(3045,'extensionScannerNotAffected','e6abadec7619cc7ccfc06ca29505d1e4','s:32:\"e6abadec7619cc7ccfc06ca29505d1e4\";'),
(3046,'extensionScannerNotAffected','4ce1939046edae0765089bf05315888a','s:32:\"4ce1939046edae0765089bf05315888a\";'),
(3047,'extensionScannerNotAffected','1d67b576365955875136043bf6bee959','s:32:\"1d67b576365955875136043bf6bee959\";'),
(3048,'extensionScannerNotAffected','9b96dae8949ecb3893cbca73e0ab5617','s:32:\"9b96dae8949ecb3893cbca73e0ab5617\";'),
(3049,'extensionScannerNotAffected','97ce31778e6391ef7a447f72b2c198a1','s:32:\"97ce31778e6391ef7a447f72b2c198a1\";'),
(3050,'extensionScannerNotAffected','9bbe46e9f29b9fd928ca0d0f4a86aad9','s:32:\"9bbe46e9f29b9fd928ca0d0f4a86aad9\";'),
(3051,'extensionScannerNotAffected','29b27a1faa229d6dd9673d7cfb675f34','s:32:\"29b27a1faa229d6dd9673d7cfb675f34\";'),
(3052,'extensionScannerNotAffected','652a590e07c5655d4c008ee6af48811f','s:32:\"652a590e07c5655d4c008ee6af48811f\";'),
(3053,'extensionScannerNotAffected','d17e594c2b1f50c72cd8b62550aa1dcd','s:32:\"d17e594c2b1f50c72cd8b62550aa1dcd\";'),
(3054,'extensionScannerNotAffected','5b8e649cf57fa7bb2d7264559a190eb0','s:32:\"5b8e649cf57fa7bb2d7264559a190eb0\";'),
(3055,'extensionScannerNotAffected','fda4af81c962ae92f8d1673ab2b063fe','s:32:\"fda4af81c962ae92f8d1673ab2b063fe\";'),
(3056,'extensionScannerNotAffected','4ea3e98f23cd4a2f6baf717f83d3d3d3','s:32:\"4ea3e98f23cd4a2f6baf717f83d3d3d3\";'),
(3057,'extensionScannerNotAffected','6cbd3bcd01860a60e94788088ea5c6a6','s:32:\"6cbd3bcd01860a60e94788088ea5c6a6\";'),
(3058,'extensionScannerNotAffected','510efa94c0ee42f17d1f05ae810251dd','s:32:\"510efa94c0ee42f17d1f05ae810251dd\";'),
(3059,'extensionScannerNotAffected','bdf4e4a8423e8e80705e9eafcbec16e6','s:32:\"bdf4e4a8423e8e80705e9eafcbec16e6\";'),
(3060,'extensionScannerNotAffected','69bef04a629b5817cf16a08e3fda32b7','s:32:\"69bef04a629b5817cf16a08e3fda32b7\";'),
(3061,'extensionScannerNotAffected','63e57460e0bdefeffef0edbd28fa0acf','s:32:\"63e57460e0bdefeffef0edbd28fa0acf\";'),
(3062,'extensionScannerNotAffected','ce363e728964326b673d958567a829f7','s:32:\"ce363e728964326b673d958567a829f7\";'),
(3063,'extensionScannerNotAffected','9dc065b79a3e17c8c4ebe75a16db0079','s:32:\"9dc065b79a3e17c8c4ebe75a16db0079\";'),
(3064,'extensionScannerNotAffected','191e3ee8972e2cb93fc7122f83650e9b','s:32:\"191e3ee8972e2cb93fc7122f83650e9b\";'),
(3065,'extensionScannerNotAffected','b2fa6c9a867bec6bcefb002d22caa81d','s:32:\"b2fa6c9a867bec6bcefb002d22caa81d\";'),
(3066,'extensionScannerNotAffected','3b2bf7afff81e5d27fe73b7efaa53850','s:32:\"3b2bf7afff81e5d27fe73b7efaa53850\";'),
(3067,'extensionScannerNotAffected','dcb6c1625fa3f587a61ace48093f8513','s:32:\"dcb6c1625fa3f587a61ace48093f8513\";'),
(3068,'extensionScannerNotAffected','db7b14433498a1befb8c85c227714269','s:32:\"db7b14433498a1befb8c85c227714269\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
(1,1,1739809436,1628488695,1,0,0,0,0,256,NULL,0,0,0,0,0,'Viewer',1,3,'EXT:dlf/Configuration/TypoScript/Toolbox/,EXT:ddb_kitodo_zeitungsportal/Configuration/TypoScript','constant {\r\n  # id of configuration directory (Kitodo Konfiguration)\r\n  configPid = 2\r\n  # id of Viewer page\r\n  viewerPid = 4\r\n  # id of Solr Core\r\n  solrCore = 1\r\n  #page url on which viewer will be visible\r\n  #baseUrl = https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/\r\n  #baseUrl = https://viewer-dzp.deutsche-digitale-bibliothek.de/\r\n  baseUrl = https://ddev-ddb-zeitungsportal.ddev.site/\r\n  #baseUrl = https://dev-zpviewerdev.fiz-karlsruhe.de/\r\n  #baseUrl = http://ddb-p2-vmzpviewer01:8001/zp-viewer\r\n}','# dev\r\n#plugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record\r\n\r\n# test\r\n#plugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://api-q1.deutsche-digitale-bibliothek.de/2/items/*id*/source/record\r\n\r\n# production\r\nplugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\nplugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://api.deutsche-digitale-bibliothek.de/2/items/*id*/source/record\r\n','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadata`
--

LOCK TABLES `tx_dlf_metadata` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadata` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadata` VALUES
(1,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2816,NULL,'Wikipedia','wikipedia',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(2,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2688,NULL,'Wikidata','wikidata',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(3,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2624,NULL,'Geonamen','geonames',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(4,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2592,NULL,'Objektstandort','object_location',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(5,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2576,NULL,'Alternative Objektnamen','object_alternative_names',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(6,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2568,NULL,'Objektname','object_name',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(7,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2564,NULL,'Identifikator','identifier',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(8,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2562,NULL,'Beschreibung','description',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(9,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2561,NULL,'Rechteinformation','rights_info',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(10,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2560,NULL,'Vergriffene Werke','out_of_print',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(11,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2304,NULL,'Zugriffsinformationen','restrictions',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(12,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2176,NULL,'Nutzungsbedingungen','terms',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(13,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2112,NULL,'Lizenz','license',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(14,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2080,NULL,'Geoinformationen','coordinates',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(15,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2064,NULL,'Kitodo-Vorgangsnummer','prod_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(16,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2056,NULL,'OAI-Identifier','record_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(17,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2052,NULL,'Verbund-Identifier','union_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(18,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2050,NULL,'OPAC-Identifier','opac_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(19,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2049,NULL,'URN','urn',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(20,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,2048,NULL,'PURL','purl',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(21,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1792,NULL,'Besitzer','owner',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(22,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1664,NULL,'Sammlung(en)','collection',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,0,1,1,0,1,0,0,0),
(23,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1600,NULL,'Sprache','language',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(24,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1568,NULL,'Erscheinungsjahr','year',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,1,1,0,0),
(25,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1552,NULL,'Erscheinungsort','place',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,1,1,1,1,1,1,0,0),
(26,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1544,NULL,'Autor','author',0,'','key.wrap = <dt class=\"tx-dlf-metadata-author\">|</dt>\nvalue.required = 1\nvalue.split.token.char = 31\nvalue.split.cObjNum = 1\nvalue.split.1.1 = CASE\nvalue.split.1.1.key.data = register:SPLIT_COUNT\nvalue.split.1.1.0 = LOAD_REGISTER\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\nvalue.split.1.1.1 = LOAD_REGISTER\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\nvalue.postCObject = TEXT\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-author\">|</dd>',1,1,1,2,1,1,1,1,0),
(27,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1540,NULL,'Datum','date',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,0,1,0,0),
(28,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1538,NULL,'Band','volume',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,0,1,0,0),
(29,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1537,NULL,'Titel','title',0,'','key.wrap = <dt class=\"tx-dlf-metadata-title\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-title\">|</dd>',1,1,1,2,1,0,1,1,0),
(30,2,1741698610,1741698610,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"label\":\"\",\"index_name\":\"\",\"default_value\":\"\",\"wrap\":\"\",\"index_tokenized\":\"\",\"index_stored\":\"\",\"index_indexed\":\"\",\"index_boost\":\"\",\"is_sortable\":\"\",\"is_facet\":\"\",\"is_listed\":\"\",\"index_autocomplete\":\"\",\"status\":\"\",\"format\":\"\"}',0,1536,NULL,'Strukturtyp','type',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,1,1,0,0),
(31,2,1741698610,1741698610,3,0,1,1,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Wikipedia\",\"index_name\":\"wikipedia\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1280,'{\"wrap\":\"parent\"}','Wikipedia','wikipedia',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(32,2,1741698610,1741698610,3,0,1,2,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Wikidata\",\"index_name\":\"wikidata\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1152,'{\"wrap\":\"parent\"}','Wikidata','wikidata',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(33,2,1741698610,1741698610,3,0,1,3,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Geonamen\",\"index_name\":\"geonames\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1088,'{\"wrap\":\"parent\"}','Geonames','geonames',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(34,2,1741698610,1741698610,3,0,1,4,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Objektstandort\",\"index_name\":\"object_location\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1056,'{\"wrap\":\"parent\"}','Object Location','object_location',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(35,2,1741698610,1741698610,3,0,1,5,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Alternative Objektnamen\",\"index_name\":\"object_alternative_names\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1040,'{\"wrap\":\"parent\"}','Object Alternative Names','object_alternative_names',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(36,2,1741698610,1741698610,3,0,1,6,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Objektname\",\"index_name\":\"object_name\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1032,'{\"wrap\":\"parent\"}','Object Name','object_name',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(37,2,1741698610,1741698610,3,0,1,7,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Identifikator\",\"index_name\":\"identifier\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1028,'{\"wrap\":\"parent\"}','Identifier','identifier',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(38,2,1741698610,1741698610,3,0,1,8,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Beschreibung\",\"index_name\":\"description\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1026,'{\"wrap\":\"parent\"}','Description','description',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(39,2,1741698610,1741698610,3,0,1,9,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Rechteinformation\",\"index_name\":\"rights_info\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1025,'{\"wrap\":\"parent\"}','Rights Information','rights_info',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(40,2,1741698610,1741698610,3,0,1,10,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Vergriffene Werke\",\"index_name\":\"out_of_print\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,1024,'{\"wrap\":\"parent\"}','Out Of Print Works','out_of_print',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(41,2,1741698610,1741698610,3,0,1,11,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Zugriffsinformationen\",\"index_name\":\"restrictions\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,768,'{\"wrap\":\"parent\"}','Restrictions on Access','restrictions',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(42,2,1741698610,1741698610,3,0,1,12,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Nutzungsbedingungen\",\"index_name\":\"terms\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,640,'{\"wrap\":\"parent\"}','Terms of Use','terms',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(43,2,1741698610,1741698610,3,0,1,13,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Lizenz\",\"index_name\":\"license\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,576,'{\"wrap\":\"parent\"}','License','license',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),
(44,2,1741698610,1741698610,3,0,1,14,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Geoinformationen\",\"index_name\":\"coordinates\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,544,'{\"wrap\":\"parent\"}','Coordinates','coordinates',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),
(45,2,1741698610,1741698610,3,0,1,15,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Kitodo-Vorgangsnummer\",\"index_name\":\"prod_id\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,528,'{\"wrap\":\"parent\"}','Kitodo Process Number','prod_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(46,2,1741698610,1741698610,3,0,1,16,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"OAI-Identifier\",\"index_name\":\"record_id\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,520,'{\"wrap\":\"parent\"}','OAI Identifier','record_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(47,2,1741698610,1741698610,3,0,1,17,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Verbund-Identifier\",\"index_name\":\"union_id\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,516,'{\"wrap\":\"parent\"}','Union Catalog ID','union_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(48,2,1741698610,1741698610,3,0,1,18,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"OPAC-Identifier\",\"index_name\":\"opac_id\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,514,'{\"wrap\":\"parent\"}','OPAC Identifier','opac_id',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(49,2,1741698610,1741698610,3,0,1,19,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"URN\",\"index_name\":\"urn\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.setContentToCurrent = 1\\nvalue.typolink.parameter.current = 1\\nvalue.typolink.parameter.prepend = TEXT\\nvalue.typolink.parameter.prepend.value = http:\\/\\/nbn-resolving.de\\/\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,513,'{\"wrap\":\"parent\"}','URN','urn',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),
(50,2,1741698610,1741698610,3,0,1,20,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"PURL\",\"index_name\":\"purl\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.setContentToCurrent = 1\\nvalue.typolink.parameter.current = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"0\",\"index_boost\":\"0\",\"is_sortable\":\"0\",\"is_facet\":\"0\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,512,'{\"wrap\":\"parent\"}','PURL','purl',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),
(51,2,1741698610,1741698610,3,0,1,21,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Besitzer\",\"index_name\":\"owner\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,256,'{\"wrap\":\"parent\"}','Owner','owner',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(52,2,1741698610,1741698610,3,0,1,22,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Sammlung(en)\",\"index_name\":\"collection\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"1\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,128,'{\"wrap\":\"parent\"}','Collection(s)','collection',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,0,1,1,0,1,0,0,0),
(53,2,1741698610,1741698610,3,0,1,23,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Sprache\",\"index_name\":\"language\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"0\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"0\",\"is_facet\":\"1\",\"is_listed\":\"0\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,64,'{\"wrap\":\"parent\"}','Language','language',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),
(54,2,1741698610,1741698610,3,0,1,24,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Erscheinungsjahr\",\"index_name\":\"year\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"1\",\"is_facet\":\"1\",\"is_listed\":\"1\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,32,'{\"wrap\":\"parent\"}','Year of Publication','year',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,1,1,0,0),
(55,2,1741698610,1741698610,3,0,1,25,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Erscheinungsort\",\"index_name\":\"place\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"1\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"1\",\"is_facet\":\"1\",\"is_listed\":\"1\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,16,'{\"wrap\":\"parent\"}','Place of Publication','place',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,1,1,1,1,1,1,0,0),
(56,2,1741698610,1741698610,3,0,1,26,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Autor\",\"index_name\":\"author\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt class=\\\"tx-dlf-metadata-author\\\">|<\\/dt>\\nvalue.required = 1\\nvalue.split.token.char = 31\\nvalue.split.cObjNum = 1\\nvalue.split.1.1 = CASE\\nvalue.split.1.1.key.data = register:SPLIT_COUNT\\nvalue.split.1.1.0 = LOAD_REGISTER\\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\\nvalue.split.1.1.1 = LOAD_REGISTER\\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\\nvalue.postCObject = TEXT\\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\\nvalue.postCObject.value.insertData = 1\\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\\nvalue.wrap = <dd class=\\\"tx-dlf-metadata-author\\\">|<\\/dd>\",\"index_tokenized\":\"1\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"2\",\"is_sortable\":\"1\",\"is_facet\":\"1\",\"is_listed\":\"1\",\"index_autocomplete\":\"1\",\"status\":\"0\",\"format\":\"0\"}',0,8,'{\"wrap\":\"parent\"}','Author','author',0,'','key.wrap = <dt class=\"tx-dlf-metadata-author\">|</dt>\nvalue.required = 1\nvalue.split.token.char = 31\nvalue.split.cObjNum = 1\nvalue.split.1.1 = CASE\nvalue.split.1.1.key.data = register:SPLIT_COUNT\nvalue.split.1.1.0 = LOAD_REGISTER\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\nvalue.split.1.1.1 = LOAD_REGISTER\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\nvalue.postCObject = TEXT\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-author\">|</dd>',1,1,1,2,1,1,1,1,0),
(57,2,1741698610,1741698610,3,0,1,27,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Datum\",\"index_name\":\"date\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"1\",\"is_sortable\":\"1\",\"is_facet\":\"0\",\"is_listed\":\"1\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,4,'{\"wrap\":\"parent\"}','Date','date',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,0,1,0,0),
(58,2,1741698610,1741698610,3,0,1,28,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Band\",\"index_name\":\"volume\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"0\",\"index_boost\":\"1\",\"is_sortable\":\"1\",\"is_facet\":\"0\",\"is_listed\":\"1\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,2,'{\"wrap\":\"parent\"}','Volume','volume',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,0,1,0,0),
(59,2,1741698610,1741698610,3,0,1,29,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Titel\",\"index_name\":\"title\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt class=\\\"tx-dlf-metadata-title\\\">|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd class=\\\"tx-dlf-metadata-title\\\">|<\\/dd>\",\"index_tokenized\":\"1\",\"index_stored\":\"1\",\"index_indexed\":\"1\",\"index_boost\":\"2\",\"is_sortable\":\"1\",\"is_facet\":\"0\",\"is_listed\":\"1\",\"index_autocomplete\":\"1\",\"status\":\"0\",\"format\":\"0\"}',0,1,'{\"wrap\":\"parent\"}','Title','title',0,'','key.wrap = <dt class=\"tx-dlf-metadata-title\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-title\">|</dd>',1,1,1,2,1,0,1,1,0),
(60,2,1741698610,1741698610,3,0,1,30,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"label\":\"Strukturtyp\",\"index_name\":\"type\",\"default_value\":\"\",\"wrap\":\"key.wrap = <dt>|<\\/dt>\\nvalue.required = 1\\nvalue.wrap = <dd>|<\\/dd>\",\"index_tokenized\":\"0\",\"index_stored\":\"1\",\"index_indexed\":\"0\",\"index_boost\":\"1\",\"is_sortable\":\"1\",\"is_facet\":\"1\",\"is_listed\":\"1\",\"index_autocomplete\":\"0\",\"status\":\"0\",\"format\":\"0\"}',0,0,'{\"wrap\":\"parent\"}','Type','type',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,1,1,0,0);
/*!40000 ALTER TABLE `tx_dlf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadataformat`
--

DROP TABLE IF EXISTS `tx_dlf_metadataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
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
(1,2,1741697093,1628486790,1,1,1,1,'./mods:accessCondition[@type=\"info\"]','',0,NULL,0,'',0),
(2,2,1741697093,1628486790,1,1,2,1,'./mods:accessCondition[@type=\"out of print work\"]','',0,NULL,0,'',0),
(3,2,1741697093,1628486790,1,1,3,1,'./mods:accessCondition[@type=\"restriction on access\"]/@xlink:href','',0,NULL,0,'',0),
(4,2,1741697093,1628486790,1,1,4,1,'./mods:accessCondition[@type=\"local terms of use\"]/@xlink:href','',0,NULL,0,'',0),
(5,2,1741697093,1628486790,1,1,5,1,'./mods:accessCondition[@type=\"use and reproduction\"]/@xlink:href','',0,NULL,0,'',0),
(6,2,1741697093,1628486790,1,1,6,1,'./mods:subject/mods:cartographics/mods:coordinates','',0,NULL,0,'',0),
(7,2,1741697093,1628486790,1,1,7,5,'$.metadata.[?(@.label==\'Kitodo\')].value','',0,NULL,0,'',0),
(8,2,1741697093,1628486790,1,1,7,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"kitodo\"]','',0,NULL,0,'',0),
(9,2,1741697093,1628486790,1,1,7,1,'./mods:identifier[@type=\"kitodo\"]','',0,NULL,0,'',0),
(10,2,1741697093,1628486790,1,1,8,5,'$[\'@id\']','',0,NULL,0,'',0),
(11,2,1741697093,1628486790,1,1,8,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"recordIdentifier\"]','',0,NULL,0,'',0),
(12,2,1741697093,1628486790,1,1,8,1,'./mods:recordInfo/mods:recordIdentifier','',0,NULL,0,'',0),
(13,2,1741697093,1628486790,1,1,9,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"mmid\"]','',0,NULL,0,'',0),
(14,2,1741697093,1628486790,1,1,9,1,'./mods:identifier[@type=\"ppn\"]','',0,NULL,0,'',0),
(15,2,1741697093,1628486790,1,1,10,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"opac\"]','',0,NULL,0,'',0),
(16,2,1741697093,1628486790,1,1,10,1,'./mods:identifier[@type=\"opac\"]','',0,NULL,0,'',0),
(17,2,1741697093,1628486790,1,1,11,5,'$.metadata.[?(@.label==\'URN\')].value','',0,NULL,0,'',0),
(18,2,1741697093,1628486790,1,1,11,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"urn\"]','',0,NULL,0,'',0),
(19,2,1741697093,1628486790,1,1,11,1,'./mods:identifier[@type=\"urn\"]','',0,NULL,0,'',0),
(20,2,1741697093,1628486790,1,1,12,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"purl\"]','',0,NULL,0,'',0),
(21,2,1741697093,1628486790,1,1,12,1,'./mods:identifier[@type=\"purl\"]','',0,NULL,0,'',0),
(22,2,1741697093,1628486790,1,1,13,5,'$.metadata.[?(@.label==\'Owner\')].value','',0,NULL,0,'',0),
(23,2,1741697093,1628486790,1,1,13,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:publisher','',0,NULL,0,'',0),
(24,2,1741697093,1628486790,1,1,13,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0,NULL,0,'',0),
(25,2,1741697093,1628486790,1,1,14,5,'$.metadata.[?(@.label==\'Collection\')].value','',0,NULL,0,'',0),
(26,2,1741697093,1628486790,1,1,14,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:collection','',0,NULL,0,'',0),
(27,2,1741697093,1628486790,1,1,14,1,'./mods:classification','',0,NULL,0,'',0),
(28,2,1741697093,1628486790,1,1,15,1,'./mods:language/mods:languageTerm','',0,NULL,0,'',0),
(29,2,1741697093,1628486790,1,1,16,5,'$.metadata.[?(@.label==\'Date of publication\')].value','',0,NULL,0,'',0),
(30,2,1741697093,1628486790,1,1,16,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate/@when',0,NULL,0,'',0),
(31,2,1741697093,1628486790,1,1,17,5,'$.metadata.[?(@.label==\'Place of publication\')].value','',0,NULL,0,'',0),
(32,2,1741697093,1628486790,1,1,17,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origPlace','',0,NULL,0,'',0),
(33,2,1741697093,1628486790,1,1,18,5,'$.metadata.[?(@.label==\'Author\')].value','',0,NULL,0,'',0),
(34,2,1741697093,1628486790,1,1,18,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:name','',0,NULL,0,'',0),
(35,2,1741697093,1628486790,1,1,19,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,NULL,0,'',0),
(36,2,1741697093,1628486790,1,1,20,5,'$[label]','',0,NULL,0,'',0),
(37,2,1741697093,1628486790,1,1,20,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:note[@type=\"caption\"]','',0,NULL,0,'',0),
(38,2,1741697093,1628486790,1,1,20,1,'concat(./mods:titleInfo/mods:nonSort,\" \",./mods:titleInfo/mods:title)','./mods:titleInfo/mods:title',0,NULL,0,'',0),
(39,2,1741697093,1628486790,1,1,21,5,'$.metadata.[?(@.label==\'Manifest Type\')].value','',0,NULL,0,'',0),
(40,2,1741697093,1718807170,0,1,23,1,'./mods:originInfo/*[@encoding=\"iso8601\" or @encoding=\"w3cdtf\"][@keyDate=\"yes\"]','',0,NULL,0,'',0),
(41,2,1741697093,1718807170,0,1,25,1,'./mods:recordInfo/mods:recordInfoNote','',0,NULL,0,'',0),
(42,2,1741697093,1718807170,0,1,27,1,'./mods:identifier','',0,NULL,0,'',0),
(43,2,1741697093,1718807170,0,1,29,1,'./mods:relatedItem/mods:titleInfo[not(@displayLabel=\"alternative\")]/mods:title','',0,NULL,0,'',0),
(44,2,1741697093,1718807170,0,1,31,1,'./mods:relatedItem/mods:titleInfo[@displayLabel=\"alternative\"]/mods:title','',0,NULL,0,'',0),
(45,2,1741697093,1718807170,0,1,33,1,'./mods:relatedItem/mods:location/mods:physicalLocation','',0,NULL,0,'',0),
(46,2,1741697093,1718807170,0,1,35,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"geonames\"]','',0,NULL,0,'',0),
(47,2,1741697093,1718807170,0,1,37,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikidata\"]','',0,NULL,0,'',0),
(48,2,1741697093,1718807170,0,1,39,1,'./mods:relatedItem/mods:location/mods:url[@displayLabel=\"wikipedia\"]','',0,NULL,0,'',0);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_printer`
--

DROP TABLE IF EXISTS `tx_dlf_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
(1,2,1723559880,0,0,0,'newspaper-issues','newspaper-issues'),
(7,2,1736265925,1731067553,0,0,'dlfCore0 (PID 2)','dlfCore0');
/*!40000 ALTER TABLE `tx_dlf_solrcores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_structures`
--

DROP TABLE IF EXISTS `tx_dlf_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_structures`
--

LOCK TABLES `tx_dlf_structures` WRITE;
/*!40000 ALTER TABLE `tx_dlf_structures` DISABLE KEYS */;
INSERT INTO `tx_dlf_structures` VALUES
(1,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Jahr','year','',0,0),
(2,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Band','volume','',0,0),
(3,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Vers','verse','',0,0),
(4,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Titelseite','title_page','',0,0),
(5,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Text','text','',0,0),
(6,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Tabelle','table','',0,0),
(7,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Unterbestand','subinventory','',0,0),
(8,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Studie','study','',0,0),
(9,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Stempel','stamp','',0,0),
(10,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Rücken','spine','',0,0),
(11,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Abschnitt','section','',0,0),
(12,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Siegel','seal','',0,0),
(13,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Schema','scheme','',0,0),
(14,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Forschungsbericht','research_paper','',0,0),
(15,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Bericht','report','',0,0),
(16,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Amtsbuch','register','',0,0),
(17,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Besitznachweis','provenance','',0,0),
(18,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Tagungsband','proceeding','',0,0),
(19,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Privilegien','privileges','',0,0),
(20,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Druckermarke','printers_mark','',0,0),
(21,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Druckerzeugnis','printed_archives','',0,0),
(22,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Vorabdruck','preprint','',0,0),
(23,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Vorwort','preface','',0,0),
(24,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Plakat','poster','',0,0),
(25,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Plan','plan','',0,0),
(26,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Fotografie','photograph','',0,0),
(27,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Zeitschrift','periodical','',0,0),
(28,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Spiegel','paste_down','',0,0),
(29,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Vortrag','paper','',0,0),
(30,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Seite','page','',0,0),
(31,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Buchschmuck','ornament','',0,0),
(32,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Bescheid','official_notification','',0,0),
(33,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Vermerk','note','',0,0),
(34,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Zeitung','newspaper','',0,0),
(35,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Musiknotation','musical_notation','',0,0),
(36,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Mehrbändiges Werk','multivolume_work','',0,0),
(37,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Monat','month','',0,0),
(38,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Monographie','monograph','',0,0),
(39,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Karte','map','',0,0),
(40,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Handschrift','manuscript','',0,0),
(41,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Masterarbeit','master_thesis','',0,0),
(42,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Magisterarbeit','magister_thesis','',0,0),
(43,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Brief','letter','',0,0),
(44,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Vorlesung','lecture','',0,0),
(45,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Flugblatt','leaflet','',0,0),
(46,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Grundbuch','land_register','',0,0),
(47,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Urteil','judgement','',0,0),
(48,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Ausgabe','issue','',0,0),
(49,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Bestand','inventory','',0,0),
(50,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Initialschmuck','initial_decoration','',0,0),
(51,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Register','index','',0,0),
(52,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Impressum','imprint','',0,0),
(53,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Bild','image','',0,0),
(54,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Illustration','illustration','',0,0),
(55,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Habilitation','habilitation_thesis','',0,0),
(56,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Grundriss','ground_plan','',0,0),
(57,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Fragment','fragment','',0,0),
(58,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Mappe','folder','',0,0),
(59,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Akte','file','',0,0),
(60,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Abbildung','figure','',0,0),
(61,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Faszikel','fascicle','',0,0),
(62,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Konzertprogramm','ephemera','',0,0),
(63,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Eintrag','entry','',0,0),
(64,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Kupfertitel','engraved_titlepage','',0,0),
(65,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Vorsatz','endsheet','',0,0),
(66,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Schnitt','edge','',0,0),
(67,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Vorgang','dossier','',0,0),
(68,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Dokument','document','',0,0),
(69,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Dissertation','doctoral_thesis','',0,0),
(70,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Diplomarbeit','diploma_thesis','',0,0),
(71,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Widmung','dedication','',0,0),
(72,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Tag','day','',0,0),
(73,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Vorderdeckel','cover_back','',0,0),
(74,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Rückdeckel','cover_front','',0,0),
(75,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Deckel','cover','',0,0),
(76,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Errata','corrigenda','',0,0),
(77,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Inhaltsverzeichnis','contents','',0,0),
(78,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Enthaltenes Werk','contained_work','',0,0),
(79,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Kolophon','colophon','',0,0),
(80,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Bogensignatur','collation','',0,0),
(81,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Kapitel','chapter','',0,0),
(82,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Kartular','cartulary','',0,0),
(83,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Exlibris','bookplate','',0,0),
(84,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Einband','binding','',0,0),
(85,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Bachelorarbeit','bachelor_thesis','',0,0),
(86,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Atlas','atlas','',0,0),
(87,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Artikel','article','',0,0),
(88,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Annotation','annotation','',0,0),
(89,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Album','album','',0,0),
(90,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Anrede','address','',0,0),
(91,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,0,'Beilage','additional','',0,0),
(92,2,1741699019,1741699019,3,0,0,0,'{\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"toplevel\":\"\",\"label\":\"\",\"index_name\":\"\",\"oai_name\":\"\",\"thumbnail\":\"\",\"status\":\"\"}',0,NULL,1,'Urkunde','act','',0,0),
(93,2,1741699019,1741699019,3,0,1,1,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Jahr\",\"index_name\":\"year\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Year','year','',0,0),
(94,2,1741699019,1741699019,3,0,1,2,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Band\",\"index_name\":\"volume\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Volume','volume','',0,0),
(95,2,1741699019,1741699019,3,0,1,3,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Vers\",\"index_name\":\"verse\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Verse','verse','',0,0),
(96,2,1741699019,1741699019,3,0,1,4,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Titelseite\",\"index_name\":\"title_page\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Titlepage','title_page','',0,0),
(97,2,1741699019,1741699019,3,0,1,5,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Text\",\"index_name\":\"text\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Text','text','',0,0),
(98,2,1741699019,1741699019,3,0,1,6,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Tabelle\",\"index_name\":\"table\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Table','table','',0,0),
(99,2,1741699019,1741699019,3,0,1,7,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Unterbestand\",\"index_name\":\"subinventory\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Subinventory','subinventory','',0,0),
(100,2,1741699019,1741699019,3,0,1,8,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Studie\",\"index_name\":\"study\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Study','study','',0,0),
(101,2,1741699019,1741699019,3,0,1,9,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Stempel\",\"index_name\":\"stamp\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Stamp','stamp','',0,0),
(102,2,1741699019,1741699019,3,0,1,10,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"R\\u00fccken\",\"index_name\":\"spine\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Spine','spine','',0,0),
(103,2,1741699019,1741699019,3,0,1,11,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Abschnitt\",\"index_name\":\"section\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Section','section','',0,0),
(104,2,1741699019,1741699019,3,0,1,12,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Siegel\",\"index_name\":\"seal\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Seal','seal','',0,0),
(105,2,1741699019,1741699019,3,0,1,13,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Schema\",\"index_name\":\"scheme\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Scheme','scheme','',0,0),
(106,2,1741699019,1741699019,3,0,1,14,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Forschungsbericht\",\"index_name\":\"research_paper\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Research Paper','research_paper','',0,0),
(107,2,1741699019,1741699019,3,0,1,15,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Bericht\",\"index_name\":\"report\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Report','report','',0,0),
(108,2,1741699019,1741699019,3,0,1,16,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Amtsbuch\",\"index_name\":\"register\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Register','register','',0,0),
(109,2,1741699019,1741699019,3,0,1,17,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Besitznachweis\",\"index_name\":\"provenance\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Provenance','provenance','',0,0),
(110,2,1741699019,1741699019,3,0,1,18,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Tagungsband\",\"index_name\":\"proceeding\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Proceeding','proceeding','',0,0),
(111,2,1741699019,1741699019,3,0,1,19,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Privilegien\",\"index_name\":\"privileges\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Privileges','privileges','',0,0),
(112,2,1741699019,1741699019,3,0,1,20,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Druckermarke\",\"index_name\":\"printers_mark\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Printers Mark','printers_mark','',0,0),
(113,2,1741699019,1741699019,3,0,1,21,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Druckerzeugnis\",\"index_name\":\"printed_archives\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Printed Archives','printed_archives','',0,0),
(114,2,1741699019,1741699019,3,0,1,22,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Vorabdruck\",\"index_name\":\"preprint\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Preprint','preprint','',0,0),
(115,2,1741699019,1741699019,3,0,1,23,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Vorwort\",\"index_name\":\"preface\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Preface','preface','',0,0),
(116,2,1741699019,1741699019,3,0,1,24,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Plakat\",\"index_name\":\"poster\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Poster','poster','',0,0),
(117,2,1741699019,1741699019,3,0,1,25,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Plan\",\"index_name\":\"plan\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Plan','plan','',0,0),
(118,2,1741699019,1741699019,3,0,1,26,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Fotografie\",\"index_name\":\"photograph\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Photograph','photograph','',0,0),
(119,2,1741699019,1741699019,3,0,1,27,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Zeitschrift\",\"index_name\":\"periodical\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Periodical','periodical','',0,0),
(120,2,1741699019,1741699019,3,0,1,28,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Spiegel\",\"index_name\":\"paste_down\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Paste Down','paste_down','',0,0),
(121,2,1741699019,1741699019,3,0,1,29,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Vortrag\",\"index_name\":\"paper\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Paper','paper','',0,0),
(122,2,1741699019,1741699019,3,0,1,30,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Seite\",\"index_name\":\"page\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Page','page','',0,0),
(123,2,1741699019,1741699019,3,0,1,31,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Buchschmuck\",\"index_name\":\"ornament\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Ornament','ornament','',0,0),
(124,2,1741699019,1741699019,3,0,1,32,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Bescheid\",\"index_name\":\"official_notification\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Official Notification','official_notification','',0,0),
(125,2,1741699019,1741699019,3,0,1,33,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Vermerk\",\"index_name\":\"note\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Note','note','',0,0),
(126,2,1741699019,1741699019,3,0,1,34,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Zeitung\",\"index_name\":\"newspaper\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Newspaper','newspaper','',0,0),
(127,2,1741699019,1741699019,3,0,1,35,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Musiknotation\",\"index_name\":\"musical_notation\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Musical Notation','musical_notation','',0,0),
(128,2,1741699019,1741699019,3,0,1,36,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Mehrb\\u00e4ndiges Werk\",\"index_name\":\"multivolume_work\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Multivolume Work','multivolume_work','',0,0),
(129,2,1741699019,1741699019,3,0,1,37,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Monat\",\"index_name\":\"month\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Month','month','',0,0),
(130,2,1741699019,1741699019,3,0,1,38,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Monographie\",\"index_name\":\"monograph\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Monograph','monograph','',0,0),
(131,2,1741699019,1741699019,3,0,1,39,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Karte\",\"index_name\":\"map\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Map','map','',0,0),
(132,2,1741699019,1741699019,3,0,1,40,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Handschrift\",\"index_name\":\"manuscript\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Manuscript','manuscript','',0,0),
(133,2,1741699019,1741699019,3,0,1,41,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Masterarbeit\",\"index_name\":\"master_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Master Thesis','master_thesis','',0,0),
(134,2,1741699019,1741699019,3,0,1,42,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Magisterarbeit\",\"index_name\":\"magister_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Magister Thesis','magister_thesis','',0,0),
(135,2,1741699019,1741699019,3,0,1,43,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Brief\",\"index_name\":\"letter\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Letter','letter','',0,0),
(136,2,1741699019,1741699019,3,0,1,44,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Vorlesung\",\"index_name\":\"lecture\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Lecture','lecture','',0,0),
(137,2,1741699019,1741699019,3,0,1,45,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Flugblatt\",\"index_name\":\"leaflet\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Leaflet','leaflet','',0,0),
(138,2,1741699019,1741699019,3,0,1,46,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Grundbuch\",\"index_name\":\"land_register\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Land Register','land_register','',0,0),
(139,2,1741699019,1741699019,3,0,1,47,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Urteil\",\"index_name\":\"judgement\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Judgement','judgement','',0,0),
(140,2,1741699019,1741699019,3,0,1,48,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Ausgabe\",\"index_name\":\"issue\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Issue','issue','',0,0),
(141,2,1741699019,1741699019,3,0,1,49,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Bestand\",\"index_name\":\"inventory\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Inventory','inventory','',0,0),
(142,2,1741699019,1741699019,3,0,1,50,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Initialschmuck\",\"index_name\":\"initial_decoration\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Initial Decoration','initial_decoration','',0,0),
(143,2,1741699019,1741699019,3,0,1,51,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Register\",\"index_name\":\"index\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Index','index','',0,0),
(144,2,1741699019,1741699019,3,0,1,52,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Impressum\",\"index_name\":\"imprint\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Imprint','imprint','',0,0),
(145,2,1741699019,1741699019,3,0,1,53,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Bild\",\"index_name\":\"image\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Image','image','',0,0),
(146,2,1741699019,1741699019,3,0,1,54,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Illustration\",\"index_name\":\"illustration\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Illustration','illustration','',0,0),
(147,2,1741699019,1741699019,3,0,1,55,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Habilitation\",\"index_name\":\"habilitation_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Habilitation Thesis','habilitation_thesis','',0,0),
(148,2,1741699019,1741699019,3,0,1,56,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Grundriss\",\"index_name\":\"ground_plan\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Ground Plan','ground_plan','',0,0),
(149,2,1741699019,1741699019,3,0,1,57,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Fragment\",\"index_name\":\"fragment\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Fragment','fragment','',0,0),
(150,2,1741699019,1741699019,3,0,1,58,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Mappe\",\"index_name\":\"folder\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Folder','folder','',0,0),
(151,2,1741699019,1741699019,3,0,1,59,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Akte\",\"index_name\":\"file\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'File','file','',0,0),
(152,2,1741699019,1741699019,3,0,1,60,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Abbildung\",\"index_name\":\"figure\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Figure','figure','',0,0),
(153,2,1741699019,1741699019,3,0,1,61,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Faszikel\",\"index_name\":\"fascicle\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Fascicle','fascicle','',0,0),
(154,2,1741699019,1741699019,3,0,1,62,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Konzertprogramm\",\"index_name\":\"ephemera\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Ephemera','ephemera','',0,0),
(155,2,1741699019,1741699019,3,0,1,63,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Eintrag\",\"index_name\":\"entry\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Entry','entry','',0,0),
(156,2,1741699019,1741699019,3,0,1,64,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Kupfertitel\",\"index_name\":\"engraved_titlepage\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Engraved Titlepage','engraved_titlepage','',0,0),
(157,2,1741699019,1741699019,3,0,1,65,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Vorsatz\",\"index_name\":\"endsheet\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Endsheet','endsheet','',0,0),
(158,2,1741699019,1741699019,3,0,1,66,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Schnitt\",\"index_name\":\"edge\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Edge','edge','',0,0),
(159,2,1741699019,1741699019,3,0,1,67,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Vorgang\",\"index_name\":\"dossier\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Dossier','dossier','',0,0),
(160,2,1741699019,1741699019,3,0,1,68,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Dokument\",\"index_name\":\"document\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Document','document','',0,0),
(161,2,1741699019,1741699019,3,0,1,69,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Dissertation\",\"index_name\":\"doctoral_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Doctoral Thesis','doctoral_thesis','',0,0),
(162,2,1741699019,1741699019,3,0,1,70,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Diplomarbeit\",\"index_name\":\"diploma_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Diploma Thesis','diploma_thesis','',0,0),
(163,2,1741699019,1741699019,3,0,1,71,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Widmung\",\"index_name\":\"dedication\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Dedication','dedication','',0,0),
(164,2,1741699019,1741699019,3,0,1,72,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Tag\",\"index_name\":\"day\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Day','day','',0,0),
(165,2,1741699019,1741699019,3,0,1,73,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Vorderdeckel\",\"index_name\":\"cover_back\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Back Cover','cover_back','',0,0),
(166,2,1741699019,1741699019,3,0,1,74,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"R\\u00fcckdeckel\",\"index_name\":\"cover_front\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Front Cover','cover_front','',0,0),
(167,2,1741699019,1741699019,3,0,1,75,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Deckel\",\"index_name\":\"cover\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Cover','cover','',0,0),
(168,2,1741699019,1741699019,3,0,1,76,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Errata\",\"index_name\":\"corrigenda\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Corrigenda','corrigenda','',0,0),
(169,2,1741699019,1741699019,3,0,1,77,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Inhaltsverzeichnis\",\"index_name\":\"contents\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Table of Contents','contents','',0,0),
(170,2,1741699019,1741699019,3,0,1,78,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Enthaltenes Werk\",\"index_name\":\"contained_work\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Contained Work','contained_work','',0,0),
(171,2,1741699019,1741699019,3,0,1,79,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Kolophon\",\"index_name\":\"colophon\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Colophon','colophon','',0,0),
(172,2,1741699019,1741699019,3,0,1,80,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Bogensignatur\",\"index_name\":\"collation\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Collation','collation','',0,0),
(173,2,1741699019,1741699019,3,0,1,81,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Kapitel\",\"index_name\":\"chapter\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Chapter','chapter','',0,0),
(174,2,1741699019,1741699019,3,0,1,82,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Kartular\",\"index_name\":\"cartulary\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Cartulary','cartulary','',0,0),
(175,2,1741699019,1741699019,3,0,1,83,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Exlibris\",\"index_name\":\"bookplate\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Bookplate','bookplate','',0,0),
(176,2,1741699019,1741699019,3,0,1,84,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Einband\",\"index_name\":\"binding\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Binding','binding','',0,0),
(177,2,1741699019,1741699019,3,0,1,85,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Bachelorarbeit\",\"index_name\":\"bachelor_thesis\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Bachelor Thesis','bachelor_thesis','',0,0),
(178,2,1741699019,1741699019,3,0,1,86,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Atlas\",\"index_name\":\"atlas\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Atlas','atlas','',0,0),
(179,2,1741699019,1741699019,3,0,1,87,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Artikel\",\"index_name\":\"article\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Article','article','',0,0),
(180,2,1741699019,1741699019,3,0,1,88,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Annotation\",\"index_name\":\"annotation\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Annotation','annotation','',0,0),
(181,2,1741699019,1741699019,3,0,1,89,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Album\",\"index_name\":\"album\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Album','album','',0,0),
(182,2,1741699019,1741699019,3,0,1,90,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Anrede\",\"index_name\":\"address\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Address','address','',0,0),
(183,2,1741699019,1741699019,3,0,1,91,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"0\",\"label\":\"Beilage\",\"index_name\":\"additional\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,0,'Additional','additional','',0,0),
(184,2,1741699019,1741699019,3,0,1,92,'{\"sys_language_uid\":\"0\",\"l18n_parent\":\"0\",\"hidden\":\"0\",\"toplevel\":\"1\",\"label\":\"Urkunde\",\"index_name\":\"act\",\"oai_name\":\"\",\"thumbnail\":\"0\",\"status\":\"0\"}',0,NULL,1,'Act','act','',0,0);
/*!40000 ALTER TABLE `tx_dlf_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_tokens`
--

DROP TABLE IF EXISTS `tx_dlf_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = utf8mb4 */;
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

-- Dump completed on 2025-03-11 14:25:42
