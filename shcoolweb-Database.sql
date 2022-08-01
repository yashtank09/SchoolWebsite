CREATE DATABASE  IF NOT EXISTS `schoolweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `schoolweb`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolweb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add student_registration',7,'add_student_registration'),(26,'Can change student_registration',7,'change_student_registration'),(27,'Can delete student_registration',7,'delete_student_registration'),(28,'Can view student_registration',7,'view_student_registration'),(29,'Can add teacher_registration',8,'add_teacher_registration'),(30,'Can change teacher_registration',8,'change_teacher_registration'),(31,'Can delete teacher_registration',8,'delete_teacher_registration'),(32,'Can view teacher_registration',8,'view_teacher_registration');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'profileView','student_registration'),(8,'profileView','teacher_registration'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-01 11:04:04.287509'),(2,'auth','0001_initial','2022-08-01 11:04:04.665309'),(3,'admin','0001_initial','2022-08-01 11:04:04.781201'),(4,'admin','0002_logentry_remove_auto_add','2022-08-01 11:04:04.796827'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-01 11:04:04.803332'),(6,'contenttypes','0002_remove_content_type_name','2022-08-01 11:04:04.865839'),(7,'auth','0002_alter_permission_name_max_length','2022-08-01 11:04:04.919224'),(8,'auth','0003_alter_user_email_max_length','2022-08-01 11:04:04.934850'),(9,'auth','0004_alter_user_username_opts','2022-08-01 11:04:04.934850'),(10,'auth','0005_alter_user_last_login_null','2022-08-01 11:04:04.981729'),(11,'auth','0006_require_contenttypes_0002','2022-08-01 11:04:04.981729'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-01 11:04:04.981729'),(13,'auth','0008_alter_user_username_max_length','2022-08-01 11:04:05.019488'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-01 11:04:05.081993'),(15,'auth','0010_alter_group_name_max_length','2022-08-01 11:04:05.081993'),(16,'auth','0011_update_proxy_permissions','2022-08-01 11:04:05.097619'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-01 11:04:05.151004'),(18,'sessions','0001_initial','2022-08-01 11:04:05.204387'),(19,'profileView','0001_initial','2022-08-01 11:06:48.873196'),(20,'profileView','0002_auto_20220801_1733','2022-08-01 12:03:43.054190');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1a6m6m21u6qotri8101f1vu4kpahp5zq','eyJUZWNoX3JlZ2lkIjo0MzA0NjV9:1oIVey:SLwSnBtShx5PRiYl1hL9Cr1ar05Ml3L2cfvWYj40MSE','2022-08-15 13:40:40.958662'),('zafimwhz4brqwsuyv3fyvwduhd73kf5p','eyJUZWNoX3JlZ2lkIjo0MzA0NjV9:1oIYiO:yFV02_c1HGIz_vhhV8ZgxqxnrHdwd_5cn0lF9GHrXL0','2022-08-15 16:56:24.074845');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profileview_student_registration`
--

LOCK TABLES `profileview_student_registration` WRITE;
/*!40000 ALTER TABLE `profileview_student_registration` DISABLE KEYS */;
INSERT INTO `profileview_student_registration` VALUES (213140,'Yash','Tank',23,8,'B',7984248787,'1234','Student'),(778305,'Tom','Hidulstun',24,8,'A',7979797979,'0987','Student');
/*!40000 ALTER TABLE `profileview_student_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profileview_teacher_registration`
--

LOCK TABLES `profileview_teacher_registration` WRITE;
/*!40000 ALTER TABLE `profileview_teacher_registration` DISABLE KEYS */;
INSERT INTO `profileview_teacher_registration` VALUES (363563,'Kamlesh','Bhatt','Social Science','9th',9876543210,'12345','Teacher'),(430465,'Vihan','Vasavada','Enghlish','9th',8866978176,'121212','Teacher');
/*!40000 ALTER TABLE `profileview_teacher_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-01 22:57:03
