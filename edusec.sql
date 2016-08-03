-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: edusec
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('Employee','2',1469708726),('SuperAdmin','1',1467754821);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,'/*',NULL,NULL,1432554657,1432554657),('/auth-assignment/*',2,'/auth-assignment/*',NULL,NULL,1432554652,1432554652),('/auth-assignment/create',2,'/auth-assignment/create',NULL,NULL,1432554652,1432554652),('/auth-assignment/delete',2,'/auth-assignment/delete',NULL,NULL,1432554652,1432554652),('/auth-assignment/index',2,'/auth-assignment/index',NULL,NULL,1432554652,1432554652),('/auth-assignment/update',2,'/auth-assignment/update',NULL,NULL,1432554652,1432554652),('/auth-assignment/view',2,'/auth-assignment/view',NULL,NULL,1432554652,1432554652),('/city/*',2,'/city/*',NULL,NULL,1432554652,1432554652),('/city/create',2,'/city/create',NULL,NULL,1432555253,1432555253),('/city/delete',2,'/city/delete',NULL,NULL,1432554652,1432554652),('/city/index',2,'/city/index',NULL,NULL,1432554652,1432554652),('/city/update',2,'/city/update',NULL,NULL,1432554652,1432554652),('/city/view',2,'/city/view',NULL,NULL,1432554652,1432554652),('/country/*',2,'/country/*',NULL,NULL,1432554653,1432554653),('/country/create',2,'/country/create',NULL,NULL,1432554652,1432554652),('/country/delete',2,'/country/delete',NULL,NULL,1432554653,1432554653),('/country/index',2,'/country/index',NULL,NULL,1432554652,1432554652),('/country/update',2,'/country/update',NULL,NULL,1432554652,1432554652),('/country/view',2,'/country/view',NULL,NULL,1432554652,1432554652),('/course/*',2,'/course/*',NULL,NULL,1432554639,1432554639),('/course/batches/*',2,'/course/batches/*',NULL,NULL,1432554638,1432554638),('/course/batches/create',2,'/course/batches/create',NULL,NULL,1432554638,1432554638),('/course/batches/delete',2,'/course/batches/delete',NULL,NULL,1432554638,1432554638),('/course/batches/index',2,'/course/batches/index',NULL,NULL,1432554638,1432554638),('/course/batches/toggle',2,'/course/batches/toggle',NULL,NULL,1432554638,1432554638),('/course/batches/update',2,'/course/batches/update',NULL,NULL,1432554638,1432554638),('/course/batches/view',2,'/course/batches/view',NULL,NULL,1432554638,1432554638),('/course/courses/*',2,'/course/courses/*',NULL,NULL,1432554638,1432554638),('/course/courses/create',2,'/course/courses/create',NULL,NULL,1432554638,1432554638),('/course/courses/delete',2,'/course/courses/delete',NULL,NULL,1432554638,1432554638),('/course/courses/index',2,'/course/courses/index',NULL,NULL,1432554638,1432554638),('/course/courses/toggle',2,'/course/courses/toggle',NULL,NULL,1432554638,1432554638),('/course/courses/update',2,'/course/courses/update',NULL,NULL,1432554638,1432554638),('/course/courses/view',2,'/course/courses/view',NULL,NULL,1432554638,1432554638),('/course/default/*',2,'/course/default/*',NULL,NULL,1432554639,1432554639),('/course/default/index',2,'/course/default/index',NULL,NULL,1432554638,1432554638),('/course/section/*',2,'/course/section/*',NULL,NULL,1432554639,1432554639),('/course/section/create',2,'/course/section/create',NULL,NULL,1432554639,1432554639),('/course/section/delete',2,'/course/section/delete',NULL,NULL,1432554639,1432554639),('/course/section/index',2,'/course/section/index',NULL,NULL,1432554639,1432554639),('/course/section/toggle',2,'/course/section/toggle',NULL,NULL,1432554639,1432554639),('/course/section/update',2,'/course/section/update',NULL,NULL,1432554639,1432554639),('/course/section/view',2,'/course/section/view',NULL,NULL,1432554639,1432554639),('/dashboard/*',2,'/dashboard/*',NULL,NULL,1432554649,1432554649),('/dashboard/default/*',2,'/dashboard/default/*',NULL,NULL,1432554647,1432554647),('/dashboard/default/index',2,'/dashboard/default/index',NULL,NULL,1432554647,1432554647),('/dashboard/events/*',2,'/dashboard/events/*',NULL,NULL,1432554648,1432554648),('/dashboard/events/add-event',2,'/dashboard/events/add-event',NULL,NULL,1432554647,1432554647),('/dashboard/events/event-delete',2,'/dashboard/events/event-delete',NULL,NULL,1432554648,1432554648),('/dashboard/events/index',2,'/dashboard/events/index',NULL,NULL,1432554647,1432554647),('/dashboard/events/update-event',2,'/dashboard/events/update-event',NULL,NULL,1432554648,1432554648),('/dashboard/events/view',2,'/dashboard/events/view',NULL,NULL,1432554647,1432554647),('/dashboard/events/view-events',2,'/dashboard/events/view-events',NULL,NULL,1432554647,1432554647),('/dashboard/msg-of-day/*',2,'/dashboard/msg-of-day/*',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/create',2,'/dashboard/msg-of-day/create',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/delete',2,'/dashboard/msg-of-day/delete',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/index',2,'/dashboard/msg-of-day/index',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/toggle',2,'/dashboard/msg-of-day/toggle',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/update',2,'/dashboard/msg-of-day/update',NULL,NULL,1432554648,1432554648),('/dashboard/msg-of-day/view',2,'/dashboard/msg-of-day/view',NULL,NULL,1432554648,1432554648),('/dashboard/notice/*',2,'/dashboard/notice/*',NULL,NULL,1432554649,1432554649),('/dashboard/notice/create',2,'/dashboard/notice/create',NULL,NULL,1432554649,1432554649),('/dashboard/notice/delete',2,'/dashboard/notice/delete',NULL,NULL,1432554649,1432554649),('/dashboard/notice/index',2,'/dashboard/notice/index',NULL,NULL,1432554649,1432554649),('/dashboard/notice/notice-file',2,'/dashboard/notice/notice-file',NULL,NULL,1432554649,1432554649),('/dashboard/notice/toggle',2,'/dashboard/notice/toggle',NULL,NULL,1432554649,1432554649),('/dashboard/notice/update',2,'/dashboard/notice/update',NULL,NULL,1432554649,1432554649),('/dashboard/notice/view',2,'/dashboard/notice/view',NULL,NULL,1432554649,1432554649),('/dashboard/notice/view-popup',2,'/dashboard/notice/view-popup',NULL,NULL,1432554649,1432554649),('/debug/*',2,'/debug/*',NULL,NULL,1432554651,1432554651),('/debug/default/*',2,'/debug/default/*',NULL,NULL,1432554651,1432554651),('/debug/default/download-mail',2,'/debug/default/download-mail',NULL,NULL,1432554651,1432554651),('/debug/default/index',2,'/debug/default/index',NULL,NULL,1432554651,1432554651),('/debug/default/toolbar',2,'/debug/default/toolbar',NULL,NULL,1432554651,1432554651),('/debug/default/view',2,'/debug/default/view',NULL,NULL,1432554651,1432554651),('/default/*',2,'/default/*',NULL,NULL,1432554653,1432554653),('/default/index',2,'/default/index',NULL,NULL,1432554653,1432554653),('/dependent/*',2,'/dependent/*',NULL,NULL,1432554653,1432554653),('/dependent/getcity',2,'/dependent/getcity',NULL,NULL,1432554653,1432554653),('/dependent/getorgcity',2,'/dependent/getorgcity',NULL,NULL,1432554653,1432554653),('/dependent/getorgstate',2,'/dependent/getorgstate',NULL,NULL,1432554653,1432554653),('/dependent/getstate',2,'/dependent/getstate',NULL,NULL,1432554653,1432554653),('/dependent/index',2,'/dependent/index',NULL,NULL,1432554653,1432554653),('/dependent/studbatch',2,'/dependent/studbatch',NULL,NULL,1432554653,1432554653),('/dependent/studsection',2,'/dependent/studsection',NULL,NULL,1432554653,1432554653),('/document-category/*',2,'/document-category/*',NULL,NULL,1432554653,1432554653),('/document-category/create',2,'/document-category/create',NULL,NULL,1432554653,1432554653),('/document-category/delete',2,'/document-category/delete',NULL,NULL,1432554653,1432554653),('/document-category/index',2,'/document-category/index',NULL,NULL,1432554653,1432554653),('/document-category/update',2,'/document-category/update',NULL,NULL,1432554653,1432554653),('/document-category/view',2,'/document-category/view',NULL,NULL,1432554653,1432554653),('/employee/*',2,'/employee/*',NULL,NULL,1432554645,1432554645),('/employee/default/*',2,'/employee/default/*',NULL,NULL,1432554642,1432554642),('/employee/default/index',2,'/employee/default/index',NULL,NULL,1432554642,1432554642),('/employee/dependent/*',2,'/employee/dependent/*',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-c-city',2,'/employee/dependent/emp-c-city',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-c-state',2,'/employee/dependent/emp-c-state',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-p-city',2,'/employee/dependent/emp-p-city',NULL,NULL,1432554642,1432554642),('/employee/dependent/emp-p-state',2,'/employee/dependent/emp-p-state',NULL,NULL,1432554642,1432554642),('/employee/emp-address/*',2,'/employee/emp-address/*',NULL,NULL,1432554642,1432554642),('/employee/emp-address/create',2,'/employee/emp-address/create',NULL,NULL,1432554642,1432554642),('/employee/emp-address/delete',2,'/employee/emp-address/delete',NULL,NULL,1432554642,1432554642),('/employee/emp-address/index',2,'/employee/emp-address/index',NULL,NULL,1432554642,1432554642),('/employee/emp-address/update',2,'/employee/emp-address/update',NULL,NULL,1432554642,1432554642),('/employee/emp-address/view',2,'/employee/emp-address/view',NULL,NULL,1432554642,1432554642),('/employee/emp-category/*',2,'/employee/emp-category/*',NULL,NULL,1432554643,1432554643),('/employee/emp-category/create',2,'/employee/emp-category/create',NULL,NULL,1432554643,1432554643),('/employee/emp-category/delete',2,'/employee/emp-category/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-category/index',2,'/employee/emp-category/index',NULL,NULL,1432554642,1432554642),('/employee/emp-category/update',2,'/employee/emp-category/update',NULL,NULL,1432554643,1432554643),('/employee/emp-category/view',2,'/employee/emp-category/view',NULL,NULL,1432554643,1432554643),('/employee/emp-department/*',2,'/employee/emp-department/*',NULL,NULL,1432554643,1432554643),('/employee/emp-department/create',2,'/employee/emp-department/create',NULL,NULL,1432554643,1432554643),('/employee/emp-department/delete',2,'/employee/emp-department/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-department/index',2,'/employee/emp-department/index',NULL,NULL,1432554643,1432554643),('/employee/emp-department/update',2,'/employee/emp-department/update',NULL,NULL,1432554643,1432554643),('/employee/emp-department/view',2,'/employee/emp-department/view',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/*',2,'/employee/emp-designation/*',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/create',2,'/employee/emp-designation/create',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/delete',2,'/employee/emp-designation/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/index',2,'/employee/emp-designation/index',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/update',2,'/employee/emp-designation/update',NULL,NULL,1432554643,1432554643),('/employee/emp-designation/view',2,'/employee/emp-designation/view',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/*',2,'/employee/emp-docs/*',NULL,NULL,1432554644,1432554644),('/employee/emp-docs/create',2,'/employee/emp-docs/create',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/delete',2,'/employee/emp-docs/delete',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/index',2,'/employee/emp-docs/index',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/update',2,'/employee/emp-docs/update',NULL,NULL,1432554643,1432554643),('/employee/emp-docs/view',2,'/employee/emp-docs/view',NULL,NULL,1432554643,1432554643),('/employee/emp-info/*',2,'/employee/emp-info/*',NULL,NULL,1432554644,1432554644),('/employee/emp-info/create',2,'/employee/emp-info/create',NULL,NULL,1432554644,1432554644),('/employee/emp-info/delete',2,'/employee/emp-info/delete',NULL,NULL,1432554644,1432554644),('/employee/emp-info/index',2,'/employee/emp-info/index',NULL,NULL,1432554644,1432554644),('/employee/emp-info/update',2,'/employee/emp-info/update',NULL,NULL,1432554644,1432554644),('/employee/emp-info/view',2,'/employee/emp-info/view',NULL,NULL,1432554644,1432554644),('/employee/emp-master/*',2,'/employee/emp-master/*',NULL,NULL,1432554644,1432554644),('/employee/emp-master/adddocs',2,'/employee/emp-master/adddocs',NULL,NULL,1432554644,1432554644),('/employee/emp-master/change-status',2,'/employee/emp-master/change-status',NULL,NULL,1432554644,1432554644),('/employee/emp-master/create',2,'/employee/emp-master/create',NULL,NULL,1432554644,1432554644),('/employee/emp-master/delete',2,'/employee/emp-master/delete',NULL,NULL,1432554644,1432554644),('/employee/emp-master/delete-doc',2,'/employee/emp-master/delete-doc',NULL,NULL,1432554644,1432554644),('/employee/emp-master/docs-download',2,'/employee/emp-master/docs-download',NULL,NULL,1432554644,1432554644),('/employee/emp-master/emp-photo',2,'/employee/emp-master/emp-photo',NULL,NULL,1432554644,1432554644),('/employee/emp-master/index',2,'/employee/emp-master/index',NULL,NULL,1432554644,1432554644),('/employee/emp-master/update',2,'/employee/emp-master/update',NULL,NULL,1432554644,1432554644),('/employee/emp-master/view',2,'/employee/emp-master/view',NULL,NULL,1432554644,1432554644),('/employee/emp-status/*',2,'/employee/emp-status/*',NULL,NULL,1432554645,1432554645),('/employee/emp-status/create',2,'/employee/emp-status/create',NULL,NULL,1432554645,1432554645),('/employee/emp-status/delete',2,'/employee/emp-status/delete',NULL,NULL,1432554645,1432554645),('/employee/emp-status/index',2,'/employee/emp-status/index',NULL,NULL,1432554644,1432554644),('/employee/emp-status/update',2,'/employee/emp-status/update',NULL,NULL,1432554645,1432554645),('/employee/emp-status/view',2,'/employee/emp-status/view',NULL,NULL,1432554644,1432554644),('/employee/export-data/*',2,'/employee/export-data/*',NULL,NULL,1432554645,1432554645),('/employee/export-data/employee-profile-pdf',2,'/employee/export-data/employee-profile-pdf',NULL,NULL,1432554645,1432554645),('/export-data/*',2,'/export-data/*',NULL,NULL,1432554653,1432554653),('/export-data/export-excel',2,'/export-data/export-excel',NULL,NULL,1432554653,1432554653),('/export-data/export-to-pdf',2,'/export-data/export-to-pdf',NULL,NULL,1432554653,1432554653),('/fees/*',2,'/fees/*',NULL,NULL,1432554646,1432554646),('/fees/bank-master/*',2,'/fees/bank-master/*',NULL,NULL,1432554645,1432554645),('/fees/bank-master/create',2,'/fees/bank-master/create',NULL,NULL,1432554645,1432554645),('/fees/bank-master/delete',2,'/fees/bank-master/delete',NULL,NULL,1432554645,1432554645),('/fees/bank-master/index',2,'/fees/bank-master/index',NULL,NULL,1432554645,1432554645),('/fees/bank-master/update',2,'/fees/bank-master/update',NULL,NULL,1432554645,1432554645),('/fees/bank-master/view',2,'/fees/bank-master/view',NULL,NULL,1432554645,1432554645),('/fees/default/*',2,'/fees/default/*',NULL,NULL,1432554645,1432554645),('/fees/default/index',2,'/fees/default/index',NULL,NULL,1432554645,1432554645),('/fees/dependent/*',2,'/fees/dependent/*',NULL,NULL,1432554645,1432554645),('/fees/dependent/get-fees-category',2,'/fees/dependent/get-fees-category',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/*',2,'/fees/fees-category-details/*',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/create',2,'/fees/fees-category-details/create',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/delete',2,'/fees/fees-category-details/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/index',2,'/fees/fees-category-details/index',NULL,NULL,1432554645,1432554645),('/fees/fees-category-details/update',2,'/fees/fees-category-details/update',NULL,NULL,1432554646,1432554646),('/fees/fees-category-details/view',2,'/fees/fees-category-details/view',NULL,NULL,1432554645,1432554645),('/fees/fees-collect-category/*',2,'/fees/fees-collect-category/*',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/create',2,'/fees/fees-collect-category/create',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/delete',2,'/fees/fees-collect-category/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/index',2,'/fees/fees-collect-category/index',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/toggle',2,'/fees/fees-collect-category/toggle',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/update',2,'/fees/fees-collect-category/update',NULL,NULL,1432554646,1432554646),('/fees/fees-collect-category/view',2,'/fees/fees-collect-category/view',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/*',2,'/fees/fees-payment-transaction/*',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/collect',2,'/fees/fees-payment-transaction/collect',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/delete',2,'/fees/fees-payment-transaction/delete',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/export-fcc-wise-fees-pdf',2,'/fees/fees-payment-transaction/export-fcc-wise-fees-pdf',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/pay-fees',2,'/fees/fees-payment-transaction/pay-fees',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/print-common-receipt',2,'/fees/fees-payment-transaction/print-common-receipt',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/stu-fees-data',2,'/fees/fees-payment-transaction/stu-fees-data',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/update',2,'/fees/fees-payment-transaction/update',NULL,NULL,1432554646,1432554646),('/fees/fees-payment-transaction/view',2,'/fees/fees-payment-transaction/view',NULL,NULL,1432554646,1432554646),('/gii/*',2,'/gii/*',NULL,NULL,1432554652,1432554652),('/gii/default/*',2,'/gii/default/*',NULL,NULL,1432554652,1432554652),('/gii/default/action',2,'/gii/default/action',NULL,NULL,1432554652,1432554652),('/gii/default/diff',2,'/gii/default/diff',NULL,NULL,1432554652,1432554652),('/gii/default/index',2,'/gii/default/index',NULL,NULL,1432554651,1432554651),('/gii/default/preview',2,'/gii/default/preview',NULL,NULL,1432554651,1432554651),('/gii/default/view',2,'/gii/default/view',NULL,NULL,1432554651,1432554651),('/languages/*',2,'/languages/*',NULL,NULL,1432554654,1432554654),('/languages/create',2,'/languages/create',NULL,NULL,1432554654,1432554654),('/languages/delete',2,'/languages/delete',NULL,NULL,1432554654,1432554654),('/languages/index',2,'/languages/index',NULL,NULL,1432554653,1432554653),('/languages/update',2,'/languages/update',NULL,NULL,1432554654,1432554654),('/languages/view',2,'/languages/view',NULL,NULL,1432554654,1432554654),('/login-details/*',2,'/login-details/*',NULL,NULL,1432554654,1432554654),('/login-details/create',2,'/login-details/create',NULL,NULL,1432554654,1432554654),('/login-details/delete',2,'/login-details/delete',NULL,NULL,1432554654,1432554654),('/login-details/index',2,'/login-details/index',NULL,NULL,1432554654,1432554654),('/login-details/update',2,'/login-details/update',NULL,NULL,1432554654,1432554654),('/login-details/view',2,'/login-details/view',NULL,NULL,1432554654,1432554654),('/national-holidays/*',2,'/national-holidays/*',NULL,NULL,1432554654,1432554654),('/national-holidays/create',2,'/national-holidays/create',NULL,NULL,1432554654,1432554654),('/national-holidays/delete',2,'/national-holidays/delete',NULL,NULL,1432554654,1432554654),('/national-holidays/index',2,'/national-holidays/index',NULL,NULL,1432554654,1432554654),('/national-holidays/update',2,'/national-holidays/update',NULL,NULL,1432554654,1432554654),('/national-holidays/view',2,'/national-holidays/view',NULL,NULL,1432554654,1432554654),('/nationality/*',2,'/nationality/*',NULL,NULL,1432554655,1432554655),('/nationality/create',2,'/nationality/create',NULL,NULL,1432554654,1432554654),('/nationality/delete',2,'/nationality/delete',NULL,NULL,1432554655,1432554655),('/nationality/index',2,'/nationality/index',NULL,NULL,1432554654,1432554654),('/nationality/update',2,'/nationality/update',NULL,NULL,1432554655,1432554655),('/nationality/view',2,'/nationality/view',NULL,NULL,1432554654,1432554654),('/organization/*',2,'/organization/*',NULL,NULL,1432554655,1432554655),('/organization/create',2,'/organization/create',NULL,NULL,1432554655,1432554655),('/organization/delete',2,'/organization/delete',NULL,NULL,1432554655,1432554655),('/organization/index',2,'/organization/index',NULL,NULL,1432554655,1432554655),('/organization/update',2,'/organization/update',NULL,NULL,1432554655,1432554655),('/organization/view',2,'/organization/view',NULL,NULL,1432554655,1432554655),('/report/*',2,'/report/*',NULL,NULL,1432554647,1432554647),('/report/default/*',2,'/report/default/*',NULL,NULL,1432554647,1432554647),('/report/default/index',2,'/report/default/index',NULL,NULL,1432554646,1432554646),('/report/dependent/*',2,'/report/dependent/*',NULL,NULL,1432554647,1432554647),('/report/dependent/index',2,'/report/dependent/index',NULL,NULL,1432554647,1432554647),('/report/dependent/studbatch',2,'/report/dependent/studbatch',NULL,NULL,1432554647,1432554647),('/report/dependent/studsection',2,'/report/dependent/studsection',NULL,NULL,1432554647,1432554647),('/report/empinforeport',2,'/report/empinforeport',NULL,NULL,1432554655,1432554655),('/report/employee/*',2,'/report/employee/*',NULL,NULL,1432554647,1432554647),('/report/employee/empinforeport',2,'/report/employee/empinforeport',NULL,NULL,1432554647,1432554647),('/report/employee/index',2,'/report/employee/index',NULL,NULL,1432554647,1432554647),('/report/employee/selected-employee-list',2,'/report/employee/selected-employee-list',NULL,NULL,1432554647,1432554647),('/report/index',2,'/report/index',NULL,NULL,1432554655,1432554655),('/report/selected-employee-list',2,'/report/selected-employee-list',NULL,NULL,1432554655,1432554655),('/report/selected-student-list',2,'/report/selected-student-list',NULL,NULL,1432554655,1432554655),('/report/student/*',2,'/report/student/*',NULL,NULL,1432554647,1432554647),('/report/student/index',2,'/report/student/index',NULL,NULL,1432554647,1432554647),('/report/student/selected-student-list',2,'/report/student/selected-student-list',NULL,NULL,1432554647,1432554647),('/report/student/stuinforeport',2,'/report/student/stuinforeport',NULL,NULL,1432554647,1432554647),('/report/stuinforeport',2,'/report/stuinforeport',NULL,NULL,1432554655,1432554655),('/rights/*',2,'/rights/*',NULL,NULL,1432554651,1432554651),('/rights/assignment/*',2,'/rights/assignment/*',NULL,NULL,1432554649,1432554649),('/rights/assignment/assign',2,'/rights/assignment/assign',NULL,NULL,1432554649,1432554649),('/rights/assignment/index',2,'/rights/assignment/index',NULL,NULL,1432554649,1432554649),('/rights/assignment/role-search',2,'/rights/assignment/role-search',NULL,NULL,1432554649,1432554649),('/rights/assignment/view',2,'/rights/assignment/view',NULL,NULL,1432554649,1432554649),('/rights/default/*',2,'/rights/default/*',NULL,NULL,1432554649,1432554649),('/rights/default/index',2,'/rights/default/index',NULL,NULL,1432554649,1432554649),('/rights/menu/*',2,'/rights/menu/*',NULL,NULL,1432554650,1432554650),('/rights/menu/create',2,'/rights/menu/create',NULL,NULL,1432554650,1432554650),('/rights/menu/delete',2,'/rights/menu/delete',NULL,NULL,1432554650,1432554650),('/rights/menu/index',2,'/rights/menu/index',NULL,NULL,1432554650,1432554650),('/rights/menu/update',2,'/rights/menu/update',NULL,NULL,1432554650,1432554650),('/rights/menu/view',2,'/rights/menu/view',NULL,NULL,1432554650,1432554650),('/rights/permission/*',2,'/rights/permission/*',NULL,NULL,1432554650,1432554650),('/rights/permission/assign',2,'/rights/permission/assign',NULL,NULL,1432554650,1432554650),('/rights/permission/create',2,'/rights/permission/create',NULL,NULL,1432554650,1432554650),('/rights/permission/delete',2,'/rights/permission/delete',NULL,NULL,1432554650,1432554650),('/rights/permission/index',2,'/rights/permission/index',NULL,NULL,1432554650,1432554650),('/rights/permission/role-search',2,'/rights/permission/role-search',NULL,NULL,1432554650,1432554650),('/rights/permission/update',2,'/rights/permission/update',NULL,NULL,1432554650,1432554650),('/rights/permission/view',2,'/rights/permission/view',NULL,NULL,1432554650,1432554650),('/rights/role/*',2,'/rights/role/*',NULL,NULL,1432554651,1432554651),('/rights/role/assign',2,'/rights/role/assign',NULL,NULL,1432554650,1432554650),('/rights/role/create',2,'/rights/role/create',NULL,NULL,1432554650,1432554650),('/rights/role/delete',2,'/rights/role/delete',NULL,NULL,1432554650,1432554650),('/rights/role/index',2,'/rights/role/index',NULL,NULL,1432554650,1432554650),('/rights/role/role-search',2,'/rights/role/role-search',NULL,NULL,1432554651,1432554651),('/rights/role/update',2,'/rights/role/update',NULL,NULL,1432554650,1432554650),('/rights/role/view',2,'/rights/role/view',NULL,NULL,1432554650,1432554650),('/rights/route/*',2,'/rights/route/*',NULL,NULL,1432554651,1432554651),('/rights/route/assign',2,'/rights/route/assign',NULL,NULL,1432554651,1432554651),('/rights/route/create',2,'/rights/route/create',NULL,NULL,1432554651,1432554651),('/rights/route/index',2,'/rights/route/index',NULL,NULL,1432554651,1432554651),('/rights/route/route-search',2,'/rights/route/route-search',NULL,NULL,1432554651,1432554651),('/rights/rule/*',2,'/rights/rule/*',NULL,NULL,1432554651,1432554651),('/rights/rule/create',2,'/rights/rule/create',NULL,NULL,1432554651,1432554651),('/rights/rule/delete',2,'/rights/rule/delete',NULL,NULL,1432554651,1432554651),('/rights/rule/index',2,'/rights/rule/index',NULL,NULL,1432554651,1432554651),('/rights/rule/update',2,'/rights/rule/update',NULL,NULL,1432554651,1432554651),('/rights/rule/view',2,'/rights/rule/view',NULL,NULL,1432554651,1432554651),('/site/*',2,'/site/*',NULL,NULL,1432554656,1432554656),('/site/about',2,'/site/about',NULL,NULL,1432554656,1432554656),('/site/captcha',2,'/site/captcha',NULL,NULL,1432554655,1432554655),('/site/contact',2,'/site/contact',NULL,NULL,1432554655,1432554655),('/site/error',2,'/site/error',NULL,NULL,1432554655,1432554655),('/site/forgotpassword',2,'/site/forgotpassword',NULL,NULL,1432554655,1432554655),('/site/index',2,'/site/index',NULL,NULL,1432554655,1432554655),('/site/loadimage',2,'/site/loadimage',NULL,NULL,1432554655,1432554655),('/site/login',2,'/site/login',NULL,NULL,1432554655,1432554655),('/site/logout',2,'/site/logout',NULL,NULL,1432554655,1432554655),('/state/*',2,'/state/*',NULL,NULL,1432554656,1432554656),('/state/create',2,'/state/create',NULL,NULL,1432554656,1432554656),('/state/delete',2,'/state/delete',NULL,NULL,1432554656,1432554656),('/state/index',2,'/state/index',NULL,NULL,1432554656,1432554656),('/state/update',2,'/state/update',NULL,NULL,1432554656,1432554656),('/state/view',2,'/state/view',NULL,NULL,1432554656,1432554656),('/student/*',2,'/student/*',NULL,NULL,1432554642,1432554642),('/student/default/*',2,'/student/default/*',NULL,NULL,1432554639,1432554639),('/student/default/index',2,'/student/default/index',NULL,NULL,1432554639,1432554639),('/student/dependent/*',2,'/student/dependent/*',NULL,NULL,1432554639,1432554639),('/student/dependent/studbatch',2,'/student/dependent/studbatch',NULL,NULL,1432554639,1432554639),('/student/dependent/studsection',2,'/student/dependent/studsection',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-c-city',2,'/student/dependent/ustud-c-city',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-c-state',2,'/student/dependent/ustud-c-state',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-p-city',2,'/student/dependent/ustud-p-city',NULL,NULL,1432554639,1432554639),('/student/dependent/ustud-p-state',2,'/student/dependent/ustud-p-state',NULL,NULL,1432554639,1432554639),('/student/export-data/*',2,'/student/export-data/*',NULL,NULL,1432554639,1432554639),('/student/export-data/student-profile-pdf',2,'/student/export-data/student-profile-pdf',NULL,NULL,1432554639,1432554639),('/student/stu-address/*',2,'/student/stu-address/*',NULL,NULL,1432554640,1432554640),('/student/stu-address/create',2,'/student/stu-address/create',NULL,NULL,1432554639,1432554639),('/student/stu-address/delete',2,'/student/stu-address/delete',NULL,NULL,1432554640,1432554640),('/student/stu-address/index',2,'/student/stu-address/index',NULL,NULL,1432554639,1432554639),('/student/stu-address/update',2,'/student/stu-address/update',NULL,NULL,1432554640,1432554640),('/student/stu-address/view',2,'/student/stu-address/view',NULL,NULL,1432554639,1432554639),('/student/stu-category/*',2,'/student/stu-category/*',NULL,NULL,1432554640,1432554640),('/student/stu-category/create',2,'/student/stu-category/create',NULL,NULL,1432554640,1432554640),('/student/stu-category/delete',2,'/student/stu-category/delete',NULL,NULL,1432554640,1432554640),('/student/stu-category/index',2,'/student/stu-category/index',NULL,NULL,1432554640,1432554640),('/student/stu-category/update',2,'/student/stu-category/update',NULL,NULL,1432554640,1432554640),('/student/stu-category/view',2,'/student/stu-category/view',NULL,NULL,1432554640,1432554640),('/student/stu-docs/*',2,'/student/stu-docs/*',NULL,NULL,1432554640,1432554640),('/student/stu-docs/create',2,'/student/stu-docs/create',NULL,NULL,1432554640,1432554640),('/student/stu-docs/delete',2,'/student/stu-docs/delete',NULL,NULL,1432554640,1432554640),('/student/stu-docs/index',2,'/student/stu-docs/index',NULL,NULL,1432554640,1432554640),('/student/stu-docs/update',2,'/student/stu-docs/update',NULL,NULL,1432554640,1432554640),('/student/stu-docs/view',2,'/student/stu-docs/view',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/*',2,'/student/stu-guardians/*',NULL,NULL,1432554641,1432554641),('/student/stu-guardians/create',2,'/student/stu-guardians/create',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/delete',2,'/student/stu-guardians/delete',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/index',2,'/student/stu-guardians/index',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/update',2,'/student/stu-guardians/update',NULL,NULL,1432554640,1432554640),('/student/stu-guardians/view',2,'/student/stu-guardians/view',NULL,NULL,1432554640,1432554640),('/student/stu-info/*',2,'/student/stu-info/*',NULL,NULL,1432554641,1432554641),('/student/stu-info/create',2,'/student/stu-info/create',NULL,NULL,1432554641,1432554641),('/student/stu-info/delete',2,'/student/stu-info/delete',NULL,NULL,1432554641,1432554641),('/student/stu-info/index',2,'/student/stu-info/index',NULL,NULL,1432554641,1432554641),('/student/stu-info/update',2,'/student/stu-info/update',NULL,NULL,1432554641,1432554641),('/student/stu-info/view',2,'/student/stu-info/view',NULL,NULL,1432554641,1432554641),('/student/stu-master/*',2,'/student/stu-master/*',NULL,NULL,1432554641,1432554641),('/student/stu-master/adddocs',2,'/student/stu-master/adddocs',NULL,NULL,1432554641,1432554641),('/student/stu-master/addguardian',2,'/student/stu-master/addguardian',NULL,NULL,1432554641,1432554641),('/student/stu-master/change-status',2,'/student/stu-master/change-status',NULL,NULL,1432554641,1432554641),('/student/stu-master/create',2,'/student/stu-master/create',NULL,NULL,1432554641,1432554641),('/student/stu-master/delete',2,'/student/stu-master/delete',NULL,NULL,1432554641,1432554641),('/student/stu-master/delete-doc',2,'/student/stu-master/delete-doc',NULL,NULL,1432554641,1432554641),('/student/stu-master/docs-download',2,'/student/stu-master/docs-download',NULL,NULL,1432554641,1432554641),('/student/stu-master/emg-change-status',2,'/student/stu-master/emg-change-status',NULL,NULL,1432554641,1432554641),('/student/stu-master/index',2,'/student/stu-master/index',NULL,NULL,1432554641,1432554641),('/student/stu-master/stu-photo',2,'/student/stu-master/stu-photo',NULL,NULL,1432554641,1432554641),('/student/stu-master/update',2,'/student/stu-master/update',NULL,NULL,1432554641,1432554641),('/student/stu-master/view',2,'/student/stu-master/view',NULL,NULL,1432554641,1432554641),('/student/stu-status/*',2,'/student/stu-status/*',NULL,NULL,1432554642,1432554642),('/student/stu-status/create',2,'/student/stu-status/create',NULL,NULL,1432554642,1432554642),('/student/stu-status/delete',2,'/student/stu-status/delete',NULL,NULL,1432554642,1432554642),('/student/stu-status/index',2,'/student/stu-status/index',NULL,NULL,1432554641,1432554641),('/student/stu-status/update',2,'/student/stu-status/update',NULL,NULL,1432554642,1432554642),('/student/stu-status/view',2,'/student/stu-status/view',NULL,NULL,1432554642,1432554642),('/subject-master/*',2,'/subject-master/*',NULL,NULL,1432554656,1432554656),('/subject-master/create',2,'/subject-master/create',NULL,NULL,1432554656,1432554656),('/subject-master/delete',2,'/subject-master/delete',NULL,NULL,1432554656,1432554656),('/subject-master/index',2,'/subject-master/index',NULL,NULL,1432554656,1432554656),('/subject-master/update',2,'/subject-master/update',NULL,NULL,1432554656,1432554656),('/subject-master/view',2,'/subject-master/view',NULL,NULL,1432554656,1432554656),('/user/*',2,'/user/*',NULL,NULL,1432554657,1432554657),('/user/change',2,'/user/change',NULL,NULL,1432554656,1432554656),('/user/create',2,'/user/create',NULL,NULL,1432554656,1432554656),('/user/delete',2,'/user/delete',NULL,NULL,1432554656,1432554656),('/user/index',2,'/user/index',NULL,NULL,1432554656,1432554656),('/user/resetemploginid',2,'/user/resetemploginid',NULL,NULL,1432554657,1432554657),('/user/resetemppassword',2,'/user/resetemppassword',NULL,NULL,1432554657,1432554657),('/user/resetstudloginid',2,'/user/resetstudloginid',NULL,NULL,1432554657,1432554657),('/user/resetstudpassword',2,'/user/resetstudpassword',NULL,NULL,1432554657,1432554657),('/user/update',2,'/user/update',NULL,NULL,1432554656,1432554656),('/user/update-emp-password',2,'/user/update-emp-password',NULL,NULL,1432554657,1432554657),('/user/update-stud-password',2,'/user/update-stud-password',NULL,NULL,1432554657,1432554657),('/user/updateemploginid',2,'/user/updateemploginid',NULL,NULL,1432554657,1432554657),('/user/updatestudloginid',2,'/user/updatestudloginid',NULL,NULL,1432554657,1432554657),('/user/view',2,'/user/view',NULL,NULL,1432554656,1432554656),('Configuration',2,'Access Configuration views',NULL,NULL,1429870570,1430298672),('Employee',1,'Employee',NULL,NULL,1422967395,1430299553),('Rights',2,'Access Rights Module Link',NULL,NULL,1430227237,1431776281),('Student',1,'Student',NULL,NULL,1422958231,1422958231),('SuperAdmin',1,'SuperAdmin',NULL,NULL,1422957183,1422957183),('updateAllEmpInfo',2,'Update Employee all details',NULL,NULL,1430979242,1430979242),('updateAllStuInfo',2,'Update Student all details',NULL,NULL,1430913145,1430913145);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('SuperAdmin','/*'),('SuperAdmin','/auth-assignment/*'),('SuperAdmin','/auth-assignment/create'),('SuperAdmin','/auth-assignment/delete'),('SuperAdmin','/auth-assignment/index'),('SuperAdmin','/auth-assignment/update'),('SuperAdmin','/auth-assignment/view'),('SuperAdmin','/city/*'),('SuperAdmin','/city/create'),('SuperAdmin','/city/delete'),('SuperAdmin','/city/index'),('SuperAdmin','/city/update'),('SuperAdmin','/city/view'),('SuperAdmin','/country/*'),('SuperAdmin','/country/create'),('SuperAdmin','/country/delete'),('SuperAdmin','/country/index'),('SuperAdmin','/country/update'),('SuperAdmin','/country/view'),('SuperAdmin','/course/*'),('SuperAdmin','/course/batches/*'),('SuperAdmin','/course/batches/create'),('SuperAdmin','/course/batches/delete'),('SuperAdmin','/course/batches/index'),('SuperAdmin','/course/batches/toggle'),('SuperAdmin','/course/batches/update'),('SuperAdmin','/course/batches/view'),('SuperAdmin','/course/courses/*'),('SuperAdmin','/course/courses/create'),('SuperAdmin','/course/courses/delete'),('Employee','/course/courses/index'),('Student','/course/courses/index'),('SuperAdmin','/course/courses/index'),('SuperAdmin','/course/courses/toggle'),('SuperAdmin','/course/courses/update'),('SuperAdmin','/course/courses/view'),('SuperAdmin','/course/default/*'),('Employee','/course/default/index'),('Student','/course/default/index'),('SuperAdmin','/course/default/index'),('SuperAdmin','/course/section/*'),('SuperAdmin','/course/section/create'),('SuperAdmin','/course/section/delete'),('SuperAdmin','/course/section/index'),('SuperAdmin','/course/section/toggle'),('SuperAdmin','/course/section/update'),('SuperAdmin','/course/section/view'),('SuperAdmin','/dashboard/*'),('SuperAdmin','/dashboard/default/*'),('SuperAdmin','/dashboard/default/index'),('SuperAdmin','/dashboard/events/*'),('SuperAdmin','/dashboard/events/add-event'),('SuperAdmin','/dashboard/events/event-delete'),('SuperAdmin','/dashboard/events/index'),('SuperAdmin','/dashboard/events/update-event'),('SuperAdmin','/dashboard/events/view'),('Employee','/dashboard/events/view-events'),('Student','/dashboard/events/view-events'),('SuperAdmin','/dashboard/events/view-events'),('SuperAdmin','/dashboard/msg-of-day/*'),('SuperAdmin','/dashboard/msg-of-day/create'),('SuperAdmin','/dashboard/msg-of-day/delete'),('SuperAdmin','/dashboard/msg-of-day/index'),('SuperAdmin','/dashboard/msg-of-day/toggle'),('SuperAdmin','/dashboard/msg-of-day/update'),('SuperAdmin','/dashboard/msg-of-day/view'),('SuperAdmin','/dashboard/notice/*'),('SuperAdmin','/dashboard/notice/create'),('SuperAdmin','/dashboard/notice/delete'),('SuperAdmin','/dashboard/notice/index'),('SuperAdmin','/dashboard/notice/notice-file'),('SuperAdmin','/dashboard/notice/toggle'),('SuperAdmin','/dashboard/notice/update'),('SuperAdmin','/dashboard/notice/view'),('Employee','/dashboard/notice/view-popup'),('Student','/dashboard/notice/view-popup'),('SuperAdmin','/dashboard/notice/view-popup'),('SuperAdmin','/debug/*'),('SuperAdmin','/debug/default/*'),('SuperAdmin','/debug/default/download-mail'),('SuperAdmin','/debug/default/index'),('SuperAdmin','/debug/default/toolbar'),('SuperAdmin','/debug/default/view'),('SuperAdmin','/default/*'),('SuperAdmin','/default/index'),('Employee','/dependent/*'),('SuperAdmin','/dependent/*'),('SuperAdmin','/dependent/getcity'),('SuperAdmin','/dependent/getorgcity'),('SuperAdmin','/dependent/getorgstate'),('SuperAdmin','/dependent/getstate'),('SuperAdmin','/dependent/index'),('SuperAdmin','/dependent/studbatch'),('SuperAdmin','/dependent/studsection'),('SuperAdmin','/document-category/*'),('SuperAdmin','/document-category/create'),('SuperAdmin','/document-category/delete'),('SuperAdmin','/document-category/index'),('SuperAdmin','/document-category/update'),('SuperAdmin','/document-category/view'),('SuperAdmin','/employee/*'),('SuperAdmin','/employee/default/*'),('Employee','/employee/default/index'),('Student','/employee/default/index'),('SuperAdmin','/employee/default/index'),('Employee','/employee/dependent/*'),('SuperAdmin','/employee/dependent/*'),('SuperAdmin','/employee/dependent/emp-c-city'),('SuperAdmin','/employee/dependent/emp-c-state'),('SuperAdmin','/employee/dependent/emp-p-city'),('SuperAdmin','/employee/dependent/emp-p-state'),('SuperAdmin','/employee/emp-address/*'),('SuperAdmin','/employee/emp-address/create'),('SuperAdmin','/employee/emp-address/delete'),('SuperAdmin','/employee/emp-address/index'),('SuperAdmin','/employee/emp-address/update'),('SuperAdmin','/employee/emp-address/view'),('SuperAdmin','/employee/emp-category/*'),('SuperAdmin','/employee/emp-category/create'),('SuperAdmin','/employee/emp-category/delete'),('SuperAdmin','/employee/emp-category/index'),('SuperAdmin','/employee/emp-category/update'),('SuperAdmin','/employee/emp-category/view'),('SuperAdmin','/employee/emp-department/*'),('SuperAdmin','/employee/emp-department/create'),('SuperAdmin','/employee/emp-department/delete'),('SuperAdmin','/employee/emp-department/index'),('SuperAdmin','/employee/emp-department/update'),('SuperAdmin','/employee/emp-department/view'),('SuperAdmin','/employee/emp-designation/*'),('SuperAdmin','/employee/emp-designation/create'),('SuperAdmin','/employee/emp-designation/delete'),('SuperAdmin','/employee/emp-designation/index'),('SuperAdmin','/employee/emp-designation/update'),('SuperAdmin','/employee/emp-designation/view'),('SuperAdmin','/employee/emp-docs/*'),('SuperAdmin','/employee/emp-docs/create'),('SuperAdmin','/employee/emp-docs/delete'),('SuperAdmin','/employee/emp-docs/index'),('SuperAdmin','/employee/emp-docs/update'),('SuperAdmin','/employee/emp-docs/view'),('SuperAdmin','/employee/emp-info/*'),('SuperAdmin','/employee/emp-info/create'),('SuperAdmin','/employee/emp-info/delete'),('SuperAdmin','/employee/emp-info/index'),('SuperAdmin','/employee/emp-info/update'),('SuperAdmin','/employee/emp-info/view'),('SuperAdmin','/employee/emp-master/*'),('SuperAdmin','/employee/emp-master/adddocs'),('SuperAdmin','/employee/emp-master/change-status'),('SuperAdmin','/employee/emp-master/create'),('SuperAdmin','/employee/emp-master/delete'),('SuperAdmin','/employee/emp-master/delete-doc'),('SuperAdmin','/employee/emp-master/docs-download'),('Employee','/employee/emp-master/emp-photo'),('SuperAdmin','/employee/emp-master/emp-photo'),('Employee','/employee/emp-master/index'),('Student','/employee/emp-master/index'),('SuperAdmin','/employee/emp-master/index'),('Employee','/employee/emp-master/update'),('SuperAdmin','/employee/emp-master/update'),('Employee','/employee/emp-master/view'),('SuperAdmin','/employee/emp-master/view'),('SuperAdmin','/employee/emp-status/*'),('SuperAdmin','/employee/emp-status/create'),('SuperAdmin','/employee/emp-status/delete'),('SuperAdmin','/employee/emp-status/index'),('SuperAdmin','/employee/emp-status/update'),('SuperAdmin','/employee/emp-status/view'),('SuperAdmin','/employee/export-data/*'),('Employee','/employee/export-data/employee-profile-pdf'),('SuperAdmin','/employee/export-data/employee-profile-pdf'),('SuperAdmin','/export-data/*'),('SuperAdmin','/export-data/export-excel'),('SuperAdmin','/export-data/export-to-pdf'),('SuperAdmin','/fees/*'),('SuperAdmin','/fees/bank-master/*'),('SuperAdmin','/fees/bank-master/create'),('SuperAdmin','/fees/bank-master/delete'),('SuperAdmin','/fees/bank-master/index'),('SuperAdmin','/fees/bank-master/update'),('SuperAdmin','/fees/bank-master/view'),('SuperAdmin','/fees/default/*'),('Student','/fees/default/index'),('SuperAdmin','/fees/default/index'),('SuperAdmin','/fees/dependent/*'),('SuperAdmin','/fees/dependent/get-fees-category'),('SuperAdmin','/fees/fees-category-details/*'),('SuperAdmin','/fees/fees-category-details/create'),('SuperAdmin','/fees/fees-category-details/delete'),('SuperAdmin','/fees/fees-category-details/index'),('SuperAdmin','/fees/fees-category-details/update'),('SuperAdmin','/fees/fees-category-details/view'),('SuperAdmin','/fees/fees-collect-category/*'),('SuperAdmin','/fees/fees-collect-category/create'),('SuperAdmin','/fees/fees-collect-category/delete'),('SuperAdmin','/fees/fees-collect-category/index'),('SuperAdmin','/fees/fees-collect-category/toggle'),('SuperAdmin','/fees/fees-collect-category/update'),('SuperAdmin','/fees/fees-collect-category/view'),('SuperAdmin','/fees/fees-payment-transaction/*'),('SuperAdmin','/fees/fees-payment-transaction/collect'),('SuperAdmin','/fees/fees-payment-transaction/delete'),('SuperAdmin','/fees/fees-payment-transaction/export-fcc-wise-fees-pdf'),('SuperAdmin','/fees/fees-payment-transaction/pay-fees'),('SuperAdmin','/fees/fees-payment-transaction/print-common-receipt'),('Student','/fees/fees-payment-transaction/stu-fees-data'),('SuperAdmin','/fees/fees-payment-transaction/stu-fees-data'),('SuperAdmin','/fees/fees-payment-transaction/update'),('SuperAdmin','/fees/fees-payment-transaction/view'),('SuperAdmin','/gii/*'),('SuperAdmin','/gii/default/*'),('SuperAdmin','/gii/default/action'),('SuperAdmin','/gii/default/diff'),('SuperAdmin','/gii/default/index'),('SuperAdmin','/gii/default/preview'),('SuperAdmin','/gii/default/view'),('SuperAdmin','/languages/*'),('SuperAdmin','/languages/create'),('SuperAdmin','/languages/delete'),('SuperAdmin','/languages/index'),('SuperAdmin','/languages/update'),('SuperAdmin','/languages/view'),('SuperAdmin','/login-details/*'),('SuperAdmin','/login-details/create'),('SuperAdmin','/login-details/delete'),('SuperAdmin','/login-details/index'),('SuperAdmin','/login-details/update'),('SuperAdmin','/login-details/view'),('SuperAdmin','/national-holidays/*'),('SuperAdmin','/national-holidays/create'),('SuperAdmin','/national-holidays/delete'),('SuperAdmin','/national-holidays/index'),('SuperAdmin','/national-holidays/update'),('SuperAdmin','/national-holidays/view'),('SuperAdmin','/nationality/*'),('SuperAdmin','/nationality/create'),('SuperAdmin','/nationality/delete'),('SuperAdmin','/nationality/index'),('SuperAdmin','/nationality/update'),('SuperAdmin','/nationality/view'),('SuperAdmin','/organization/*'),('SuperAdmin','/organization/create'),('SuperAdmin','/organization/delete'),('SuperAdmin','/organization/index'),('SuperAdmin','/organization/update'),('SuperAdmin','/organization/view'),('SuperAdmin','/report/*'),('SuperAdmin','/report/default/*'),('Employee','/report/default/index'),('SuperAdmin','/report/default/index'),('Employee','/report/dependent/*'),('SuperAdmin','/report/dependent/*'),('SuperAdmin','/report/dependent/index'),('SuperAdmin','/report/dependent/studbatch'),('SuperAdmin','/report/dependent/studsection'),('Employee','/report/empinforeport'),('SuperAdmin','/report/empinforeport'),('SuperAdmin','/report/employee/*'),('Employee','/report/employee/empinforeport'),('SuperAdmin','/report/employee/empinforeport'),('SuperAdmin','/report/employee/index'),('Employee','/report/employee/selected-employee-list'),('SuperAdmin','/report/employee/selected-employee-list'),('SuperAdmin','/report/index'),('Employee','/report/selected-employee-list'),('SuperAdmin','/report/selected-employee-list'),('Employee','/report/selected-student-list'),('SuperAdmin','/report/selected-student-list'),('SuperAdmin','/report/student/*'),('SuperAdmin','/report/student/index'),('Employee','/report/student/selected-student-list'),('SuperAdmin','/report/student/selected-student-list'),('Employee','/report/student/stuinforeport'),('SuperAdmin','/report/student/stuinforeport'),('Employee','/report/stuinforeport'),('SuperAdmin','/report/stuinforeport'),('SuperAdmin','/rights/*'),('SuperAdmin','/rights/assignment/*'),('SuperAdmin','/rights/assignment/assign'),('SuperAdmin','/rights/assignment/index'),('SuperAdmin','/rights/assignment/role-search'),('SuperAdmin','/rights/assignment/view'),('SuperAdmin','/rights/default/*'),('SuperAdmin','/rights/default/index'),('SuperAdmin','/rights/menu/*'),('SuperAdmin','/rights/menu/create'),('SuperAdmin','/rights/menu/delete'),('SuperAdmin','/rights/menu/index'),('SuperAdmin','/rights/menu/update'),('SuperAdmin','/rights/menu/view'),('SuperAdmin','/rights/permission/*'),('SuperAdmin','/rights/permission/assign'),('SuperAdmin','/rights/permission/create'),('SuperAdmin','/rights/permission/delete'),('SuperAdmin','/rights/permission/index'),('SuperAdmin','/rights/permission/role-search'),('SuperAdmin','/rights/permission/update'),('SuperAdmin','/rights/permission/view'),('SuperAdmin','/rights/role/*'),('SuperAdmin','/rights/role/assign'),('SuperAdmin','/rights/role/create'),('SuperAdmin','/rights/role/delete'),('SuperAdmin','/rights/role/index'),('SuperAdmin','/rights/role/role-search'),('SuperAdmin','/rights/role/update'),('SuperAdmin','/rights/role/view'),('SuperAdmin','/rights/route/*'),('SuperAdmin','/rights/route/assign'),('SuperAdmin','/rights/route/create'),('SuperAdmin','/rights/route/index'),('SuperAdmin','/rights/route/route-search'),('SuperAdmin','/rights/rule/*'),('SuperAdmin','/rights/rule/create'),('SuperAdmin','/rights/rule/delete'),('SuperAdmin','/rights/rule/index'),('SuperAdmin','/rights/rule/update'),('SuperAdmin','/rights/rule/view'),('SuperAdmin','/site/*'),('SuperAdmin','/site/about'),('SuperAdmin','/site/captcha'),('SuperAdmin','/site/contact'),('SuperAdmin','/site/error'),('SuperAdmin','/site/forgotpassword'),('SuperAdmin','/site/index'),('SuperAdmin','/site/loadimage'),('SuperAdmin','/site/login'),('SuperAdmin','/site/logout'),('SuperAdmin','/state/*'),('SuperAdmin','/state/create'),('SuperAdmin','/state/delete'),('SuperAdmin','/state/index'),('SuperAdmin','/state/update'),('SuperAdmin','/state/view'),('SuperAdmin','/student/*'),('SuperAdmin','/student/default/*'),('Employee','/student/default/index'),('SuperAdmin','/student/default/index'),('SuperAdmin','/student/dependent/*'),('SuperAdmin','/student/dependent/studbatch'),('SuperAdmin','/student/dependent/studsection'),('SuperAdmin','/student/dependent/ustud-c-city'),('SuperAdmin','/student/dependent/ustud-c-state'),('SuperAdmin','/student/dependent/ustud-p-city'),('SuperAdmin','/student/dependent/ustud-p-state'),('SuperAdmin','/student/export-data/*'),('SuperAdmin','/student/export-data/student-profile-pdf'),('SuperAdmin','/student/stu-address/*'),('SuperAdmin','/student/stu-address/create'),('SuperAdmin','/student/stu-address/delete'),('SuperAdmin','/student/stu-address/index'),('SuperAdmin','/student/stu-address/update'),('SuperAdmin','/student/stu-address/view'),('SuperAdmin','/student/stu-category/*'),('SuperAdmin','/student/stu-category/create'),('SuperAdmin','/student/stu-category/delete'),('SuperAdmin','/student/stu-category/index'),('SuperAdmin','/student/stu-category/update'),('SuperAdmin','/student/stu-category/view'),('SuperAdmin','/student/stu-docs/*'),('SuperAdmin','/student/stu-docs/create'),('SuperAdmin','/student/stu-docs/delete'),('SuperAdmin','/student/stu-docs/index'),('SuperAdmin','/student/stu-docs/update'),('SuperAdmin','/student/stu-docs/view'),('SuperAdmin','/student/stu-guardians/*'),('SuperAdmin','/student/stu-guardians/create'),('SuperAdmin','/student/stu-guardians/delete'),('SuperAdmin','/student/stu-guardians/index'),('SuperAdmin','/student/stu-guardians/update'),('SuperAdmin','/student/stu-guardians/view'),('SuperAdmin','/student/stu-info/*'),('SuperAdmin','/student/stu-info/create'),('SuperAdmin','/student/stu-info/delete'),('SuperAdmin','/student/stu-info/index'),('SuperAdmin','/student/stu-info/update'),('SuperAdmin','/student/stu-info/view'),('SuperAdmin','/student/stu-master/*'),('SuperAdmin','/student/stu-master/adddocs'),('SuperAdmin','/student/stu-master/addguardian'),('SuperAdmin','/student/stu-master/change-status'),('SuperAdmin','/student/stu-master/create'),('SuperAdmin','/student/stu-master/delete'),('SuperAdmin','/student/stu-master/delete-doc'),('SuperAdmin','/student/stu-master/docs-download'),('SuperAdmin','/student/stu-master/emg-change-status'),('Employee','/student/stu-master/index'),('SuperAdmin','/student/stu-master/index'),('SuperAdmin','/student/stu-master/stu-photo'),('SuperAdmin','/student/stu-master/update'),('Employee','/student/stu-master/view'),('Student','/student/stu-master/view'),('SuperAdmin','/student/stu-master/view'),('SuperAdmin','/student/stu-status/*'),('SuperAdmin','/student/stu-status/create'),('SuperAdmin','/student/stu-status/delete'),('SuperAdmin','/student/stu-status/index'),('SuperAdmin','/student/stu-status/update'),('SuperAdmin','/student/stu-status/view'),('SuperAdmin','/subject-master/*'),('SuperAdmin','/subject-master/create'),('SuperAdmin','/subject-master/delete'),('SuperAdmin','/subject-master/index'),('SuperAdmin','/subject-master/update'),('SuperAdmin','/subject-master/view'),('SuperAdmin','/user/*'),('Employee','/user/change'),('Student','/user/change'),('SuperAdmin','/user/change'),('SuperAdmin','/user/create'),('SuperAdmin','/user/delete'),('SuperAdmin','/user/index'),('SuperAdmin','/user/resetemploginid'),('SuperAdmin','/user/resetemppassword'),('SuperAdmin','/user/resetstudloginid'),('SuperAdmin','/user/resetstudpassword'),('SuperAdmin','/user/update'),('SuperAdmin','/user/update-emp-password'),('SuperAdmin','/user/update-stud-password'),('SuperAdmin','/user/updateemploginid'),('SuperAdmin','/user/updatestudloginid'),('SuperAdmin','/user/view'),('SuperAdmin','Configuration'),('SuperAdmin','Rights'),('SuperAdmin','updateAllEmpInfo'),('SuperAdmin','updateAllStuInfo');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_master`
--

DROP TABLE IF EXISTS `bank_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_master` (
  `bank_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_master_name` varchar(255) NOT NULL,
  `bank_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bank_master_id`),
  UNIQUE KEY `bank_master_name` (`bank_master_name`),
  UNIQUE KEY `bank_alias` (`bank_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `bank_master_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `bank_master_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_master`
--

LOCK TABLES `bank_master` WRITE;
/*!40000 ALTER TABLE `bank_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(120) NOT NULL,
  `batch_course_id` int(11) NOT NULL,
  `batch_alias` varchar(35) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`batch_id`),
  UNIQUE KEY `batch_name` (`batch_name`,`batch_course_id`),
  UNIQUE KEY `batch_alias` (`batch_alias`),
  KEY `batch_course_id` (`batch_course_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `batches_ibfk_3` FOREIGN KEY (`batch_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `batches_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `batches_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(35) NOT NULL,
  `city_state_id` int(11) NOT NULL,
  `city_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  UNIQUE KEY `city_name` (`city_name`,`city_state_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `city_state_id` (`city_state_id`),
  KEY `city_country_id` (`city_country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `city_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `city_ibfk_3` FOREIGN KEY (`city_state_id`) REFERENCES `state` (`state_id`),
  CONSTRAINT `city_ibfk_4` FOREIGN KEY (`city_country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_name` (`country_name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `country_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_alias` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_name` (`course_name`,`course_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category`
--

DROP TABLE IF EXISTS `document_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category` (
  `doc_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_category_name` varchar(50) NOT NULL,
  `doc_category_user_type` char(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`doc_category_id`),
  UNIQUE KEY `doc_category_name` (`doc_category_name`,`doc_category_user_type`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `document_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `document_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category`
--

LOCK TABLES `document_category` WRITE;
/*!40000 ALTER TABLE `document_category` DISABLE KEYS */;
INSERT INTO `document_category` VALUES (1,'–ü–∞—Å–ø–æ—Ä—Ç_–≥–ª–∞–≤–Ω–∞—è','0','2016-07-28 21:07:32',1,'2016-07-28 21:08:07',1,0),(2,'–ü–∞—Å–ø–æ—Ä—Ç_–ø—Ä–æ–ø–∏—Å–∫–∞','0','2016-07-28 21:07:56',1,NULL,NULL,0),(3,'–î–∏–ø–ª–æ–º','E','2016-07-28 21:08:36',1,NULL,NULL,0),(4,'–î–∏–ø–ª–æ–º_–ø—Ä–∏–ª–æ–∂–µ–Ω–∏–µ','E','2016-07-28 21:08:51',1,NULL,NULL,0),(5,'–°–≤–∏–¥–µ—Ç–µ–ª—å—Å—Ç–≤–æ –æ —Ä–æ–∂–¥–µ–Ω–∏–∏','S','2016-07-28 21:09:05',1,NULL,NULL,0);
/*!40000 ALTER TABLE `document_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_address`
--

DROP TABLE IF EXISTS `emp_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_address` (
  `emp_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_cadd` varchar(255) DEFAULT NULL,
  `emp_cadd_city` int(11) DEFAULT NULL,
  `emp_cadd_state` int(11) DEFAULT NULL,
  `emp_cadd_country` int(11) DEFAULT NULL,
  `emp_cadd_pincode` int(11) DEFAULT NULL,
  `emp_cadd_house_no` varchar(25) DEFAULT NULL,
  `emp_cadd_phone_no` varchar(25) DEFAULT NULL,
  `emp_padd` varchar(255) DEFAULT NULL,
  `emp_padd_city` int(11) DEFAULT NULL,
  `emp_padd_state` int(11) DEFAULT NULL,
  `emp_padd_country` int(11) DEFAULT NULL,
  `emp_padd_pincode` int(11) DEFAULT NULL,
  `emp_padd_house_no` varchar(25) DEFAULT NULL,
  `emp_padd_phone_no` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`emp_address_id`),
  KEY `emp_cadd_city` (`emp_cadd_city`),
  KEY `emp_cadd_state` (`emp_cadd_state`),
  KEY `emp_cadd_country` (`emp_cadd_country`),
  KEY `emp_padd_city` (`emp_padd_city`),
  KEY `emp_padd_state` (`emp_padd_state`),
  KEY `emp_padd_country` (`emp_padd_country`),
  CONSTRAINT `emp_address_ibfk_1` FOREIGN KEY (`emp_cadd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `emp_address_ibfk_2` FOREIGN KEY (`emp_cadd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `emp_address_ibfk_3` FOREIGN KEY (`emp_cadd_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `emp_address_ibfk_4` FOREIGN KEY (`emp_padd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `emp_address_ibfk_5` FOREIGN KEY (`emp_padd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `emp_address_ibfk_6` FOREIGN KEY (`emp_padd_country`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_address`
--

LOCK TABLES `emp_address` WRITE;
/*!40000 ALTER TABLE `emp_address` DISABLE KEYS */;
INSERT INTO `emp_address` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `emp_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_category`
--

DROP TABLE IF EXISTS `emp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_category` (
  `emp_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_category_name` varchar(50) NOT NULL,
  `emp_category_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_category_id`),
  UNIQUE KEY `emp_category_name` (`emp_category_name`),
  UNIQUE KEY `emp_category_alias` (`emp_category_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `emp_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_category`
--

LOCK TABLES `emp_category` WRITE;
/*!40000 ALTER TABLE `emp_category` DISABLE KEYS */;
INSERT INTO `emp_category` VALUES (1,'–ü–æ—Å—Ç–æ—è–Ω–Ω—ã–π —Ä–∞–±–æ—Ç–Ω–∏–∫','–û—Å–Ω–æ–≤–Ω–æ–π','2016-07-28 12:19:12',1,NULL,NULL,0),(2,'–í–Ω–µ—à–Ω–∏–π —Å–æ–≤–º–µ—Å—Ç–∏—Ç–µ–ª—å','–î–æ–≥–æ–≤–æ—Ä','2016-07-28 12:19:43',1,NULL,NULL,0),(3,'–í–Ω—É—Ç—Ä–µ–Ω–Ω–µ–µ —Å–æ–≤–º–µ—Å—Ç–∏—Ç–µ–ª—å—Å—Ç–≤–æ','–î–æ–ø','2016-07-28 12:20:44',1,'2016-07-28 12:21:28',1,2);
/*!40000 ALTER TABLE `emp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_department`
--

DROP TABLE IF EXISTS `emp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_department` (
  `emp_department_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_department_name` varchar(65) NOT NULL,
  `emp_department_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_department_id`),
  UNIQUE KEY `emp_department_name` (`emp_department_name`),
  UNIQUE KEY `emp_department_alias` (`emp_department_alias`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `emp_department_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_department_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_department`
--

LOCK TABLES `emp_department` WRITE;
/*!40000 ALTER TABLE `emp_department` DISABLE KEYS */;
INSERT INTO `emp_department` VALUES (1,'–ê–¥–º–∏–Ω–∏—Å—Ç—Ä–∞—Ü–∏—è','adm','2016-07-28 12:16:04',1,NULL,NULL,0);
/*!40000 ALTER TABLE `emp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_designation`
--

DROP TABLE IF EXISTS `emp_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_designation` (
  `emp_designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_designation_name` varchar(50) NOT NULL,
  `emp_designation_alias` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_designation_id`),
  UNIQUE KEY `emp_designation_name` (`emp_designation_name`),
  UNIQUE KEY `emp_designation_alias` (`emp_designation_alias`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `emp_designation_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_designation_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_designation`
--

LOCK TABLES `emp_designation` WRITE;
/*!40000 ALTER TABLE `emp_designation` DISABLE KEYS */;
INSERT INTO `emp_designation` VALUES (1,'–ó–∞–º–µ—Å—Ç–∏—Ç–µ–ª—å –¥–∏—Ä–µ–∫—Ç–æ—Ä–∞ –ø–æ –£–ú–†','–ó–∞–º –ø–æ –£–ú–†','2016-07-28 12:18:23',1,NULL,NULL,0);
/*!40000 ALTER TABLE `emp_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_docs`
--

DROP TABLE IF EXISTS `emp_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_docs` (
  `emp_docs_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_docs_details` varchar(100) DEFAULT NULL,
  `emp_docs_category_id` int(11) NOT NULL,
  `emp_docs_path` varchar(150) NOT NULL,
  `emp_docs_submited_at` datetime NOT NULL,
  `emp_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `emp_docs_emp_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_docs_id`),
  KEY `created_by` (`created_by`),
  KEY `emp_docs_emp_master_id` (`emp_docs_emp_master_id`),
  CONSTRAINT `emp_docs_ibfk_1` FOREIGN KEY (`emp_docs_emp_master_id`) REFERENCES `emp_master` (`emp_master_id`),
  CONSTRAINT `emp_docs_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_docs`
--

LOCK TABLES `emp_docs` WRITE;
/*!40000 ALTER TABLE `emp_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_info`
--

DROP TABLE IF EXISTS `emp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_info` (
  `emp_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_unique_id` int(11) NOT NULL,
  `emp_attendance_card_id` varchar(50) DEFAULT NULL,
  `emp_title` varchar(15) DEFAULT NULL,
  `emp_first_name` varchar(35) NOT NULL,
  `emp_middle_name` varchar(35) DEFAULT NULL,
  `emp_last_name` varchar(35) NOT NULL,
  `emp_name_alias` varchar(10) DEFAULT NULL,
  `emp_mother_name` varchar(50) DEFAULT NULL,
  `emp_gender` varchar(20) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_religion` varchar(50) DEFAULT NULL,
  `emp_bloodgroup` varchar(15) NOT NULL DEFAULT 'Unknown',
  `emp_joining_date` date DEFAULT NULL,
  `emp_birthplace` varchar(50) DEFAULT NULL,
  `emp_email_id` varchar(65) DEFAULT NULL,
  `emp_maritalstatus` varchar(35) DEFAULT NULL,
  `emp_mobile_no` bigint(12) DEFAULT NULL,
  `emp_photo` varchar(150) DEFAULT NULL,
  `emp_languages` varchar(255) DEFAULT NULL,
  `emp_bankaccount_no` varchar(25) DEFAULT NULL,
  `emp_qualification` varchar(50) DEFAULT NULL,
  `emp_specialization` varchar(255) DEFAULT NULL,
  `emp_experience_year` tinyint(2) DEFAULT NULL,
  `emp_experience_month` tinyint(2) DEFAULT NULL,
  `emp_hobbies` varchar(100) DEFAULT NULL,
  `emp_reference` varchar(35) DEFAULT NULL,
  `emp_guardian_name` varchar(65) DEFAULT NULL,
  `emp_guardian_relation` varchar(30) DEFAULT NULL,
  `emp_guardian_qualification` varchar(50) DEFAULT NULL,
  `emp_guardian_occupation` varchar(50) DEFAULT NULL,
  `emp_guardian_income` varchar(50) DEFAULT NULL,
  `emp_guardian_homeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_officeadd` varchar(255) DEFAULT NULL,
  `emp_guardian_mobile_no` bigint(12) DEFAULT NULL,
  `emp_guardian_phone_no` varchar(25) DEFAULT NULL,
  `emp_guardian_email_id` varchar(65) DEFAULT NULL,
  `emp_info_emp_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_info_id`),
  UNIQUE KEY `emp_unique_id` (`emp_unique_id`),
  UNIQUE KEY `emp_info_emp_master_id` (`emp_info_emp_master_id`),
  UNIQUE KEY `emp_email_id` (`emp_email_id`),
  UNIQUE KEY `emp_mobile_no` (`emp_mobile_no`),
  UNIQUE KEY `emp_attendance_card_id` (`emp_attendance_card_id`),
  KEY `emp_info_emp_master_id_fgn` (`emp_info_emp_master_id`),
  CONSTRAINT `emp_info_ibfk_3` FOREIGN KEY (`emp_info_emp_master_id`) REFERENCES `emp_master` (`emp_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_info`
--

LOCK TABLES `emp_info` WRITE;
/*!40000 ALTER TABLE `emp_info` DISABLE KEYS */;
INSERT INTO `emp_info` VALUES (1,1,NULL,'Mr.','–ê–ª–µ–∫—Å–∞–Ω–¥—Ä','–Æ—Ä—å–µ–≤–∏—á','–õ—É–Ω—ë–≤','',NULL,'MALE','1984-06-20','','Unknown','2012-09-01','–•–∞–±–∞—Ä–æ–≤—Å–∫','a.lunev@maoukml.ru','MARRIED',89211058291,NULL,NULL,NULL,NULL,NULL,12,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `emp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_master`
--

DROP TABLE IF EXISTS `emp_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_master` (
  `emp_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_master_emp_info_id` int(11) NOT NULL,
  `emp_master_user_id` int(11) NOT NULL,
  `emp_master_department_id` int(11) NOT NULL,
  `emp_master_designation_id` int(11) DEFAULT NULL,
  `emp_master_category_id` int(11) NOT NULL,
  `emp_master_nationality_id` int(11) DEFAULT NULL,
  `emp_master_emp_address_id` int(11) NOT NULL,
  `emp_master_status_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_master_id`),
  UNIQUE KEY `emp_master_user_id` (`emp_master_user_id`),
  UNIQUE KEY `emp_master_emp_info_id` (`emp_master_emp_info_id`),
  KEY `emp_master_department_id` (`emp_master_department_id`),
  KEY `emp_master_designation_id` (`emp_master_designation_id`),
  KEY `emp_master_category_id` (`emp_master_category_id`),
  KEY `emp_master_nationality_id` (`emp_master_nationality_id`),
  KEY `emp_master_emp_address_id` (`emp_master_emp_address_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `emp_master_emp_info_id_frg` (`emp_master_emp_info_id`),
  KEY `emp_master_user_id_frg` (`emp_master_user_id`),
  CONSTRAINT `emp_master_ibfk_11` FOREIGN KEY (`emp_master_emp_info_id`) REFERENCES `emp_info` (`emp_info_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_12` FOREIGN KEY (`emp_master_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_13` FOREIGN KEY (`emp_master_department_id`) REFERENCES `emp_department` (`emp_department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_14` FOREIGN KEY (`emp_master_designation_id`) REFERENCES `emp_designation` (`emp_designation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_15` FOREIGN KEY (`emp_master_category_id`) REFERENCES `emp_category` (`emp_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_16` FOREIGN KEY (`emp_master_nationality_id`) REFERENCES `nationality` (`nationality_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_17` FOREIGN KEY (`emp_master_emp_address_id`) REFERENCES `emp_address` (`emp_address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `emp_master_ibfk_19` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `emp_master_ibfk_20` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_master`
--

LOCK TABLES `emp_master` WRITE;
/*!40000 ALTER TABLE `emp_master` DISABLE KEYS */;
INSERT INTO `emp_master` VALUES (1,1,2,1,1,1,1,1,0,'2016-07-28 12:25:26',1,'2016-07-28 12:34:15',1,0);
/*!40000 ALTER TABLE `emp_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_status`
--

DROP TABLE IF EXISTS `emp_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_status` (
  `emp_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_status_name` varchar(50) NOT NULL,
  `emp_status_description` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_status_id`),
  UNIQUE KEY `emp_status_name` (`emp_status_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `emp_status_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `emp_status_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_status`
--

LOCK TABLES `emp_status` WRITE;
/*!40000 ALTER TABLE `emp_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(80) NOT NULL,
  `event_detail` varchar(255) NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_type` int(11) NOT NULL,
  `event_url` varchar(255) DEFAULT NULL,
  `event_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_category_details`
--

DROP TABLE IF EXISTS `fees_category_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_category_details` (
  `fees_category_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_details_name` varchar(70) NOT NULL,
  `fees_details_category_id` int(11) NOT NULL,
  `fees_details_description` varchar(255) DEFAULT NULL,
  `fees_details_amount` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_category_details_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `fees_details_category_id` (`fees_details_category_id`),
  CONSTRAINT `fees_category_details_ibfk_1` FOREIGN KEY (`fees_details_category_id`) REFERENCES `fees_collect_category` (`fees_collect_category_id`),
  CONSTRAINT `fees_category_details_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_category_details_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_category_details`
--

LOCK TABLES `fees_category_details` WRITE;
/*!40000 ALTER TABLE `fees_category_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees_category_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_collect_category`
--

DROP TABLE IF EXISTS `fees_collect_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_collect_category` (
  `fees_collect_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_collect_name` varchar(70) NOT NULL,
  `fees_collect_batch_id` int(11) NOT NULL,
  `fees_collect_details` varchar(255) DEFAULT NULL,
  `fees_collect_start_date` date NOT NULL,
  `fees_collect_end_date` date NOT NULL,
  `fees_collect_due_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_collect_category_id`),
  UNIQUE KEY `fees_collect_name` (`fees_collect_name`,`fees_collect_batch_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `fees_collect_batch_id` (`fees_collect_batch_id`),
  CONSTRAINT `fees_collect_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_collect_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fees_collect_category_ibfk_3` FOREIGN KEY (`fees_collect_batch_id`) REFERENCES `batches` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_collect_category`
--

LOCK TABLES `fees_collect_category` WRITE;
/*!40000 ALTER TABLE `fees_collect_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees_collect_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees_payment_transaction`
--

DROP TABLE IF EXISTS `fees_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fees_payment_transaction` (
  `fees_pay_tran_id` int(11) NOT NULL AUTO_INCREMENT,
  `fees_pay_tran_collect_id` int(11) NOT NULL,
  `fees_pay_tran_stu_id` int(11) NOT NULL,
  `fees_pay_tran_batch_id` int(11) NOT NULL,
  `fees_pay_tran_course_id` int(11) NOT NULL,
  `fees_pay_tran_section_id` int(11) NOT NULL,
  `fees_pay_tran_mode` tinyint(1) NOT NULL,
  `fees_pay_tran_cheque_no` int(11) DEFAULT NULL,
  `fees_pay_tran_cheque_date` date DEFAULT NULL,
  `fees_pay_tran_bank_id` int(11) DEFAULT NULL,
  `fees_pay_tran_bank_branch` varchar(50) DEFAULT NULL,
  `fees_pay_tran_amount` decimal(10,0) NOT NULL,
  `fees_pay_tran_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fees_pay_tran_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `fees_pay_tran_bank_id` (`fees_pay_tran_bank_id`),
  KEY `fees_pay_tran_collect_id` (`fees_pay_tran_collect_id`),
  KEY `fees_pay_tran_stu_id` (`fees_pay_tran_stu_id`),
  KEY `fees_pay_tran_batch_id` (`fees_pay_tran_batch_id`),
  KEY `fees_pay_tran_course_id` (`fees_pay_tran_course_id`),
  KEY `fees_pay_tran_section_id` (`fees_pay_tran_section_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_16` FOREIGN KEY (`fees_pay_tran_collect_id`) REFERENCES `fees_collect_category` (`fees_collect_category_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_17` FOREIGN KEY (`fees_pay_tran_stu_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_18` FOREIGN KEY (`fees_pay_tran_batch_id`) REFERENCES `batches` (`batch_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_20` FOREIGN KEY (`fees_pay_tran_section_id`) REFERENCES `section` (`section_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_21` FOREIGN KEY (`fees_pay_tran_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `fees_payment_transaction_ibfk_3` FOREIGN KEY (`fees_pay_tran_bank_id`) REFERENCES `bank_master` (`bank_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fees_payment_transaction_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fees_payment_transaction_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees_payment_transaction`
--

LOCK TABLES `fees_payment_transaction` WRITE;
/*!40000 ALTER TABLE `fees_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `fees_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_name` (`language_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_details`
--

DROP TABLE IF EXISTS `login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_details` (
  `login_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_user_id` int(11) NOT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `login_at` datetime NOT NULL,
  `logout_at` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL,
  PRIMARY KEY (`login_detail_id`),
  KEY `login_user_id` (`login_user_id`),
  CONSTRAINT `login_details_ibfk_1` FOREIGN KEY (`login_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_details`
--

LOCK TABLES `login_details` WRITE;
/*!40000 ALTER TABLE `login_details` DISABLE KEYS */;
INSERT INTO `login_details` VALUES (1,1,0,'2016-07-05 21:40:32','2016-07-28 12:36:04','10.240.0.215'),(2,1,0,'2016-07-06 14:22:06','2016-07-28 12:36:04','10.240.0.224'),(3,1,0,'2016-07-06 20:55:11','2016-07-28 12:36:04','10.240.0.225'),(4,1,0,'2016-07-28 12:13:32','2016-07-28 12:36:04','10.240.0.225'),(5,2,0,'2016-07-28 12:36:12','2016-07-28 13:58:02','10.240.1.18'),(6,2,0,'2016-07-28 12:36:17','2016-07-28 13:58:02','10.240.1.4'),(7,1,0,'2016-07-28 12:36:26','2016-07-28 12:38:31','10.240.0.224'),(8,2,0,'2016-07-28 12:38:43','2016-07-28 13:58:02','10.240.1.4'),(9,2,0,'2016-07-28 12:38:55','2016-07-28 13:58:02','10.240.1.4'),(10,1,0,'2016-07-28 12:39:07','2016-07-28 12:45:59','10.240.0.224'),(11,2,0,'2016-07-28 12:46:10','2016-07-28 13:58:02','10.240.0.195'),(12,1,0,'2016-07-28 12:47:07','2016-07-28 12:47:39','10.240.0.196'),(13,2,0,'2016-07-28 12:47:49','2016-07-28 13:58:02','10.240.1.13'),(14,1,0,'2016-07-28 12:48:08','2016-07-28 13:56:27','10.240.0.195'),(15,2,0,'2016-07-28 13:56:35','2016-07-28 13:58:02','10.240.1.18'),(16,1,0,'2016-07-28 13:58:17','2016-07-28 13:59:40','10.240.0.224'),(17,2,0,'2016-07-28 13:59:49','2016-07-28 21:20:22','10.240.1.4'),(18,2,0,'2016-07-28 14:01:26','2016-07-28 21:20:22','10.240.1.13'),(19,1,0,'2016-07-28 14:01:31','2016-07-28 14:04:52','10.240.0.195'),(20,2,0,'2016-07-28 14:05:00','2016-07-28 21:20:22','10.240.0.225'),(21,1,0,'2016-07-28 21:04:35','2016-07-28 21:09:14','10.240.1.13'),(22,2,0,'2016-07-28 21:09:37','2016-07-28 21:20:22','10.240.0.224'),(23,1,0,'2016-07-28 21:09:46','2016-07-28 21:14:33','10.240.0.224'),(24,2,0,'2016-07-28 21:14:45','2016-07-28 21:20:22','10.240.1.18'),(25,1,0,'2016-07-28 21:16:35','2016-07-28 21:19:48','10.240.0.224'),(26,2,0,'2016-07-28 21:19:55','2016-07-28 21:20:22','10.240.1.13'),(27,2,0,'2016-07-28 21:20:31','2016-07-28 21:23:14','10.240.1.13'),(28,1,0,'2016-07-28 21:23:31','2016-07-28 21:25:16','10.240.1.4'),(29,2,0,'2016-07-28 21:25:27','2016-07-28 21:32:16','10.240.0.185'),(30,1,0,'2016-07-28 21:32:19','2016-07-28 21:32:29','10.240.0.181'),(31,2,0,'2016-07-28 21:32:37','2016-07-28 21:32:42','10.240.0.224'),(32,2,0,'2016-07-28 21:32:49','2016-07-29 18:49:53','10.240.0.215'),(33,2,0,'2016-07-29 18:49:41','2016-07-29 18:49:53','10.240.1.18'),(34,1,1,'2016-07-29 18:50:00',NULL,'10.240.0.185'),(35,1,1,'2016-08-03 09:57:41',NULL,'10.240.0.224');
/*!40000 ALTER TABLE `login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_of_day`
--

DROP TABLE IF EXISTS `msg_of_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_of_day` (
  `msg_of_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_details` varchar(100) NOT NULL,
  `msg_user_type` char(3) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_of_day_id`),
  UNIQUE KEY `msg_details` (`msg_details`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `msg_of_day_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `msg_of_day_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_of_day`
--

LOCK TABLES `msg_of_day` WRITE;
/*!40000 ALTER TABLE `msg_of_day` DISABLE KEYS */;
/*!40000 ALTER TABLE `msg_of_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `national_holidays`
--

DROP TABLE IF EXISTS `national_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `national_holidays` (
  `national_holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `national_holiday_name` varchar(50) NOT NULL,
  `national_holiday_date` date NOT NULL,
  `national_holiday_remarks` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`national_holiday_id`),
  UNIQUE KEY `national_holiday_name` (`national_holiday_name`,`national_holiday_date`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `national_holidays_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `national_holidays_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `national_holidays`
--

LOCK TABLES `national_holidays` WRITE;
/*!40000 ALTER TABLE `national_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `national_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality` (
  `nationality_id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(35) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nationality_id`),
  UNIQUE KEY `nationality_name` (`nationality_name`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `nationality_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `nationality_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES (1,'–†–§','2016-07-28 12:22:54',1,NULL,NULL,0),(2,'–ö–∞–∑–∞—Ö—Å—Ç–∞–Ω','2016-07-28 12:23:06',1,NULL,NULL,0);
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(25) NOT NULL,
  `notice_description` varchar(255) DEFAULT NULL,
  `notice_user_type` char(3) NOT NULL,
  `notice_date` date DEFAULT NULL,
  `notice_file_path` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notice_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(255) NOT NULL,
  `org_alias` varchar(25) NOT NULL,
  `org_address_line1` varchar(255) NOT NULL,
  `org_address_line2` varchar(255) DEFAULT NULL,
  `org_phone` varchar(25) DEFAULT NULL,
  `org_email` varchar(65) DEFAULT NULL,
  `org_website` varchar(120) DEFAULT NULL,
  `org_logo` longblob NOT NULL,
  `org_logo_type` varchar(35) NOT NULL,
  `org_stu_prefix` varchar(10) NOT NULL,
  `org_emp_prefix` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`),
  UNIQUE KEY `org_name` (`org_name`),
  UNIQUE KEY `org_alias` (`org_alias`),
  UNIQUE KEY `org_id` (`org_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `organization_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'–ú–ê–û–£ –ö–ú–õ','–ö–ú–õ','236000, –†–æ—Å—Å–∏—è, –ö–∞–ª–∏–Ω–∏–Ω–≥—Ä–∞–¥—Å–∫–∞—è –æ–±–ª, –ö–∞–ª–∏–Ω–∏–Ω–≥—Ä–∞–¥','–û–∑–µ—Ä–Ω–∞—è —É–ª, 30','951737','maoukml@eduklgd.ru','http://maoukml.ru','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Z\0\0\0F\0\0\0LºÉ‚\0\0\0	pHYs\0\0ƒ\0\0ƒï+\0\0 \0IDATxúººy∏\\Uï˜ˇŸ˚å5W›˘ﬁ7Û< fƒÄÄà\"äÛDM⁄m„ãä6‚‹∂†Ä∂†\" (àÃ	SêyJBBHr…pssÁ°nÕu∆˝˛Quá\0æ˝⁄˝˛~Áy*πg’©:˚¨ΩˆZﬂı]kó∏˝Öq†°@	\0\n!†ÄölÍÔÈ2ﬁÊ¸ø!SÍIÌ\\L^Æ¶Dz˝°ﬂX˚‹[F\'ƒ!Ç©Á˚ˇG¶O\r§6dU§©œL≤xŸ€ùˇmŸ§™ï‚’*PB‘o¨@T®ÅáTö\"¬†¶`ß\në(®%%°Æ£(iÄ‘P¢¶h°¬©;‘\'F‘ˇo3æˇ/e˙ƒÕ\'˙êIô∞Úi≠îxì˛Îı∑†§V˚?ëÅáÊâè\r†ÚD5Ölï«“,=Çx(•AiçÑ¶Å´+¸íG≈®ËQäfûmSnúÅá	Ü∫Qªw÷ß{˙C35÷âïÚˇX¶◊î9eeìÀıW2°4Ò62ı¶•¸VŸÙEÆÑ î†π—l—\\[ê“Jÿï2Õ…2¡Ãd\rå¶®î@Ë:BJ ÑPV´`Ë√ (ç„éÇ„S.Ê({erŸq FåºoQåtPŒ4j5iÒá⁄Õ4„¯(>zR#á∏‡7˘œÈ>˚-≥ßﬁ∆BÍ.AÅoõËÅá18@fhm*K:ŸF¢5â’÷åûâÉa£E\"Ñ°ƒ9ÿK8“\rY*Í&©3Œ¬öŸAXq)<˙’«Ô%Eü5õÿ>àΩ|ön\0ØòG3B∑BX)·çe)dÀåÏaãë»,úéNî≈®8°PàöOù‘àöÚÔˇCô~»?ƒ◊‰5ãüëƒõd0·c¶yÖR!JìÑöÜ™1ÛπWi,Ùë>j%ÕG-¡öŸà¥ì†iı˘sQ¬Ä0 »ÂΩÓjºGÓGÆ;µØë%∂p)VG„œ?ƒÿg?áΩ˛t¢gûIıÒçú˜qZÆªä¯igRÿÛ\nŸœ~éË˘ü°Ò„ˇHPpë∫I”™94Ø\\DÁH?Â·q˙v<LŒŒ[K5>M˘»0ò2Jq®A)•˛€2ΩÊsyõ£fëS»c ¢ëMì*îx¶Ö»ç—¸“,Ô¥h:b.ˆÚ”¿êHÕƒ9–«¯Õ7 “Èè}£π†ôa +\"ßÂk_√{ˆUFæ˚]ú{âÑ«ê˚ˆÔ0:⁄I}˛üH¨[ã⁄å>ˆrÓ„ø∫ˇ•◊–Æ=ñ‹∆«»˝ªËõ¶Ô¸;ˆíUƒ‚s†iÂ\Zºæ}å=Û4ˆ˜“ø|=ÖE´—*Ud÷ºË4ÂL∑ˇéLü∞ˆ	P˜îÒt\'ﬁzŸ$ÇÑRb≥Ã v±P§˘ì\' õg¢@Ö•Äê∞ïçw„vıRzÚYöØ¸ÒïÛQa@ê≤®ÆúÖ‹$ë%π|>§‚à˛äæG©ÔeRâB\nPZ<JÊ»eËÕçT∆G^}π®Ö‹5W†∫sòˇ¯iígΩ3ñ¢¥Û\rÜŒˇ(Í∏hˇˆDÊ-¢}ﬁ\n⁄ã„îêÆøngÔÇc)%€êJLNìhf∫¶î‡ˇJ¶¢≥7]Q˜ZáhU©i≤∫ÇU=»ÈÂ£›Ã∑À¥.üç—y<^≈°˙¯3è$⁄‘N„akê©8\0Â÷6Ù3ﬁèˆ 3~·_0n¸	Ê¸»ÒˆŒΩxÜAP ÉØ–\rì¬Éì\\µû_∏î—ÔˇÄ“_ÓájÁ•g…ﬂˇ Õóô–±ª∫I~ˆKîˇëwøÉ∆|CÑÅO·ˆõ`º@|›P\r(Ωˆ*•◊˜aøöËÔgevåYØlgwˇ~∫[÷‡ÎV˝yk¡F	u0†ƒÑy™ˇR¶‚5&¬ÔÙ\\az¶pà¨¶‰@jH∑LS˜Î,œÌ†Èò#∞KË*äœ=MÓ∆õ®ÏÕbß ˇ⁄Nƒ≈–p…% 4å\\ £ÑáØÜﬂ‹AÔœ°˘∫ÎzÜqz•{å]}5¬÷1VF∞ÌeŒ;áª´ﬁÛıØ°ì˙Ù\'∞◊Æ#ˇÎ_‚âü}\na‹&ˇ´ü;Òt¥µGQxÊ*w¸\Zyﬁá±£)∆.ˇ*ÓÜóÒΩ∏ﬂ˝&÷á˛£±ôÜw≠gÕñghÔŸAw`3êôÖO!√`REb!™ˇ+ôŒt›™79kı6⁄Vµ§F)PöÜ>>∆úÆM,ôì\"µ˛\\»4°¸êÚÊª‚õ\r¥‹r\r^ˇäó~ûÍ∆«	?Ò)\n£TƒﬂÙësﬂOÏ?FÓ7∑êªwÃÌD∂∂˚‡D◊≠#HùÍ¬TrCTwn\'∫Óp¬ïK¿	\rcFbºÑq‰qË◊\\ãËh\'~¸QT6Ã¶¸‰&0bÒ+¬\\ﬂäCEúÖ(ı0÷ŸÔ£Ò‘≥°TdÙÅ{∞⁄g‡ˆ\ravpÿ…G”ﬂÛ\n{úeå6¥†’-[1ô!ƒd¯∑d⁄π~Â )ÉUu∏|(Æ˘&1âüﬂ≤…ºÒã˜mc…1´I}4°4»˛˙V¬™Éµb1·‡0ŒÊÁ–Sqú??Ä_≠ê˙¸•DWØ¬Ïßºu;∆ªﬂO√?úOdÈ2Ãu«¢Î’3Ç?6@ -ä√˝‰˜Óft7Y,ú’k=xê—É=å\r\r368∆¯`ŒŒ-ü}∑ªõ∏‡ÔÔ√2\"ßüä±tA6è˚¸ã–6õÜÑ‰\'>çÛ¿cÑ=¥\\ˇKådí‚Ó$˚£ü ⁄[…úÛaú±Qº{IÆ\\Nª®P»QéePR\"Í ûx¢ø˛¶Ïˆ∆’îüûÊ±ß˘£Cíe°!Ç\nMª7±¬“i>˘ÙÊ™Øøƒ–eˇå¥õh˙⁄øaØYã”€ÀËø]Fıœ°}‚ZÆ¯Ãt#öÑ∞Ï‡e«Pˇ’Ω∑ºBê+0“™SÌÏ$L∆	‚i<°!HD=j¬|Äà\0Â*d‡c∏U!5‹ã](ínòAlŸr‰“Âhâ8ƒcå˛¸ß‰Ø¯ˆµ7–vŒå‹z3ŒÌ∑bæÁ=ƒﬂyå2ÚƒíÈ\"ü∫ÄHcú¬ÊÌºﬁ=∆û∂Ñv≠\'´îöñØ*õLX‘ÑEOûL√Œu;•FËªÃzÌQñ7Y4Æ?ç0~˜›dø˙EÃß“z√w—õö°Rg¸’]üv$⁄aG–˙ÀüõµP8C=‰ØªñÍ˛,πeã….òãjK„…B(D†jÂM1‚muË˚J–Í§Ô`f≥§∫áhÿµ-ní˛˙óq˜@ÌzÉ¯ôß1˛‡=dø}%z:Åö15‘ÉX∏ˇÆõ\'äÃ5ˇAzn¬s(Ó⁄¬Œ›x£È(B;Öú¸ﬁ4¿È2Ì‹ÍÆcdOZLÔ˙GåJÅ%_·∞UÛIw, ®•ÈrnŒhé ün∆◊\\Ïek–b	TikAº„,¸±*ˆ¸#á˝˘-tˇ¸◊}:á‚åô`E@Ë\"U\rã≤Â‘˘§L¸\r‘ñ∂\nhfå¸ºÜN=é™¶Q¸˛O—s±èD$#◊_GX\r—WNÊ3ì8Á#îÔ∏˝òw“qÌïƒgt CÅáŸ8õ&W†z∫N4◊Vx}íˇOƒRÕ¢ﬂúrO31¯T¿º·óYŸb[µ/õßÔŒIy,â√◊˙Ÿ€n!ˇ√Ô=Û=4¸Àˇ¬ö74Å*TﬂÂ?˝Å°Wû$w‚Èîè\\NX–™~ÌN…È4ê?…∏˝Oe™~*B€DÈ£Á\rö{å¶Uáì<Û˝¯\"@oi°˙Ãìå]~%\"≠—|„Ôàµ∑£îè⁄$t√u®Ó€√÷Æª[£…)t1OG1a—”≥ÈiL‰{û‘ô5:+;H.YÖäD©ÏÌ¡ªÒJ∑›Neﬂ ˙‹Ÿ§œ<}ÒJ∏É Ê≠ò´è@ãXîˇÚ~{=ÈŸsﬂè”–åÃWë°:ƒR\'≠`öu˛Oe¢N\r!j˜\n4«\'H5P^{4˘Ï8˛˝aÀëHêﬂ(2pi˚ŸıD⁄⁄ÎﬂQ[—A’≈Ì⁄Ö7:é=oñÖ”≥ç£tâ™3u0q_ƒõ|ÙgQ3	‡ÿõ·ÑE≠Dé8øT?@&3∏›o0˙ıo·<ΩmQö¯Y ˆﬁ”P•˛‡8Fcïß£oË\0#\'û\0ç≥	ã’ök®+` =MõÏˇÅ•\'©ói	ÿ!◊‘Ø†L#;D√ém4≈ƒè:cˆ|å∆B˘(tÇrôÚñÕÔπÔŸPôF2W^AbÕJ*˚ªx~À>zfè.√IÀéöUÀ∑ÖR(•ªgk‰—c÷TrøΩÉ˛ã>«¯ü˛L~√”T˜u˘ÍÁH~¯£‰o∫Å·o}Ωπ´≠ôÏ=w“oYÏ8Âl˛Û◊ì%è™p…ºEQL-wBEÑAà™ˇÜ·°◊ΩÈE$e·Ñµ…òƒ∂ìOXCTR4««è71|‘	Ù\nç±Bç@*éGÓ˘ß˙“ó∫Ë\"Ç°^àiËM\"nÇâŒö≈ö˘m¥˜ΩÇØ¬)∆Q˙€¬;•Å&ëŸAé<¯\"ﬁs*Z:A8oÏ!˜õõ(›˜8ÙáƒŒ/ôØ|#ë¬›€Ö_™‚é»>∂âë≈®%ÀyÌ‡z∑\r–ÿ:ì@¬∫√ñíJµJÜRóuäs\"†Z≠¢‚˘>Nπvm4AÛM\\«©qÄaËËö(\\?¿45R-QzzÜëhBõ\nVoc·aÇîh∂é››MÏâóô˝Ø!•Œ–wø\ræG˙„ˇ@È˛ﬂ!üÙÁ.≈ö?ó ËVS+öW°ÁÈßyIuPnòãxuﬁ¸øÄwJ)|Õ¶s«æ¨ç¯ak¬!Q¸rï“ˆÕå˝‰˚¯èΩAt˝z\Z.ªÑ»ÚE8{–˝ü◊3ºtÓíeDı€˙£|0‰º}íG7>√C˛ë√?öu«M2¡\rˆ˜øÅ3n–”◊ÕûÓópr\ZUøän¥a>Õ\rQÃà…Å]#ú˙Ó’¨Zµé——q\Z€≤Ω<ÚÃ4B.ú¡aãé!—‘Üm5s`o„#§¨%_(\Z k|MÑDLã¶&ç}å≤LrÙ¸Ytﬁ¸+⁄æs\rö¶·«#doπˇëáàúÛAË⁄W#≈ˆbø˚√Ã∏Ïúæn∂˝u3€gùàiÍàâ<du¸ˆ˘q5µkëŸ◊t¢}/∞Œ»—qÍŸÑö∆´\'üLbp\0ÎÇœ]wÒEÀ02\r∏ole‰?Ø&uﬁß∞;≤˜+_`‰‹è‡Ã[\ncc§“i6<¯m3⁄¯Ãg>5iE/øÙ*lºáB!è•õ¥472{ˆ<ÊÕ[¿º9Ûà%¢o5Ω˙qÁÔof€k#úæ~%◊ﬂ\">–ÄNCä7‹·º–Âàc«ù≤Äπù\rzÖd2B¶9IFK÷¸¶Ç—Ò<[zzπÌW=uGπÇVN>y6FÉEÎ∑¡Ã/}w‡\rFØæ\nÕ‘0ŒC[8Áï>¸«˛Ä~÷yÿW~ãÊ¶’W^·ïÆav/?À)Oô&]GÕäk\"¿˜Xt‡Vª\nk÷,@“ˇoﬂ¢ÚÀªëIô≤–è^O‚¨ıƒé\\IX,—{Â˜<r.≈Â«†ä(…täG6ld—Í˘ús∆ˇ¶Ú˛û£Ru∏˘wèÚ£øBux5∫—Äên˝]°º0¿˜<¿%—Ób&+∏πÉ§Ï1Ê-l!› \rxcG»Å°§”BC”A>˛iá÷Œ¡ãEâÌﬂÀåGû°È‚Kô(ïë>Úl$|lz:AÏü$u∆ô`iH‚ÁÿÛ‘f^iXJòh@Ü˛T|¬?O–æa“4∞èŸ\r6fC<è†Z•Ò+óíkI·lﬂL‚Ã˜£F≥å›Û{BΩÇuÿ2ÜØªâër\'èπ?Wã∫à®†‚;tf⁄&›“ÙÙtk˛=≤«_ÊW∑•»çK‹–@xÄ§AQ¢ä¶Å&J¯„&ÒxÇ‘úYå0yt√8Å†õ:13J\\sq\rè@ñ	≠ed—°4g√ÀGà‹ˇÈã>Å˚≥;ë;ê∫‰R¢\'É*üED£ça47–±j>vÙ3h«@”\'«<Iì*•PB¢9ï7H≠X—#è=ãÛÎ€±◊Æ%ò=oœAJèl$qÒgi9Á,LÕƒ{Ú\ncÉå_r.Fw]…\n≈\"ﬁ€U\"˛NlÏxä\'^\Z·¸Û_£:ÊâyÑd&Pkùm¨ôN-[´}.a¥[Ò™dÊU±bí|ü$tQ©OO\0fâàA*A(@ñ}rGÆ`ÅMXœ>K√óæN‡˙Ñ„„‰nº˜ÂgPUÖú—FÏ›Ô!vÚ…ƒ3If˙Ø3^m∆ç7!Î®Á‚_IùhÔk4GfÎLês~\'··Î»?˜0¡üd9O57åW,”˛Ωo\"|ü‹#O3˙Æ#ë%·D`Dù∏›àe5N*ÓÔ¬…ı\0]**Óº˜ |†õ¶îãg	\nEA—q<âtlSbEµÄ_Ö®?\n ^U–8ö0¸\ZÑæB‘+ßâXö∂ÜÜZ\0Ùkm	\nìÏ·ãI<|?ÌGÆEÂ∆»~ˇ¯Ω˚âæÁ¨πK˙{…›˙sÇRôÙŸÔ£5Â‡ËAÜ¢\rìÆ¢f—ıDEyUíïaRãf\"Ï*ÙIt∂ì¯¸GIóœ¬°¯∆n mƒ{Ì\0Ó`µk\'Y[‡¥ÃAÀyì¥ Ä4ERTÀ!v‘|ãÖN?˛6ûŒ:‹r◊.®∫‹Ô+qBØ§ì+)îŸ|HOéçõ\nl{ëZ„Õ!îBÌ˘§˛àb∞$hZ®h])Ë›bLÇ\nêåRı\rÇ0=UWÚº∂ôd[;i‹(ÆV∆/ı—xÂïD◊É–MB◊°::@i”}$◊øìhcÜ‘h/£AÖ–à\"TΩÅ¶6$AXuâH´•É*\Zcøø±„d€RRß,Ev,£i·‘)ß‡9UÙ≤ÀËÕ[)ü¥aÖPö¯Æ	ü\nÜfS(å°k·+„Àó◊˝™èÓ>»ß>÷∆ﬁlëc⁄òV#ä5™≤\\ı®8õx¸·Ü?ìD∫ä¶	Ñd“≤A 4™0¥U0w©bı¸≥!«å>≈)Êì§åè ÅÄâ\nIà§¥¥ì ÆÙÖ3ê¬¬+π†È8ÍO˜SΩÎOƒﬁu2¬0–;Áë\Z»°ï+©(BÄ>ë5)2ª9`ÒÚe»∆v4_Og(T·+O–˝˝o†54°BÅÏhßÂk_•jU»5áó7!GÇö·»â\nå\"b[ºv‡\r Ó©dÊø∂d•@Yõˇ±\\ï˚·N^ﬂùÂ‘”;Ÿæ-‡≈ÁˆÒªL»∑øæÑ¶¶¶ö—Jù®%¯ œ‡ü>Ωóø¸ıE˛x{;O?ÍèjuÃ<qC–4öb˜6çh|ÒƒÁ˘‡∂gŸ!,‹¿FÑj\"KG\0“W8…Fº=ÃnÓ$˙ë˘ﬁ˜˘¯\'™ÄÏ\\Ü~÷\'à_|2Aî}“aëTiÄëD&Ça\rﬂ	‹˝CÑŸ\nr]+Bá‰˙£àÆ_G8^†∞ÁÉ§Ø¯&±§ç™∞Õe¯Æﬂíüô©)&\"≤‹©<	≤\"IDXˆîÎ¯õá\n!pÖ§o® ﬁ–≈˛›y~p˘b[ﬁÑî DÄ*l!ÎJ÷ÍƒFmrRôy|‚ÏyÃÏ‹œ∆˚_\'nGPBMÀ\nkÂd√vyÁ¯Ô¯‘OPiZDyf¶üúêIˆM)T,F1fS⁄ΩÉ‰πÁbqÙΩÅBÇˆyX≠ÕË∂\rÅd\"â÷_Ç0\0©’Çaç›Òâî˙â5ß@Jº‹’Å\"˛HëÚ„iµ∞WtbZ)§i°îIu∏D‰ÙuTLI(h1\"PÂ	S®Ωî	Jü :ˇ&îì\ZJÿÏÈ-p≈ˆ±ÈæN9’‰æ˚Ÿ¯ÿ-MÇÕ1Œ8Ω\r•d›˚Nkòˆ}ÀÁ¥Òïo;‹Òª!≤›∂•’ÆA·b„\\*ÆÁc∆„¯cm‰ÛÉ¯KênK’&#òRv≠F¥6‡ï««©ƒ\Z«,ÁP{ªpá°˙≤•$ﬁÛ^íô\r}=>J”Î›§Lœ#)md≤#É‡*ºÅÇ˝]h1õÏèøK.êDO|7ÊíµhMçƒ[\ZÀL≤%È\ZMY!5I¡-—ãaÍÊ[\\≈õ°\\*∂Ωû„á?ﬁIµ‰r›UùHi12ö•?∞yªœìπúqFA≤V¨òÊv™÷ƒ(Ü¶XΩ*≈ÊÁ∆ŸÙÜÉm…I%\'‡”¸ÅÛxG¯	~0Nπ2Ñ—âG\"‰ä»P÷{G@\n7ñ¶ÏWàı\r„=≤wﬂJ}}»æQÏﬁI00;w{Á;–¢1\"nÕ˜-ΩV≠MÅÆ≈¿äÉn`u.¬Çÿ“•¯«Ø@áqÜF`|sﬁ\\¬b/2jaF¢hNï™[¡:Üi@J·∫>∂°ì-Ââ\Z::⁄4W<ΩeJ1QÌÍ…ÒπØv˜˛„{KXµ∫)JµÑ«Ò©VÄJ‘›≈¥ï ©ì/\\Ûã}åÏ,côµÆUáçÏ„K¸éSÿY\0ÑH5Ç&õâ⁄	¸bành4ÕH12êG¯™VÆ\nD@ChQE„≈#§FqÛV≤◊]C˙ˇNıØ/Pæ„6®∫†YùËÃòé:\0aaê9\0√yDòDÖ>±ˆÙYmî¢Y¥∂ƒkœÇR4«⁄—bqF\n#¥&€ËŒvS0+Qò∫NT7∞”ÛrJ—ìJVaÌ%a«Î#ú—ö€?¯…ru4»¶.Ó˘c\r\r1ÊÃO3~»QGt÷¸ûò¯¨éòÙ◊\0 ò’§Ûã_Œ5◊Ô„Œ€Fq√(≥¥›|üü≥ín|î≤aåQ&FŸA(∆F\nDlìˆô\råé‰®éªH ≤Q°Ü(0RI0\"≥g–ﬂ˝:Éó]Hx†≥°Ï∫;é˙à @1M—¢>øÀ\n˜?Ç∑∑Ωy&¥∂RŸmbœk\'»$àT–#BÀA“\Zœ†˚«˚(˚NΩÁ,”&¨îQ xKZ]ª©D	…ì€«∏Ïªr]n˘ˆa,ô›LxÃúŸÃ·áïŸ∫cå´Ægî^û∫ªôE≥bÄyHc’D·nÇƒŸì\r∏˙⁄Ωò)è2≥Ú*_„V”çãã\"a	‚ËsA⁄h©F*¬«\r|\nπ2£•<3g5c•rÖ\nÓxÄà4Éë\0!BbŒúI„~ƒ¯ìOëhôE˙Ω¿»§Q~—÷ÜYÉwSe¬\nä1†#ë†„ºO1ˆ“”XÕ≠$/@\Z\ZJË´-√W7SL4h\nKÖDå≈j)54)#!2√£!©Z|ù,ÙNÙaóü{üËÂäÔÔ%qym”Dçf\04›bŸBãeÍ◊Ä__u≤Æ€7’-îB†XòQ‰=^}rÑú¯≤ºçŸ*KÖí\0AÑB5.á‰j–<“ùÀX:gQ©ÅJ2P\'™ßôøt^!è*ÇJ‘Íáa≈Eï+4ÆYC„±\' £1Ñ&k+ÆéÑzãÎ0A%Pu‚_ãô4\"BµíN‡¢®†î“D§õHÊº\Zl	C¢∫¡öé%d+y‹¿%+D3v£$mœb“ˆîÂSr_\Z‚ñ{––?¸“öI%Oå®\\Æ–;Z%µàEtlÀD ø’˝:aŸ¢–πÒ¶Ï€≤ˇñ<\r=áS5Ld\rJLÒÔaÄK¯∫FEÛr˝ê§ïDJâei‰À£h•êÜ Åí6°ô¶–’CÓOèÿÂ~höIÙà√Iü~,FccÕÑ¡âP€Z° ænÄ\n	<ü—mØ·Ï‹C|Ò“´:2ƒ/T…ÔÿÉŸî¡ŒX4,h≈¥å\Z!É@©Äl%èHÅ+Ì¢uŸîœ‹rw◊ﬂ—Kqºƒq´=ã„7A‡cô&\nEOOñÀæ±ãlV≤ˆhãã/X»‹ôçı˘zñR¢THà‚—€nfE°à⁄øˇ‡^§¶Å≠@cZüú$m ∂Nµ≤r\\IN\'ª•õ˙+r˝4î´h˘<•_\\èåÃ§˘KüBHùÍˆ}~Û¸óû¶Â{ﬂ◊«+ª`á5◊11∑æ!(kyîc#d3fCkŸLÑA)!@⁄:ëYâﬁŸø>AÊ¨”0\Z‚î™EÊáüÇ[F˘\0˜±ÍàÂı\\!§Ï8‹uœ>~z√ Ÿ™¿˙À´Xå–2>|ö√í%K1tAgg3óˇ´dow3êLÿSÜ˚b˛êÄ†ÚÎå<Ò\r’“/£§¯ı¬)¬¿&üi£íØR»ïë^0≠oßv]h\Zò˚{	Üã®Œ4;MÙ]«]0òÌmx˚^≈›G‘¯™ZƒuJµÖ	ˆÅ0©8&ïb[”…Ã]»D˝†“7’qºΩª	$ÿkN Ãˆ·<à—∏]è0R…„¶‘QU∫¿“f\nÄb•¬MøÎ‚™_ç€@#§\r˛¯Á]¥Œh`nKõû⁄≈{ﬂ3ÉŒŸé^€Œ—kU\r∂1≠b∫ìysá}\"%¨ˇ÷Âåæ∏û‚M?\'Ò¬f§0≤ì§-¿T†c€íç\rhÜA8ŸÅ4Ò˝Å5:HJèëloc|ÓR˙nºõÃª÷!îIÈ˛á)ﬁ˘\'Ïwá÷–@Â’˝‰_÷¸t-W5∂+àX•* \rUÖ¬s/QÍ:@8æ˜ïÕà•ÀÒ±ˆV¢zà9{5Ó»8rÉGX÷4á˛“√Ÿq4GCF<Ãxöëdl<œU◊Ô‰÷ªK`È\Z5l\Z$≠ıîøNˇŒ≠\\u’∏Ç\Zõ\"S É:|ì5èßu∂h íÎ©2°[ãºHˆÏ›L<j‚ØZâz©ã\ZINπ@0Ü\"¶E:¡‘4Â’,πÓöîh #ÈÎƒ[Åﬁò\"ı°w„¨l%™\'»€\0\0BIDATî&n•D~ºÛ”#uÓπ†BJ˘<E+\rZ-Q”\'XDÖ§h\'q)\"É*nŸ%wﬂ√hñGÙÿH¨;s˛L¥Ü&t]\"4ù‘¢˙6l¿X3◊wŸ9⁄Õ¬¶YòÆAﬂË“ù8âò∆œ~∂ãˇê√ä[ËZ›2\rÖ\nîJ¥4\\∆@œÍÌa”3óëó!«¨ÀsÊë´Aö(Í≠WA§°ãí÷õvT)î¨CI;nΩÅ√~ˇ—∆Êö;ëYn›ΩL(ªJHöaÂ°9E2æ_Ø8âi◊	¬¢ÉÊ0 ˚£P⁄—EtŸR∫ﬁyã£I:>˝Ÿz3ê\"¨8Tº\n%ª%5\nÌ˝ü˝Íï‹´#M¸±a⁄‚\ZfG;˛X•mØ”¯±OQ\r|¬˝›dü€Ju«Ma∂Õ¢Ù¬V\"\nØ1N‡{T≤3”3hù—àÎîÿø{7?˝≥‰ŒM!â∏V´FSF¢\"+¡Òê*ämÉ‡6∂oæÉ\'ÓﬂÀÌ∑d¯¡á∏È∑ªÿΩªõÏhï ,ênLcËB‘FPSá\nÑ5å¥Æ^OvÜç\ZÈ≈Bj5‡·!√≥V?·X¢±¯·°®®F¢ÎEÊπ÷Ÿg·&t(·ø˙üc¯∑øßZ,‚¥∑agöp∫vr∞ªÃpÛb£∂øQ˚¿D¥(©cè—Tâv¥Pçf®l‹HÂØRx‰‘˛Ω®ÅaºW∑Py|#ëc◊1tÚª∑Q\\<ΩÓêÀx6O<ö†)ì‚Æá˜sﬂ¶(…D§Æ›i,P<ê8∏~#ˇ¸•w≥˛îï\n[¸pÇ]îÚ.€∂z<¥° ˝˜yl›≤Écèm‡¿¡*fDí›øgºÑë»(EËz %âtÇXÛLr[vaÓﬁå.À o“◊ „Õùè}¯ëXVT8Öd§@/‰hyqÈ˜ûçßŒﬁ™˘‘xñ†!v≈óp∫˜D#$ÊŒ≈9–Õﬁ\nd3≥—Í§ó>°dîBh:ÖÜ&r˘}§Àeíãfa}Â´P	:€â65 u7_a‰ñﬂ“ø·	⁄ﬂs6çØl#ˇ˙~º¯§¶pCè}˚∫imkdˆ1ãô”ê€‚k†Mp√!µBÅKΩmJÉ∞¬”è\'π˘◊ü‰¬>ÀÓ]ª∏Ï≤+x˘ïX¥t9˝√!É6è=:õØ\\˛\"œ>ÔsÙ—Çe]èì ñi<˜<¬∏Öπ}+ﬁÒkô1çœ>åæq∫à†dÄ ˚¶Pjí Ω©`ZãÄ5ó™	/n!’÷âlic‰ﬂ√Ô⁄ÖX≥ÜÃÖì≠˛ûä÷Ø´•\rΩRe‘ob¨1Qk¢©ì⁄”RpêÅOµ±ù˛˝É¥$üáær%”≥9◊um+Â\'ü&ñ6ê8áÃÒ\'Q‹x??4ëHB”9ÿΩÉÆM£§,%”=/Å´ÍrµÆhÍh√‘x}◊(ˇx—]yXä˘V∞x…Rbqõ/<üó∑ΩŒØı+.˝¬zvÔ…£´ß»œ‰ÓúK‘à·ﬁu\'û&i÷4_‹ÃÇÚO¯a$CË˚Ñ∫O≠c}⁄˛p@*Éä1›$¶ÀIﬂ≠B\"—ÅÉ4ııì¯‚á—(ô.FoJ£5d–,-”AˇÖÁ#ÔæÎ¬¢⁄€Àÿ@^˚Í)˙Å>Ωó\rÑ:√Òf≤√#DÁÃ@∆¥Z$W˙!ÂGß|˝m»-ª∞øq1FS∆I≠4Ô‹Ös◊›å~Í|‘»(Ü&} {ÄÆß;ôjÇe\'˘Ï~ZP(Å9VsJÜZÂ√s£<¥· ˜ˇÂÁD\"ëHît∫Åü\\˜|∫‘yÒÂåÁ*$í6éÚ	âS…’‘Ë4ÿÙ˜ñ¯¶€G,Tå>Aâ7DA%‚àD\Z±&ﬂW4·í‹ÙÒSO≈©©|ÎjÇ\\	s…·ƒN;{≈r\"K—zÌœkà®Re§k/d\nœ≤—ÍÑJ°ù˜O_ªRjm‚%n4äÃeiäJåT§Åõœí˚Õo(ﬁÒíÁºáËGœ°ÁáÜ@¯÷Qk»o~≠à ¸9J0V(‚îzô—ÂŸáë∂$ÛWCæ?†“_ChBNQ•©Ÿ†\'pº\"ïjH©(uŸﬂ3¬Å˛<Ò‚zvÌfhˇTáz)ÏÎ¬Ë%ﬂ€è\ZD˜√Å˝|Œá”,ì¢Ã◊¸™^_\0àSu0®ªŒßeı2¢“@UÇˆÈøl§}ﬁBhO2~˘◊1.√X∞àÚ¶ß(‹˙3€\"v‰—òÌmò≠\r∏{_gwOñ¡Î∞Ñ@ìSz\'\\¸3e÷ùµVôBí*∏`M;Gùˇ~d¬fËë˚ˇEÈ6Ù≈Ì•\0ı˙Î8^Z;0n¯1≠ã”˜ï+<ÛhXsCØwÒÚ≥/s‘⁄ït\rx¸ÊÊqrÒY,=i!›œe…mç¢‹UﬂƒWEÑÿî’n0F<m3{éçmÏ›€ã5:¬ıô§d3–*∫ºÏıQRäFi±òß∑∑£X¶NÅæ¨‡Q W_Fµ¢n,Ä°Ò~} YT?Çw≥ú=Fπ≥ùÙù˜1ªøèÊoÉóˇ+vŸ°ı¶[ë(‹ë„◊ˇÇ—¬í=ªzJe^º„œ\\ıl/πxzË≤rÙ[á†>å∞n[6P\rC™˘~˛}i;≥N9ëÜ„NCøÎ6Bw1ÔX0Z®ŒïÃBC8ez?˘eÇèùNÁ7/«˛ŸçWëùî\\ç±JHK\"∆5?Ï`ﬂæmº∂wG}‰8F◊ÔAVw2#9JG√R1ç9ÛñQ*ÅmX—z!ôÜìŸæÛFØbuﬂÓ^æÔqÙ¬5$)FM^Ÿ◊≈ã›[0˜Ì%Ïcﬁh	{∏HSµ+(Q†RQYÚz]⁄»üˇm⁄|ó¸¡~‚…8Å≠”x„/òcK\ZØΩä–©b¯!¡ŒTwo√öøΩ)Éπ§ù i‘t=˘Wæ˜«Á˘k°ë®Ë©%¶—ù\'_©ò™ˆø\rË8°√€\\¯ÕâÕl™%ı	¢§Ne€.¸G¨Oàéœ~g˚6∏ü ‚πÏ¥clﬂ∫õ≈ÛÁ‚6vL‚ÊÜâ≈m‚ÕK2$óÎ≈#®∞J°R$_,¢ÂrÄfF05A©Z§mN-3„<x˛•¨ΩÓ;T+‰F≤&¥67¢ÑFÆ‰†…Ü•®™1 \"Ãè1≤Á\0\"ß¡\"2ø—2üx$…û-€I∂6pÿ≤Ö§ü{ë¶JÖÊœ^Bµ˜ ˆíeT_ﬂ∆Ëeó‚óJXßúÖå§üºÒæw1ÎíÀ(uÌ‰◊‹≈è∑8 A7¨Z4≠∑É@Kœ9˘JAç‘“©…\r@(ÖØÎ<?<ŒäBûÖ«,Ah:*®ÊKÖ\"“\r	´c7ﬂéª„E‚ó∂n≈/íXµûÔ\"Y\Z•≤x6CŸ1z˚Pá∆÷B≥c¯avå◊∑Óaww/Öl∫¶Sq4KbF\\	ì¿\rÈÈ?»∫#◊∞Ï}ü&‚{lﬂº\rœ)‚ëœÊI\'íhf@sL¢ ÇlnﬂJ–æd%ô’kI¨>ítÁ\nzáKÿ ƒ)‰qM≈öŒ⁄_⁄N{[MÁ_@ˆŒﬂ1ÙŸÒ]A|˝Iƒ?¡ZÀ”‡pr§>Ò1ö>Qº\\ñ?˛ËvÆ~)è´õË\"i‘jóÅ;àù\'’,⁄(PD√™Uã∆™êºp5ãœy7°aë·i\nﬁÄ√∆›9Äyt;Æﬁè?àuˆô4]x!`S∏w#£ª^f¸Ë’ÏçFÌ¿u ƒ¢QTE√ß±µÉˆÜ bål6K‹ä#CÅn®†+m√§ÎçÉÙˆÏcÕ1Î:∞èL[3∂a*Ö&5JÂÖBÅl±äÓ8ÑÜVÇ°Ñ@°ÈRËÑ∏¯~@UU…¥7∞≤\\¶≠/O‚#â¨\\é’‘DﬂÜ˚®~‚|DG˙™§ˇÈb¢GYœF“≤A˘ºrÕM|˙˜ª∂à¯Kªπ^´ö¬8Z¶Ûƒ+£1–\"_*tW`YvJ`Xä–ÎÍåˆısxÃ\'5w&Fk;ÊÃNÙ%s1WÆ »\rR˘Ûtwê‰Â_\"˘˛Û0\Z–c÷ä%$\Zõê/l%1–C˙e4œõOc$IksÜ¶∆ñ.ê\"`ﬁ¨Ÿ8EMhhRC¢∂mZ	¬0§µπ©kå;9ñÕ[Ä°H•°k¶Æ≥£§S)Zö»§â7ƒâDlåàÜfËòÜÜfÄiË3RÃ7Cm€Kã‘h>ÌtºäOˆÊ_ $ƒñ,ßÃ&¢Ô9·…ˇ¸óhôÃÖÛ–¢QDPe±á∏Ë÷‘§,Ö◊0£h:~(ê&Dc`á≠πÛƒ++^àÁ÷Îm~g¨è¿Ò®Ü6Âä@ƒÜ°whò≈iãÜ9≥1fv†E-∆Æ˛¸ÌõI~Ó4}˝ÀƒV≠FèDßHM¢∑7[µä®+1~5Tƒô◊J†€(7@Ñ\n?»fsLÙ÷AÓ‰Æ-Ä à«cdb	</ò⁄©JçÅUù§\nAJâ)\r¢vÑD4A&û\"Ÿê!>ªç&$sûzâŒﬁQfú}.âwüÖ›÷é–\rú6ìªÍ?–”÷ä¯£9\Zø¸UT4Iπ‰YΩ\n=pÈyaæ~Û<ù≥±D-ÔÚâW’É∫5‡{7ÕåŒª202µ¡°-â#ÕÆØ\nÅBR¡ÆëQ¬}]¨l1àœòöçLµê¸¯GIæÎËÒ≠$ï™o™B\"-k·<k÷œ0n}\01–Öøj!nC≤Ë÷wÖMtºÕñ∏	•2µ˚Ì_L~>(©·∑%–ù\nâkJ˚ŒΩtº˜<ö>zÊ¨M!1“	\"kè¡iõOÒõˇF⁄‘òCÏƒw\"ÁµRy~ÏòE˜ñ›|Î∑œÛ`â@˙‡ïr†4îm@πÑ^≠Ç4ÅÁÉ8Í#ﬂUñÓP,≤YÅÚRØµ≥*!–#TñTR«}>‹T·¢˜Õ‹≥OÉX¥Œ5r^õÿ°&˘Çâ∂-Ö¿∆«ö3ã“Ü\'(ﬂyÚ\'Æ¢–÷â°4k.£ér&7KNgÇﬁ\\®£)ÖM†¬\0=Ù—äYÏﬁ~“Ø %¥≥O v¸±±x-õ\'¯ÈÅDâ!4ˆÙa¸√?Êà]˙uúá\"ÛµKŸ˛‘s¸r√f∂yILM†ÈÂ@®kdGCBG§$N(AHµÌ≥N¯Ü“tA4\nñÄP)åhEü00–l¡H“©Z∞T@®˘Qu¯ÍGc·Y\'!3Õ5∏\'u@†BoäÔù†\Z•ƒ/0¸µØSyˆyÏÛŒ!v˙Èÿ3;Ò˙aÁ>rØ>ÜáM.i6∂RiH¶ì¯XµL™VJü¶›âÖ(%1º\"åâïJË{vëÚ,‚ùM-ä/$°SºÊ&¢Â*…3ﬁã—ÿ<…„‘∆;ıõJﬁË(~°Ä≤b‰üúó˙á∏Ó·Ωty4ØÊÏ®NX©q8Æ¶)êö¬©1ËA≠«Rtût•íq–-j˛≤\ZR-˚XQùà%)(bz≠„ ÑOﬁÒYì9a«l=MKÇaOô€4&L°ãFØΩñ“›ø¡æ‰!˚˚®˛˘^¨ìﬁI„.¡ú’Anlîò‚ÓŸã◊Ωï¡…+*~¨òîÎ<òLÅûD F¢∫@FC¨∆4Z«\\X¥≥1Iπ´ãÍ≥œb/[\nM-åú{6ﬁÓ}4˛‚ód>¸°Z—P*¨•ÈaPÎì”T°ƒËˆó˘››èpı≥t\":®Jë†Z@§f£í ®ı_«tê1œC4Ädzb„É]S¯xÅ¬äÄm4ﬂ@ã	LK—û\0/ü¶‰ó	å\03–iµzl¡µûªı^>y¬2üxZ∫i§{ÅKı`/z†æÔQ¸ﬂˇÖÃ•ˇJÚºì˚√î√ö”®xgxúﬁ>C«˚ﬁG˙3Á¨YÅﬂ7H\"\Z”DπUÑW+aÖ*@â\0iö`€tT•ÇW Ù§ºk?˛À[Iûs.ﬁŒ≠î~Û[åã.Aò¢A«<l.Ö_›ÇuÃ:‚sÁ÷≠πÊÉîêà@QÌﬁÀã⁄»ÌœÌÊÒ—U\'\"\\î-íF7-î!ÒÉ∫yÖPqkã/*kv¯êw@k?‚§+-©PÅƒï∆åd,_îÀ‡T•äI*·#\rE≈ÕHÂäœé°êÌ[ﬂ†i∏õ÷¶f:öNP»2t€≠~|\r˛ã/í˘¬˘§Œ˚$~/cW~{Ÿb\Z?w!f[;#◊ˇu◊ùò¸f2∆¯M?%{’’–1c…\"™õ6Q⁄æõ»—G¢µ4Q~mπ˚Ô√\\≤kV\'^OcW}è‹˝w‡BVLb;∞,D&“îü~ñ†o?B≈	GÜ1>ˇœ8˜=à#C“«ùÄΩöüñ\Zåç—˚√¸˘ˆ{¯ŒsY^»Ÿ(+Ç°£ÑÜnÅ•»§¿…ã˙Ê$,–B0M®zP¡Ù@∑m≈¯HàòQâq…;EÈ°)A‡’‹†.Úd+Qˇ1Çr¡Ûj?\\ı≤L˘rú¥Â^>x¸\\?aÈÖù4_p·©ÔBã§±ÁÕ¢ò£ˇ{ﬂ!Ü\"˘˘∆ú=á ÿ˛ΩøG≠ZK§)Õ‡ˇg€>ƒ¯(2ëAsÓ˝#ÖnEÚÃ≥ê∂Eu€´îˇ{¢«ûàΩ`!n◊6X∞òƒ>ä^≠2–”Ek)O§≥ìÿáŒ•pÕ∑pûÿDÙ¯ìIΩ„tú„6·‹r≈Û>B¨≥∆G…o}ç\'Ôém£Ø¢´î—µ2Nò√pB©£ôI‹–ƒ£ˆ≥$Ñ‘î‹ZÊ]tßb¥ËE_√/ª(5éD2R«nàí4ç0òå‰™ZΩÔ9!T¢v‘IHÓ=X¸ﬂ=úKåeUÜøµ˜>Ø˚¨ÍÍ¢ªÈ¢i[Ë\nàà`bò —(—ƒâëô∆8ÉD¯ öH‚¿ß∆òàî–<¬+ iPPi∫°ªxuWWW’Ω˜‹{ˆ9gÔÂ‡éŒÓÏ≥Œ˙ˇµ÷ˇ/ˇÌ	æ¯◊ßπ˜3G∏˛Æªp7‹⁄¸∆õƒgü`ÉË]ï»¸‰À¥ŒcWè±ıÀ|˘Khˇy⁄ˇ¸ãl˝p\'b4yØˆ¯π1qº]9ÄÏ?\nè¸ôùˇû§Ω‚vVÔ¸<y‚pi¬ñ[©˛Ú)¸´$¨≠í9·¿˜æÕÙÎwP¨^∆Ù˘\'y¸°ßxËMœ6LÈ—w9.∑	`ƒ3Ã°∞4ÊÙÎn`€($›+°S£›±ª@5ÔOÈÑ∆\"Vb=GC!’å∑\'|T2+¨¨¬ºÑ≈∆í(rÿûuÙv∑¿⁄ú˛·„<‡ƒkséæÙ\0ﬂ˙Ùµ‹z’Voøô˝ü¯,„76∞“·Ysq}Ù	Ù¬ws °ü˝öÍﬂØ“>¯F˜‹K~tùÊ¸á 9H¯òà$Ù∆ Ü|ÿ£w”MºªπÕ¡ü˛ê^1\"n¸ìÌúd‰ÑÏ–!VæÛ}∂eÈÓª5ò….a£ÊGø¯.ø?ìÛé–≥#ñG ’Ñ≥[ †,h3–L–c·©`y¨¨\rÑÕ^§∑iò4P;†K,ÃÁ}\Zve˝˜´˜‰aÇ˜5Du,º¡ŸÜ∫b	—¿¨|∑4Ä:vœŸ%®*h›¨’•ÒıÅ√$Y‚â˜<zÍgû{íÚÔßY¶$M3å1àK∞«>NÚ’;ŸˇÕo‡\nÀÏ—áiﬂyÖ—=_#π‚aVR>˝·Ì◊±áó®œúfÒ¬sÑSØ¢óƒ_«ıáTªë«&>Û7Íßû≈ü~Î[äıÎ∞£%dú#W]√{gﬂÁ≈ﬂ¸é?˝Ía~¸‚[<¥≥L[åŸHfÖZ¡ó–Vä…Ö—∏«RQ„ZÈ¨r6‚≤ÇÖ¿æ<“\"Ã+0\nZAYA”Çk¿dJå Îw‹ßZw1ﬁ⁄Ä≥ä4Py¡…ûxJÖëQL™ ,fJÊîÒ™PŒ_¡ ¿Æv—∆Æ~1	4\rH≠ÌRÇN+ÆuSn<Rp√¡1◊‹I÷éc∞Zê˜w¸uÁa≤I˙±u\\Q–LL9A{Ú¡V0>ÇhKÛ⁄Î‘[¨¸‰Á,}ÓF¬Ó˛‹€‡zó_N47wÿ›xü˜ﬁzó◊ﬂ<√„ß∂yÂb√E;bû;∆ÛÖX*È&!πÉòÉ≠îô7ƒTH‘P€AHbƒiI™åd=\"T±ìù»G3YQ,–® Wﬂ~ü˙fØ™j=∂ôìˆ‘${¶_C\\Ï–Or™$£1J\"0.È∞•Ù`*aw\nöl“yüçÌ∂◊A;Tvû∫ÜtP‡Á-é»\'/G5\\yÂUofÙ◊≤≤oçafî`≥!∆∫in◊ÜT-ßŒPΩÙ,É€nÉQøÌYÃKv∂.2◊öŒŒx„ÙomŒ85∑úèM2$÷≥Nû8õ†MÉ–\"#	5™ÇV%¡çÕõÙà“ÌÛâ1BhõÏ›hóãE¿ä†°Î€Èå•V#ÌbÜ¨›røJâQLµÄ∂§Œñ∫Cgı6”∫¿e∆Fä‹‡2mÉÕ°ô\n”ôBO1{<7ƒ=◊ôv\nF\"b[Lh…≠««ÄK,&¶$˛<˝ﬁ\n˝ûaÀe÷3DÜmÕæ$%Mî÷VPÉ≥uõbeAÌR∂|‰¬ºÂbÌÿQKeïË-;¡”4)ƒÜ‘ÅI˙hÿ∂$–£µ#ê‡ÃÀÆ)%Í`Hõ)™≤å√%914¥mU¬‚y@`	\'–ƒ∫˚ù]NTÅ±~ä\\˜ï˚uZAâU™Dq[ËY¨tA‰+EÇ0ôÌÂüD-u£Æî*zô2Ω‘ı5\n+#Å40›Ñ4vêÙ#}Ò¡0,±R¶ç‡R«TåßfDWd–ÏR©h˙)çwÑV°Ç•√J;Åy#£»`ÆxMòf^,0ﬁ◊Róè†öv‹÷Â0\\≤HiZ•ú)b#!ZÇvCU¢0Z\ro)ı V∞\"H;#-,ŸPÕ\Z’÷Y‹æúj÷•J≥g#Ù;âÿáÀ#°Ó` —˜_&H;ªê\Z%˙Æ]ÍzJóŒ}\0∂@”Æº¿$)–|	ÛŸÛI√U4Ê‘~èoñÜ“Vòá6Jãê¶¬J?ßúÇ¥= ÄPœ)õm\'zlaml≠ÃΩ–œ!≠ïòEB£Ù≠0> 45l_R\\€aÖ±]á`¡{•9}Ì≠\"bàìà˝\\:¿¥Z^@cd7_¶òn‚$%¶p&•\n-¥B= ∫ÄÙ∆-ìÀ!Cò∑æ‹DB§	‡íŒ»ˇ\0ôj†xåÅ[\0\0\0\0IENDÆB`Ç','image/png','stu','emp','2016-07-05 21:40:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(50) NOT NULL,
  `section_batch_id` int(11) NOT NULL,
  `intake` int(5) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `section_name` (`section_name`,`section_batch_id`),
  KEY `section_batch_id` (`section_batch_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`section_batch_id`) REFERENCES `batches` (`batch_id`),
  CONSTRAINT `section_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `section_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(35) NOT NULL,
  `state_country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`,`state_country_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `state_country_id` (`state_country_id`),
  CONSTRAINT `state_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `state_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `state_ibfk_3` FOREIGN KEY (`state_country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_address`
--

DROP TABLE IF EXISTS `stu_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_address` (
  `stu_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_cadd` varchar(255) DEFAULT NULL,
  `stu_cadd_city` int(11) DEFAULT NULL,
  `stu_cadd_state` int(11) DEFAULT NULL,
  `stu_cadd_country` int(11) DEFAULT NULL,
  `stu_cadd_pincode` int(6) DEFAULT NULL,
  `stu_cadd_house_no` varchar(25) DEFAULT NULL,
  `stu_cadd_phone_no` varchar(25) DEFAULT NULL,
  `stu_padd` varchar(255) DEFAULT NULL,
  `stu_padd_city` int(11) DEFAULT NULL,
  `stu_padd_state` int(11) DEFAULT NULL,
  `stu_padd_country` int(11) DEFAULT NULL,
  `stu_padd_pincode` int(6) DEFAULT NULL,
  `stu_padd_house_no` varchar(25) DEFAULT NULL,
  `stu_padd_phone_no` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`stu_address_id`),
  KEY `stu_cadd_city` (`stu_cadd_city`),
  KEY `stu_cadd_state` (`stu_cadd_state`),
  KEY `stu_cadd_country` (`stu_cadd_country`),
  KEY `stu_padd_city` (`stu_padd_city`),
  KEY `stu_padd_state` (`stu_padd_state`),
  KEY `stu_padd_country` (`stu_padd_country`),
  CONSTRAINT `stu_address_ibfk_13` FOREIGN KEY (`stu_cadd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `stu_address_ibfk_14` FOREIGN KEY (`stu_cadd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `stu_address_ibfk_15` FOREIGN KEY (`stu_cadd_country`) REFERENCES `country` (`country_id`),
  CONSTRAINT `stu_address_ibfk_16` FOREIGN KEY (`stu_padd_city`) REFERENCES `city` (`city_id`),
  CONSTRAINT `stu_address_ibfk_17` FOREIGN KEY (`stu_padd_state`) REFERENCES `state` (`state_id`),
  CONSTRAINT `stu_address_ibfk_18` FOREIGN KEY (`stu_padd_country`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_address`
--

LOCK TABLES `stu_address` WRITE;
/*!40000 ALTER TABLE `stu_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_category`
--

DROP TABLE IF EXISTS `stu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_category` (
  `stu_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_category_name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_category_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_category_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_category_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_category`
--

LOCK TABLES `stu_category` WRITE;
/*!40000 ALTER TABLE `stu_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_docs`
--

DROP TABLE IF EXISTS `stu_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_docs` (
  `stu_docs_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_docs_details` varchar(100) DEFAULT NULL,
  `stu_docs_category_id` int(11) NOT NULL,
  `stu_docs_path` varchar(150) NOT NULL,
  `stu_docs_submited_at` datetime NOT NULL,
  `stu_docs_status` tinyint(1) NOT NULL DEFAULT '0',
  `stu_docs_stu_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`stu_docs_id`),
  KEY `created_by` (`created_by`),
  KEY `stu_docs_stu_master_id` (`stu_docs_stu_master_id`),
  KEY `stu_docs_category_id` (`stu_docs_category_id`),
  CONSTRAINT `stu_docs_ibfk_1` FOREIGN KEY (`stu_docs_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `stu_docs_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_docs_ibfk_3` FOREIGN KEY (`stu_docs_category_id`) REFERENCES `document_category` (`doc_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_docs`
--

LOCK TABLES `stu_docs` WRITE;
/*!40000 ALTER TABLE `stu_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_guardians`
--

DROP TABLE IF EXISTS `stu_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_guardians` (
  `stu_guardian_id` int(11) NOT NULL AUTO_INCREMENT,
  `guardian_name` varchar(65) DEFAULT NULL,
  `guardian_relation` varchar(30) DEFAULT NULL,
  `guardian_mobile_no` bigint(12) DEFAULT NULL,
  `guardian_phone_no` varchar(25) DEFAULT NULL,
  `guardian_qualification` varchar(50) DEFAULT NULL,
  `guardian_occupation` varchar(50) DEFAULT NULL,
  `guardian_income` varchar(50) DEFAULT NULL,
  `guardian_email` varchar(65) DEFAULT NULL,
  `guardian_home_address` varchar(255) DEFAULT NULL,
  `guardian_office_address` varchar(255) DEFAULT NULL,
  `is_emg_contact` tinyint(1) NOT NULL DEFAULT '0',
  `guardia_stu_master_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_guardian_id`),
  UNIQUE KEY `guardian_email` (`guardian_email`),
  KEY `guardia_stu_master_id` (`guardia_stu_master_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_guardians_ibfk_1` FOREIGN KEY (`guardia_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`),
  CONSTRAINT `stu_guardians_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_guardians_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_guardians`
--

LOCK TABLES `stu_guardians` WRITE;
/*!40000 ALTER TABLE `stu_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_info`
--

DROP TABLE IF EXISTS `stu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_info` (
  `stu_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_unique_id` int(11) NOT NULL,
  `stu_title` varchar(15) DEFAULT NULL,
  `stu_first_name` varchar(50) NOT NULL,
  `stu_middle_name` varchar(50) DEFAULT NULL,
  `stu_last_name` varchar(50) NOT NULL,
  `stu_gender` varchar(20) DEFAULT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(65) DEFAULT NULL,
  `stu_bloodgroup` varchar(15) DEFAULT 'Unknown',
  `stu_birthplace` varchar(45) DEFAULT NULL,
  `stu_religion` varchar(50) DEFAULT NULL,
  `stu_admission_date` date NOT NULL,
  `stu_photo` varchar(150) DEFAULT NULL,
  `stu_languages` varchar(255) DEFAULT NULL,
  `stu_mobile_no` bigint(12) DEFAULT NULL,
  `stu_info_stu_master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_info_id`),
  UNIQUE KEY `stu_unique_id` (`stu_unique_id`),
  UNIQUE KEY `stu_email_id` (`stu_email_id`),
  KEY `stu_info_stu_master_id` (`stu_info_stu_master_id`),
  CONSTRAINT `stu_info_ibfk_3` FOREIGN KEY (`stu_info_stu_master_id`) REFERENCES `stu_master` (`stu_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_info`
--

LOCK TABLES `stu_info` WRITE;
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_master`
--

DROP TABLE IF EXISTS `stu_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_master` (
  `stu_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_master_stu_info_id` int(11) NOT NULL,
  `stu_master_user_id` int(11) NOT NULL,
  `stu_master_nationality_id` int(11) DEFAULT NULL,
  `stu_master_category_id` int(11) DEFAULT NULL,
  `stu_master_course_id` int(11) NOT NULL,
  `stu_master_batch_id` int(11) NOT NULL,
  `stu_master_section_id` int(11) NOT NULL,
  `stu_master_stu_status_id` int(11) NOT NULL DEFAULT '0',
  `stu_master_stu_address_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_master_id`),
  UNIQUE KEY `stu_master_stu_info_id` (`stu_master_stu_info_id`),
  UNIQUE KEY `stu_master_user_id` (`stu_master_user_id`),
  KEY `stu_master_nationality_id` (`stu_master_nationality_id`),
  KEY `stu_master_category` (`stu_master_category_id`),
  KEY `stu_master_course_id` (`stu_master_course_id`),
  KEY `stu_master_batch_id` (`stu_master_batch_id`),
  KEY `stu_master_section_id` (`stu_master_section_id`),
  KEY `stu_master_stu_address_id` (`stu_master_stu_address_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `stu_master_stu_info_id_fng` (`stu_master_stu_info_id`),
  CONSTRAINT `stu_master_ibfk_12` FOREIGN KEY (`stu_master_stu_info_id`) REFERENCES `stu_info` (`stu_info_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_13` FOREIGN KEY (`stu_master_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_14` FOREIGN KEY (`stu_master_nationality_id`) REFERENCES `nationality` (`nationality_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_15` FOREIGN KEY (`stu_master_category_id`) REFERENCES `stu_category` (`stu_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_16` FOREIGN KEY (`stu_master_course_id`) REFERENCES `courses` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_17` FOREIGN KEY (`stu_master_batch_id`) REFERENCES `batches` (`batch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_18` FOREIGN KEY (`stu_master_section_id`) REFERENCES `section` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_20` FOREIGN KEY (`stu_master_stu_address_id`) REFERENCES `stu_address` (`stu_address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_master_ibfk_21` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stu_master_ibfk_22` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_master`
--

LOCK TABLES `stu_master` WRITE;
/*!40000 ALTER TABLE `stu_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_status`
--

DROP TABLE IF EXISTS `stu_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_status` (
  `stu_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_status_name` varchar(50) NOT NULL,
  `stu_status_description` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stu_status_id`),
  UNIQUE KEY `stu_status_name` (`stu_status_name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `stu_status_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `stu_status_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_status`
--

LOCK TABLES `stu_status` WRITE;
/*!40000 ALTER TABLE `stu_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_id` varchar(65) NOT NULL,
  `user_password` varchar(150) NOT NULL,
  `user_type` char(2) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_id` (`user_login_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'root','4fcff1629fcb333f9487451ee982623f','A',0,'2016-07-05 21:40:21',1,NULL,NULL),(2,'emp1','cd6ef4e86ec3e4a45fc9b9936ab098b2','E',0,'2016-07-28 12:25:26',1,'2016-07-28 21:32:25',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-03  9:58:32
