-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: the201companystore
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-09-05 03:10:13','2019-09-05 03:10:13','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0),(2,14,'root','rcyapagulayan@gmail.com','','127.0.0.1','2019-09-07 01:20:55','2019-09-07 01:20:55','This is very gud CPU, I buy',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36','',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost','yes'),(2,'home','http://localhost','yes'),(3,'blogname','The 201 Company Store','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','rcyapagulayan@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:3:{i:0;s:124:\"/mnt/c/Users/USER/Desktop/Bingot/ecommerce-project/the-201-company-store/wp-content/themes/the-201-company-store/archive.php\";i:1;s:122:\"/mnt/c/Users/USER/Desktop/Bingot/ecommerce-project/the-201-company-store/wp-content/themes/the-201-company-store/style.css\";i:2;s:0:\"\";}','no'),(40,'template','the-201-company-store','yes'),(41,'stylesheet','the-201-company-store','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'initial_db_version','44719','yes'),(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(102,'cron','a:6:{i:1568524224;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568560224;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568603424;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568603488;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568603508;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567653317;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(114,'recovery_keys','a:0:{}','yes'),(116,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568520742;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(123,'can_compress_scripts','1','no'),(125,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568520742;s:7:\"checked\";a:4:{s:21:\"the-201-company-store\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(126,'current_theme','The 201 Company Store','yes'),(127,'theme_mods_the-201-company-store','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(128,'theme_switched','','yes'),(135,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"rcyapagulayan@gmail.com\";s:7:\"version\";s:5:\"5.2.3\";s:9:\"timestamp\";i:1567767385;}','no'),(136,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1568520731;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}','no'),(169,'_site_transient_timeout_theme_roots','1568522540','no'),(170,'_site_transient_theme_roots','a:4:{s:21:\"the-201-company-store\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(6,7,'_edit_lock','1567774481:1'),(9,9,'_edit_lock','1567819554:1'),(12,14,'_edit_lock','1567819235:1'),(13,15,'_wp_attached_file','2019/09/uber.png'),(14,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:780;s:6:\"height\";i:738;s:4:\"file\";s:16:\"2019/09/uber.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"uber-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"uber-300x284.png\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"uber-768x727.png\";s:5:\"width\";i:768;s:6:\"height\";i:727;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(17,17,'_menu_item_type','custom'),(18,17,'_menu_item_menu_item_parent','0'),(19,17,'_menu_item_object_id','17'),(20,17,'_menu_item_object','custom'),(21,17,'_menu_item_target',''),(22,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(23,17,'_menu_item_xfn',''),(24,17,'_menu_item_url','http://localhost/'),(25,17,'_menu_item_orphaned','1567823277'),(26,18,'_menu_item_type','post_type'),(27,18,'_menu_item_menu_item_parent','0'),(28,18,'_menu_item_object_id','9'),(29,18,'_menu_item_object','page'),(30,18,'_menu_item_target',''),(31,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(32,18,'_menu_item_xfn',''),(33,18,'_menu_item_url',''),(34,18,'_menu_item_orphaned','1567823278'),(35,19,'_menu_item_type','post_type'),(36,19,'_menu_item_menu_item_parent','0'),(37,19,'_menu_item_object_id','2'),(38,19,'_menu_item_object','page'),(39,19,'_menu_item_target',''),(40,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(41,19,'_menu_item_xfn',''),(42,19,'_menu_item_url',''),(43,19,'_menu_item_orphaned','1567823278'),(44,20,'_menu_item_type','custom'),(45,20,'_menu_item_menu_item_parent','0'),(46,20,'_menu_item_object_id','20'),(47,20,'_menu_item_object','custom'),(48,20,'_menu_item_target',''),(49,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(50,20,'_menu_item_xfn',''),(51,20,'_menu_item_url','http://localhost/'),(52,20,'_menu_item_orphaned','1567823284'),(53,21,'_menu_item_type','post_type'),(54,21,'_menu_item_menu_item_parent','0'),(55,21,'_menu_item_object_id','9'),(56,21,'_menu_item_object','page'),(57,21,'_menu_item_target',''),(58,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(59,21,'_menu_item_xfn',''),(60,21,'_menu_item_url',''),(61,21,'_menu_item_orphaned','1567823285'),(62,22,'_menu_item_type','post_type'),(63,22,'_menu_item_menu_item_parent','0'),(64,22,'_menu_item_object_id','2'),(65,22,'_menu_item_object','page'),(66,22,'_menu_item_target',''),(67,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(68,22,'_menu_item_xfn',''),(69,22,'_menu_item_url',''),(70,22,'_menu_item_orphaned','1567823285'),(71,23,'_menu_item_type','custom'),(72,23,'_menu_item_menu_item_parent','0'),(73,23,'_menu_item_object_id','23'),(74,23,'_menu_item_object','custom'),(75,23,'_menu_item_target',''),(76,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(77,23,'_menu_item_xfn',''),(78,23,'_menu_item_url','http://localhost/'),(79,23,'_menu_item_orphaned','1567823404'),(80,24,'_menu_item_type','post_type'),(81,24,'_menu_item_menu_item_parent','0'),(82,24,'_menu_item_object_id','9'),(83,24,'_menu_item_object','page'),(84,24,'_menu_item_target',''),(85,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(86,24,'_menu_item_xfn',''),(87,24,'_menu_item_url',''),(88,24,'_menu_item_orphaned','1567823404'),(89,25,'_menu_item_type','post_type'),(90,25,'_menu_item_menu_item_parent','0'),(91,25,'_menu_item_object_id','2'),(92,25,'_menu_item_object','page'),(93,25,'_menu_item_target',''),(94,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(95,25,'_menu_item_xfn',''),(96,25,'_menu_item_url',''),(97,25,'_menu_item_orphaned','1567823404'),(98,26,'_wp_trash_meta_status','publish'),(99,26,'_wp_trash_meta_time','1567823494'),(100,27,'_menu_item_type','custom'),(101,27,'_menu_item_menu_item_parent','0'),(102,27,'_menu_item_object_id','27'),(103,27,'_menu_item_object','custom'),(104,27,'_menu_item_target',''),(105,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(106,27,'_menu_item_xfn',''),(107,27,'_menu_item_url','http://localhost/'),(108,27,'_menu_item_orphaned','1567823500'),(109,28,'_menu_item_type','post_type'),(110,28,'_menu_item_menu_item_parent','0'),(111,28,'_menu_item_object_id','9'),(112,28,'_menu_item_object','page'),(113,28,'_menu_item_target',''),(114,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(115,28,'_menu_item_xfn',''),(116,28,'_menu_item_url',''),(117,28,'_menu_item_orphaned','1567823501'),(118,29,'_menu_item_type','post_type'),(119,29,'_menu_item_menu_item_parent','0'),(120,29,'_menu_item_object_id','2'),(121,29,'_menu_item_object','page'),(122,29,'_menu_item_target',''),(123,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(124,29,'_menu_item_xfn',''),(125,29,'_menu_item_url',''),(126,29,'_menu_item_orphaned','1567823501'),(127,31,'_edit_lock','1568428026:1'),(128,34,'_wp_attached_file','2019/09/audit.jpg'),(129,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:277;s:6:\"height\";i:842;s:4:\"file\";s:17:\"2019/09/audit.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"audit-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"audit-99x300.jpg\";s:5:\"width\";i:99;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"Carla\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1554649229\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(130,36,'_edit_lock','1568428352:1'),(131,37,'_wp_attached_file','2019/09/dang.png'),(132,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2019/09/dang.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"dang-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"dang-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"dang-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"dang-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-09-05 03:10:13','2019-09-05 03:10:13','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-09-05 03:10:13','2019-09-05 03:10:13','',0,'http://localhost/?p=1',0,'post','',1),(2,1,'2019-09-05 03:10:13','2019-09-05 03:10:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-09-05 03:10:13','2019-09-05 03:10:13','',0,'http://localhost/?page_id=2',0,'page','',0),(3,1,'2019-09-05 03:10:13','2019-09-05 03:10:13','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-09-05 03:10:13','2019-09-05 03:10:13','',0,'http://localhost/?page_id=3',0,'page','',0),(7,1,'2019-09-06 12:57:00','2019-09-06 12:57:00','<!-- wp:paragraph -->\n<p>This is a test of the text editor of Wordpress. As of right now it is pretty good for a simple text editor. </p>\n<!-- /wp:paragraph -->','This is a test','','publish','open','open','','this-is-a-test','','','2019-09-06 12:57:00','2019-09-06 12:57:00','',0,'http://localhost/?p=7',0,'post','',0),(8,1,'2019-09-06 12:57:00','2019-09-06 12:57:00','<!-- wp:paragraph -->\n<p>This is a test of the text editor of Wordpress. As of right now it is pretty good for a simple text editor. </p>\n<!-- /wp:paragraph -->','This is a test','','inherit','closed','closed','','7-revision-v1','','','2019-09-06 12:57:00','2019-09-06 12:57:00','',7,'http://localhost/?p=8',0,'revision','',0),(9,1,'2019-09-06 13:45:26','2019-09-06 13:45:26','<!-- wp:paragraph -->\n<p>The 201 Company Store is a branch of The 201 Company. The 201 Company is a software development company founded by Renz Christen Yeomer A. Pagulayan. The company focuses on software with minimal design, so that the complexity of the software is low.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The 201 Company Store sells IT Solutions, Software Packages and Computer Components. We put discounts on all items to be competitive on all previously established stores.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2019-09-06 13:45:26','2019-09-06 13:45:26','',0,'http://localhost/?page_id=9',0,'page','',0),(10,1,'2019-09-06 13:30:28','2019-09-06 13:30:28','<!-- wp:paragraph -->\n<p>The 201 Company Store is a branch of The 201 Company Store</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','9-revision-v1','','','2019-09-06 13:30:28','2019-09-06 13:30:28','',9,'http://localhost/?p=10',0,'revision','',0),(11,1,'2019-09-06 13:45:26','2019-09-06 13:45:26','<!-- wp:paragraph -->\n<p>The 201 Company Store is a branch of The 201 Company. The 201 Company is a software development company founded by Renz Christen Yeomer A. Pagulayan. The company focuses on software with minimal design, so that the complexity of the software is low.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The 201 Company Store sells IT Solutions, Software Packages and Computer Components. We put discounts on all items to be competitive on all previously established stores.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','9-revision-v1','','','2019-09-06 13:45:26','2019-09-06 13:45:26','',9,'http://localhost/?p=11',0,'revision','',0),(14,1,'2019-09-07 01:20:02','2019-09-07 01:20:02','<!-- wp:image {\"id\":15} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/09/uber.png\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts. </p>\n<!-- /wp:paragraph -->','Intel i9-9700K','','publish','open','open','','intel-i9-9700k','','','2019-09-07 01:20:02','2019-09-07 01:20:02','',0,'http://localhost/?p=14',0,'post','',1),(15,1,'2019-09-07 01:19:53','2019-09-07 01:19:53','','uber','','inherit','open','closed','','uber','','','2019-09-07 01:19:53','2019-09-07 01:19:53','',14,'http://localhost/wp-content/uploads/2019/09/uber.png',0,'attachment','image/png',0),(16,1,'2019-09-07 01:20:02','2019-09-07 01:20:02','<!-- wp:image {\"id\":15} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/09/uber.png\" alt=\"\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts.  This is a very gud CPU. U Shud buy 1 furm me cuz i very chip i sel u gud pruducts. </p>\n<!-- /wp:paragraph -->','Intel i9-9700K','','inherit','closed','closed','','14-revision-v1','','','2019-09-07 01:20:02','2019-09-07 01:20:02','',14,'http://localhost/?p=16',0,'revision','',0),(17,1,'2019-09-07 02:27:57','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2019-09-07 02:27:57','0000-00-00 00:00:00','',0,'http://localhost/?p=17',1,'nav_menu_item','',0),(18,1,'2019-09-07 02:27:57','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:27:57','0000-00-00 00:00:00','',0,'http://localhost/?p=18',1,'nav_menu_item','',0),(19,1,'2019-09-07 02:27:58','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:27:58','0000-00-00 00:00:00','',0,'http://localhost/?p=19',1,'nav_menu_item','',0),(20,1,'2019-09-07 02:28:04','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2019-09-07 02:28:04','0000-00-00 00:00:00','',0,'http://localhost/?p=20',1,'nav_menu_item','',0),(21,1,'2019-09-07 02:28:04','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:28:04','0000-00-00 00:00:00','',0,'http://localhost/?p=21',1,'nav_menu_item','',0),(22,1,'2019-09-07 02:28:05','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:28:05','0000-00-00 00:00:00','',0,'http://localhost/?p=22',1,'nav_menu_item','',0),(23,1,'2019-09-07 02:30:03','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2019-09-07 02:30:03','0000-00-00 00:00:00','',0,'http://localhost/?p=23',1,'nav_menu_item','',0),(24,1,'2019-09-07 02:30:04','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:30:04','0000-00-00 00:00:00','',0,'http://localhost/?p=24',1,'nav_menu_item','',0),(25,1,'2019-09-07 02:30:04','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:30:04','0000-00-00 00:00:00','',0,'http://localhost/?p=25',1,'nav_menu_item','',0),(26,1,'2019-09-07 02:31:34','2019-09-07 02:31:34','{\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjoxO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f3790ec88d7693f655538b3b434336e1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-07 02:31:34\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"categories-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-07 02:31:34\"\n    }\n}','','','trash','closed','closed','','3609703d-180b-4ef6-b9da-c093b4192603','','','2019-09-07 02:31:34','2019-09-07 02:31:34','',0,'http://localhost/?p=26',0,'customize_changeset','',0),(27,1,'2019-09-07 02:31:40','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2019-09-07 02:31:40','0000-00-00 00:00:00','',0,'http://localhost/?p=27',1,'nav_menu_item','',0),(28,1,'2019-09-07 02:31:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:31:40','0000-00-00 00:00:00','',0,'http://localhost/?p=28',1,'nav_menu_item','',0),(29,1,'2019-09-07 02:31:41','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-09-07 02:31:41','0000-00-00 00:00:00','',0,'http://localhost/?p=29',1,'nav_menu_item','',0),(30,1,'2019-09-14 02:24:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-09-14 02:24:30','0000-00-00 00:00:00','',0,'http://localhost/?p=30',0,'post','',0),(31,1,'2019-09-14 02:29:20','2019-09-14 02:29:20','<!-- wp:paragraph -->\n<p>You can contact our company with the following:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>email@email.com</li><li>+639201111111</li><li>(123)123-1231</li><li>Cavite Civic Center, Imus City, Cavite</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":34,\"width\":157,\"height\":477} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://localhost/wp-content/uploads/2019/09/audit.jpg\" alt=\"\" class=\"wp-image-34\" width=\"157\" height=\"477\"/></figure>\n<!-- /wp:image -->','Contact Us','','publish','closed','closed','','contact-us','','','2019-09-14 02:29:20','2019-09-14 02:29:20','',0,'http://localhost/?page_id=31',0,'page','',0),(32,1,'2019-09-14 02:26:28','2019-09-14 02:26:28','<!-- wp:paragraph -->\n<p>You can contact our company with the following:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>email@email.com</li><li>+639201111111</li><li>123-1231</li></ul>\n<!-- /wp:list -->','Contact Us','','inherit','closed','closed','','31-revision-v1','','','2019-09-14 02:26:28','2019-09-14 02:26:28','',31,'http://localhost/?p=32',0,'revision','',0),(33,1,'2019-09-14 02:26:32','2019-09-14 02:26:32','<!-- wp:paragraph -->\n<p>You can contact our company with the following:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>email@email.com</li><li>+639201111111</li><li>(123)123-1231</li></ul>\n<!-- /wp:list -->','Contact Us','','inherit','closed','closed','','31-revision-v1','','','2019-09-14 02:26:32','2019-09-14 02:26:32','',31,'http://localhost/?p=33',0,'revision','',0),(34,1,'2019-09-14 02:26:58','2019-09-14 02:26:58','','audit','','inherit','open','closed','','audit','','','2019-09-14 02:26:58','2019-09-14 02:26:58','',31,'http://localhost/wp-content/uploads/2019/09/audit.jpg',0,'attachment','image/jpeg',0),(35,1,'2019-09-14 02:28:42','2019-09-14 02:28:42','<!-- wp:paragraph -->\n<p>You can contact our company with the following:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>email@email.com</li><li>+639201111111</li><li>(123)123-1231</li><li>Cavite Civic Center, Imus City, Cavite</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:image {\"id\":34,\"width\":157,\"height\":477} -->\n<figure class=\"wp-block-image is-resized\"><img src=\"http://localhost/wp-content/uploads/2019/09/audit.jpg\" alt=\"\" class=\"wp-image-34\" width=\"157\" height=\"477\"/></figure>\n<!-- /wp:image -->','Contact Us','','inherit','closed','closed','','31-revision-v1','','','2019-09-14 02:28:42','2019-09-14 02:28:42','',31,'http://localhost/?p=35',0,'revision','',0),(36,1,'2019-09-14 02:31:56','2019-09-14 02:31:56','<!-- wp:image {\"id\":37} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/09/dang-1024x576.png\" alt=\"\" class=\"wp-image-37\"/><figcaption>A clear picture of GTX 1080Ti</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry. </p>\n<!-- /wp:paragraph -->','MSI GTX 1080Ti','','publish','open','open','','msi-gtx-1080ti','','','2019-09-14 02:31:56','2019-09-14 02:31:56','',0,'http://localhost/?p=36',0,'post','',0),(37,1,'2019-09-14 02:30:42','2019-09-14 02:30:42','','dang','','inherit','open','closed','','dang','','','2019-09-14 02:30:42','2019-09-14 02:30:42','',36,'http://localhost/wp-content/uploads/2019/09/dang.png',0,'attachment','image/png',0),(38,1,'2019-09-14 02:31:48','2019-09-14 02:31:48','<!-- wp:image {\"id\":37} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wp-content/uploads/2019/09/dang-1024x576.png\" alt=\"\" class=\"wp-image-37\"/><figcaption>A clear picture of GTX 1080Ti</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry.  A gud grphics curd, please buy, ned munei, i go anhfry. </p>\n<!-- /wp:paragraph -->','MSI GTX 1080Ti','','inherit','closed','closed','','36-revision-v1','','','2019-09-14 02:31:48','2019-09-14 02:31:48','',36,'http://localhost/?p=38',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(7,1,0),(14,1,0),(36,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','root'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','theme_editor_notice'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"7a8c6ce5aea029fba71560a4042f26f6e983a71a6b7bd4e034aff792074f95ce\";a:4:{s:10:\"expiration\";i:1568600645;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568427845;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','30'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'root','$P$BW.IHwOo2yhU49QVdgv76u1VDAHN9t.','root','rcyapagulayan@gmail.com','','2019-09-05 03:10:12','',0,'root');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 21:15:08
