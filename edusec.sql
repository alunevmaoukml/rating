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
INSERT INTO `document_category` VALUES (1,'Паспорт_главная','0','2016-07-28 21:07:32',1,'2016-07-28 21:08:07',1,0),(2,'Паспорт_прописка','0','2016-07-28 21:07:56',1,NULL,NULL,0),(3,'Диплом','E','2016-07-28 21:08:36',1,NULL,NULL,0),(4,'Диплом_приложение','E','2016-07-28 21:08:51',1,NULL,NULL,0),(5,'Свидетельство о рождении','S','2016-07-28 21:09:05',1,NULL,NULL,0);
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
INSERT INTO `emp_category` VALUES (1,'Постоянный работник','Основной','2016-07-28 12:19:12',1,NULL,NULL,0),(2,'Внешний совместитель','Договор','2016-07-28 12:19:43',1,NULL,NULL,0),(3,'Внутреннее совместительство','Доп','2016-07-28 12:20:44',1,'2016-07-28 12:21:28',1,2);
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
INSERT INTO `emp_department` VALUES (1,'Администрация','adm','2016-07-28 12:16:04',1,NULL,NULL,0);
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
INSERT INTO `emp_designation` VALUES (1,'Заместитель директора по УМР','Зам по УМР','2016-07-28 12:18:23',1,NULL,NULL,0);
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
INSERT INTO `emp_info` VALUES (1,1,NULL,'Mr.','Александр','Юрьевич','Лунёв','',NULL,'MALE','1984-06-20','','Unknown','2012-09-01','Хабаровск','a.lunev@maoukml.ru','MARRIED',89211058291,NULL,NULL,NULL,NULL,NULL,12,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
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
INSERT INTO `nationality` VALUES (1,'РФ','2016-07-28 12:22:54',1,NULL,NULL,0),(2,'Казахстан','2016-07-28 12:23:06',1,NULL,NULL,0);
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
INSERT INTO `organization` VALUES (1,'МАОУ КМЛ','КМЛ','236000, Россия, Калининградская обл, Калининград','Озерная ул, 30','951737','maoukml@eduklgd.ru','http://maoukml.ru','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Z\0\0\0F\0\0\0L���\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx���y�\\U������5W���7�< fĀ��\"��DM�m㋊6�ܶ����\" (��	S�yJBBHr�pss�n�u���Qu�\0�����~�y*�gթ:����Z��]k����q��@	\0\n!���l���2����!S�I�\\L^��Dz���X��[F\'�!�����G�O\r�6dU���L�x�۝�m٤����*PB�o�@T���T�\" �`�\n�(�%%���(i��P��h�©;�\'F��o3��/e���\'��I���i��x�������V�?������\r��D5�l���,=�x(�Ai�����+��G���Q�f�mSn���	��Q�w֧{�C35։���X�ה9ee���W2�4�62����V��E�� ����l�\\[��Jؕ2��2��d\r����@�:BJ �PV�`�� (�����S.�({er�q�F��oQ�tP�4j5i���4��(>zR#���7���>�-����B�.A�o�聇18@fhm*K:�F�5��֌���a�E\"���9�K8�\rY*�&�3��AXq)<����%E�5��>��|�n\0��G3B�BX)�e)dˌ�a���,��N�Ũ8�P��O�Ԉ����C�~�?���5���ěd0�c�y�R!J�����1�Wi,��>j%�G-��و���i��sQ0 ����j�G�G�;���%�p)VG��?��g?���t�g�I����qZ����igR��\n��~��������HPp��IӪ94�\\D�H?��q�v<L��[K5>M��0�2Jq�A)���2��sy��f�S�cʢ�M�*�x��ȍ���,�h:b.�����H��9����7 ��}����a +\"��k_�{�UF��]�{��ǐ���0:�I}��H�[���>�r�㿺���Ю=������������;��U��s�i�\Z��}�=�4��ҿ|=�E��*Udּ�4�L���L���	P���t\'�z�$��Rb���v�P���\' �g�@�������w�v�Rz�Y�����Qa@�������$�%�|>�����G��eR�B\nPZ<J��e�͍T�G^}����5W��s���i�g�3����\r���(�h��D�-�}�\nڋ����ng�c)%ېJLN�hf�����J���7]Q�Z�hU�i���U=�����̷˴.���y<^š��3�$��N�ak��8\0��6�3ޏ��3~�_0n�	�����νx�APʃ��\r��\\��_�������_�j�g��� ͗�б��I~�K���w���|C��O���`�@|�P\r(��*���a����gev�Y�lgw�~�[���V�yk�F	u0�Ąy��R��5&���\\az�p����@jH�LS��,���#�K�*��=M�ƛ���b� ��N���p�% 4�\\ʣ������A�ϡ����z�qz�{�]}5��1VF��e�;�����������\'�׮#��_���}\na�&���;�t��GQx�*w�\Zyއ��)�.�*����&և�����w�g͖gh��Aw`3���O!�`REb!��+��tݪ79k�6�V��F)P��>>Ɯ�M,��\"��\\�4�������\r��r\r^���~����	?�)\n�T����s�O�?F�7���w��D����D׭#H���TrCTwn\'��pK�	\rcFb��q�q��\\��h\'~�QT6̦��&0b�+�\\��CE��(�0����Գ�Td�{��g��\ravp��G���\n{�e�6���-[1�!�d��dڹ~��)�Uu�|(��&1��߲ɼ���mc�1�I}4�4���Vª��b1��0����Sq�??�_�����DW��짼u;ƻ�O�?�Od�2�uǢ��3�?6@ -������ft7Y,��k=x�у=�\r\r368��`��-�}��������2\"����tA6�����6����\'>���c�=�\\�K�d���$��� �[ɜ�a��Q�{I�\\N��P�Q�ePR\"�ʞx�������Ք��汧��C�e�!�\nM�7���i>��������e����h�ڿa�Y�����]F���}�Z���t#�����e�P�ս��B�+0ҪS��$L�	�i<�!HD=j�|��\0�*d�c�U!5܋](�n�Al�r���h�8�c��������7�v���z3��b��=��y�2����\"���Hc�����=ƞ��v�\'�����*�LXԄEO�L��u;�F��z�Q�7Y4�?�0~��d��E���z�wћ��Rg��]�v$�aG��˟��P8C=䯻���,�e��.��jK��B(D�j�M1�mu��J����`f����hص-n����q�@�z����1��=d�}%z:��15ԃX����\'��5�Azn�s(�����x��(B;����4��2���cdOZL��G�J�%_�U�Iw,ʨ��rn�h�ʟn��\\�ek�b	TikA��,��*��#����-t���}:�⌙`E@�\"U\r������L�\rԖ�\nhf����N=���Q��O�s��D$#�_GX\r�WN�3�8�#����w�q��gt C���8�&W�z�N4�Vx}��O�R͢ߜrO31�T���Y�b[�/����Iy,������n!���=�=4���74�*T��?���W�$w�锏\\NXЪ~�N��4�?ɸ�Oe�~*B�D���\r�{��U��<���\"@oi��̓�]~%\"��|������$t�u����֮�[��)t1OG1a�ӳ�iL�{�ԙ5�:+;H.Y��D������J��Ne� ��٤�<}�J���歘��@�X���~{=��sߏ�Ќ�W��:�R\'�`�u�Oe�N\r!j�\n4�\'H5P^{4��8��a��H���(2pi���D����Q[�A���څ7:�=o��ӳ��t��3u�0q_ě|�gQ3	����E�D�8�T?@&3��o0��o�<�mQ��Y ���P���8Fc���o�\0#\'�\0��	�՚k�+`�=M�����\'��i	�!�ԯ�L#;DÎm4�ď:c�|��B�(t�r������P�F2W^Ab�J*��x~�>zf�.�I����U˷�R(��gk��c�Tr�����>����L~��T�u���H~���o���o}������=w�oY�8�l����%��pɼEQL-wBE�A�����׽�E$e���ɘĶ�OXCTR4�Ǐ71|�	�\n��B�@*�G����җ��\"��^�i�M\"n��ΚŚ�m������)�Q���;��&��A�<�\"�s*Z:A8o�!���(��8���/��|#���ۅ_���>�����%�y��z�\r��:�@ºÖ�J�J�R�u�s\"�Z����>N�vm4A�M\\ǩq�a��(\\?�45R-Qzz��hB�\nVoc�a��h����M쉗���!���w�\r�G���@���!���.Ś?���VS+�W���yIuPn��xu����wJ)|ͦs�����ak�!Q�r���͌������At�z\Z.����E8{����3�t�eD����|0�}�G7>�C���?�u�M2�\r����3n���͞�pr\ZU��n�a>�\rQ̈Ɂ]#���լZ����q\Z���<��4B.��a��!�Ԇm5s`o�#��%_(\Z k|M�DL��&�}��Lr��Yt��+ھs\r����#do�������A��W#��b���̸���n��u3�g��iꈉ<du���q5�k���t�}/����q�ل�ƫ\'�Lbp\0��]w�E�02\r�ole�?�&uާ�;��+_`�܏��[\ncc��i6<�m3���g>5iE/��*l��B!����472{�<��[��9�%�o5��q��of�k#��~%���\">ЀNC�7�����cǝ����\rz�d2B�9IFK������<[zz��W=uG���VN>y6F�E���/}w�\rF��\n��0�C[8�>����~�y�W~���W^ᕮav/?�)O�&]G͊k\"��Xt�V�\nk�,@��oߢ�˻�I��Џ^O��Ď\\IX,�{��<r.��Ǡ�(�t�G6ld����s�������Ru��w���Bux5�р�n�]��0��<�%��b&+�����1�-l!� \rxcGȁ���BC�A>�i�����E���ˌG����K�(��>�l$|lz:A��$uƙ`iH�����f^iXJ�h@��T|�?O��a�4���\r6fC<��Z��+��kI�l�L����F����{B��u�2�����r\'��?W������;tf�&����tk�=��_�W��ȍK��@x��AQ����&J��&�x�ԜY�0yt�8���:13J\\sq\r�@�	�edѡ4g��G����>���;�;���R�\'�*�ED��a47бj>v�3h�@�\'�<I�*�PB�9�7H�X�#�=���۱׮%�=o�AJ�l$q�gi9�,L��{�\nc��_r.Fw]��\n�\"��U\"�Nl�x�\'^\Z���_�:��y�d&Pk�m��N-[�}.�a�[�d�U�b�|�$tQ�OO\0f��A*A(@�}rG�`��MX�>K×�N������n���gPU���F���!v���3If��3^mƍ7!���_I�h�k4Gf�L�s~\'����?�0��d9O57�W,���o\"|��#O3��#�%�D`D��݈e5N*�����\0]**�� |�����g	\nEA�q�<�tlSbE��_��?\n�^U�8�0�\Z��B�+��X����Z\0�km	\n���I<|?�G�E���~���������K�{���s�R����5���A��\r���f��DEyU��aR�f\"�*�It����GI������n�m�{�\0�`�k\'Y[��A�y�� �4ERT�!v�|��N?�6��:�r�.�����+qB���+)��|HO���\nl{�Z��!�B�����b�$hZ�h])��bL�\n��R�\r�0=UW����d[;i��(�V�/��x�D���MBס::@i�}$׿�hc��h/�A�Ј\"T���6$AXu�H���*\Zc����d�RR�,Ev,�i��)��9U�����[)��a�P���	�\n�fS(��k�+�˗�����>ȧ>���l�cژV#�5��\\��8�x���?�D���	�dҲA 4�0�U0w�b����!ǌ>�)擤�� ���\nI�����ʮ�3���+���8�O�S��O��u2�0�;�\Zȡ�+�(B�>�5)2�9`��e��v4_Og(T�+O���o�54�B��h��k_�jU�5��7!G���ȉ\n�\"b[�v�\r���d濶d�@Y���\\���N^ߝ���;پ-�����Lȷ��������J��%�����>�����E�x{;O?��ju�<qC�4�b�6�h|�����g�!,��F�j\"KG\0�W8�F�=�n�$�������\'���\\�~�\'�_|2A�}�a�Ti��D&�a\r�	��C��\nr]+B������_G8^��烤��&������e��ߒ���)&\"�ܩ<	�\"IDX������\n!p��o�������y~p�b[ބ� D�*l!�J���FmrR�y|��y������_\'nGPBM�\nk�d�vy�����OPiZDyf����I�M)T,F1fSڽ���bq���B��yX���\r�d\"��_�0\0�Ղa�����5�@J��Ձ\"�H���i��WtbZ)�i��Iu�D��uTLI(h1\"P�	S���	J��:�&��\ZJ���-p����N9������-M��1�8�\r�d��Nk��}���o;��!����ծA�b�\\*��c���cm���K�nK�&#�Rv�F�6���ǩ�\Z�,�P{�p�����$��^��\r}=>J��ݤL�#)md�#��*����]h1�쏿K.�DO|7撵hM��[\Z�L�%�\ZMY!5I�-��a��[\\ś�\\*����?�I��r�U�Hi12��?�y�ϓ��qFA�V���v���(��X�*������m�I%\'�����xG�	~0N�2�щG\"���P�{G@\n7���W��\r�=�w�J}}ȾQ��I00;w{�;Т1\"n���-�V�M������n`u.���ҥ�ǯ@�q�F`|s�\\�b/2jaF�hN��[�:�i@J�>���-�\Z::�4W<�eJ1Q�����v���{KX��)J����V�J��Ŵ����/\\�}��,c���U����K��S�Y\0�H5�&���	�b�nh4�H12�G��V�\nD@ChQE��#�Fq�V��]C��N��/P��6���Y��̘�:\0aa�9\0�yD�D�>���Ym��Y���kςR4���bqF\n#�&���vS0+Q��NT7���rJѓJVa�%a��#����?��ru4�Ȧ.��c\r\r1��O3~�QGt����������\0 �դ�_�5�����Fq�(���|����n|��a�Q&F�A(�F\nDl���\r��䨎�HʲQ��(0RI0\"�g���:��]Hx�����;��� @1MѢ>��\n�?����y&��R�mb�k\'�$�T�#B�A�\ZϠ���(�N��,�&��Q�xKZ]��D	ɓ�Ǹ��r]n��a,��Lx̜��ᇕٺc���g�^����E�b�yHc�D�n��ٓ\r��ڽ�)�2��*_�VӍ��\"a	��sA�h�F*��\r|\n�2��<3g5c�r�\n�x��4��\0!BbΜI�~���O�h�E���ȤQ~���Y�wSe�\n�1�#���O1���Xͭ$/@\Z\ZJ��-�W7SL4h\nK�D��j)54)�#!2ã!�Z|�,�N�a��{�����%qym�D�f\04�b�B�e���__u���7�-�B�X�Q�=^}r�������*K��\0A�B5.��j�<ҝ�X:gQ��J2P\'����t^!�*�J��a�E�+4�YC�\' �1�&k+���z��0A%Pu�_��4\"B��Nࢨ���D��H�\Zl	C�����%d+y��%+D3v�$m�b����Sr_\Z�{��?�ҚI%O��\\��;Z%��Etl�Dʿ��:a��й��۲��<\r=�S5Ld\rJL��a��K��FE�r����DJ�ei�ˣh��� ��6�����C�O���~h�I��I�~,Fcc����P�Z� �n�\n	<��m����C|�ҫ:2�/T��؃ٔ��X4,hŴ�\Z!�@��l%�H�+��uٔ��rw���Kq��q�=��7A�c�&\nEOO�˾��lV��h��/X�ܙ���z�R�TH����nfE��ڿ��^����@cZ��$mʶN��r\\IN\'����+r�4��h�<�_\\��̤�K�BH���}~������{���+�`�5�11��!(ky�c#d3fCk�L�A)!@�:�Y���ٿ>A��0\Z┪E����[F�\0�����\\!��8�u�>~z� ٪��˫X��2>|�Ò%K1tAgg3���dow3�L�S��b�������<�\r��/�����)��&�i���Rȕ�^0�o�v]h\Z��{	����4;M�]�]0��mx�^���G���Z�uJ��	��0�8&�b[���]�D���7�q���	$�kN ���<�Ѹ]�0R����QU���f\n�b��M���_��@#�\r���]��h`nK����{�3����^���kU\r�1�b��ys�}\"%���匾���M?\'��f�0���-�T�c���\rh�A8ف4���5:HJ��loc|�R�n��̻�!�I���)��\'�w���@����_��t-W5�+�X�*�\rU��s/Q�:@8���͈�����V�z�9{5��8r�GX�4�����q4GCF<�x��dl<�U���ֻK`�\Z5l\Z$����N�έ\\u����\Z�\"S��:|�5��u�hʒ�2�[��H���L<j�Z�z��\ZIN�@0�\"�E:��4��,�h�#���[�ޘ\"��w�l%�\'��\0\0BIDAT�&n�D~���#uBJ�<E+\rZ-Q�\'XD��h\'q)\"�*n�%w��h�G��H�;s�L��&t]\"4�Ԣ�6l�X3�w�9��¦Y��A����8����~����Ê[�Z�2\r�\n�J�4\\�@���a�3���!Ǭ�s摫A�(�WA����֛vT)��CI;n���~����;�YnݽL(�JH�a�9E2�_�8�i�	¢��0 ��P��Et�R��y��I:>��z3�\"�8T�\n%�%5\n�����ܫ#M��a��\ZfG;�X�m����OQ\r|���d��Ju�Ma�͢��V\"\n�1N�{T�3�3h�ш�ؿ{7?����M!��V�FSF�\"+��*�m��6�o��\'����d����鷻ؽ���h� ,�nLc�B�FPS�\n�5���^Ov��\Z��Bj5��!óV?�X�������F��E���g�&t(����c����Z,ⴷag�p�vr���p�b���Q��D�(�c��T�v�P�f�l�H�Rx������a�W�Py|#�c�1t�Q\\<���x6O<��)�⮇�sߦ(�D���i,P<�8�~#���w����\n[�p�]��.۶z<�����ylݲ�c�m���*fD�ݿg����(E�z %�t�X�Lr[va�ތ.� o�� �͝�}��XVT8�d�@/�hyq����������x��!vŗp��D#$���9���\nd3��ꤗ>�d�Bh:��&r�}��e��fa}�P	:ۉ65 u7_a��ҿ�	��s6��l#��~����pC�}��imkd�1������k�Mp�!�B�K�mJ���ӏ\'��ן��>��]���+x��X�t9��!�6�=:��\\�\"�>�s�тe]��ʖi<�<¸��}+��k�1��>��q���d� ��Pj� ��`Z��5��	/n!�։lic����څX��̅�����֯��\r�Re�ob�1Qk�����Rp��O�������$���r%ӳ9�um+�\'�&�6�8���\'Q�x??4�HB�9ؽ��M��,%�=/���r��h�h��x}�(�x�]yX��V�x�Rbq�/<����ί�+.��zv�ɣ������KԈ��u\'�&i�4_�̂�O�a$C����O�c}��p@*��1�$��I߭B\"с�4������(�.FoJ�5d�,-�A���#��������@^��)��>��\r�:��f��#D��@ƴZ$W�!�G�|�m�-���q1FS�I�4�܅s�݌~�|��(�&�} {���;�j�e\'��~ZP(�9VsJ�Z��s�<�� ����D\"�H�t���\\�|��y����*$�6��	�S����4�������G,T�>A�7DA%�D\Z�&�W4����SOũ�|�j�\\	s���N;{�r\"K�z��k��Re�k/d\nϲ��J���O_�Rjm�%n4��ei�J�T���ϒ��o(���缇�Gϡ���@��Qk�o~����9J0V(�z���ه��$�WC�?��_ChBNQ��٠\'p�\"�jH�(u��3�<��zv�fh�T�z)����%�ۏ\ZD�Á�|·�,������^_\0�Su0��Χe�2��@U���l�}�BhO2~��1.�X���(��3�\"v�ј�m��\r�{_gwO��밄@�Sz\'\\�3e֝�V�B�*�`M;G��~d�f����E�6����\0���8^Z;0n�1�����+<�hXsC�w��/s�ڕt\rx���qr�Y,=i!��e�m���U��WE����n0F<m3{��m��ۋ5:����d3�*����QR�Fi������X�N����Q W_F��n,���~}�YT?�w��=F������1����o���+v١��[�(ܑ�����=�zJe^���\\�l/�xz��r�[��>��n[6P\rC��~�}i;�N9���NC��6Bw1�X0Z�Ε�BC8ez?�e���N�7/��ٍW���\\��JHK\"�5?�`߾m��wG}�8F��AVw2#9JG�R1�9�Q*�mX�z!���پ�F�bu��^��q��5$�)FM^��ŋ�[0��%�c�h	{�HS�+(Q�RQY�z]�ȟ�m�|���~��8���x�/�cK\Z���Щb�!��TwoÚ��)���� i�t=�W�����k����%���\'_�����\r�8���\\����l�%�	��Ne�.�G�O���~g�6�����clߺ�����6vL�憉�m��K2$���#��J�R$_,��r�fF05A�Z�mN-3�<x�����;T+�F�&�67��F�������1�\"̏1��\0\"��\"2��2�x$ɞ-�I�6pز���{��J���^B�� ��eT_���e��JX�������w1��(u����ŏ�8 A7�Z4���@K�9�JA��ҩ�\r@(���<?<ΊB���,Ah:*��K�\"�\r	�c7ߎ��E��n�/�X���\"Y\Z��x6C�1z�P���B�c�av�׷�aww/�l��Sq4KbF\\	��\r��?Ⱥ#װ�}�&�{l߼\r�)����I\'�hf@sL�ʂln�Jоd%��kI�>�t�\nz�K���)�qMŚ��_�N{[M�_@���1���]A|�I�?��Z���pr�>�1�>�Q�\\�?��v�~)����\"i�j��;��\'�,�(�PDêU�ƪ��p5��y7�a��i\nހ���9�yt;���?�u��4]x!`S�w#��^f����F��u�ĢQTEç������b�l6K܊#C�n��+mä덃���c�1�:��L[3�a*�&5J��B�l���8��V���@��R脸�~@UUɴ7��\\��/O��#��\\���D߆��~�|DG�����b�GY�FҲA��r�M|�������K��^���8Z���+�1�\"_*tW`YvJ`X������sx�\'5w&Fk;��N�%s1W� �\rR��tw���_\"���0\Z�c֊%$\Z��/l%1�C��e4ϛOc$Iks����.�\"`ެ�8EMhhRC��mZ	�0����k�;9��[��H��k�����S)Z�Ȥ�7ĉDl���f蘆�f�i�3R�7Cm�K��h>�t��O��_ $Ė,���&��9�����h�̅�ТQDPe𱇸����,��0�h:~(�&Dc`�����++^����m~g����6�@���wh��i��9�1fv�E-Ʈ���I~�4}���V�F�D�HM��7[���+1~5Tę�J��(7@�\n?�fsL��A��-� ��cdb	</�کJ��U��\nAJ�)\r�v�D4A&�\"ِ!>��&$s�z���Qf�}.�w���֎�\r�6���?��֊��9\Z��UT4I��Y�\n=p�y�a�~�<���D-���W����5�{7͌λ202���-�#���\n��BR���Q�}]�l1�Ϙ��L����GI�����$��o�B\"-k�<k��0n}\01Ѕ�j!nC���w�Mt�͖�	�2���_L~>(��%Н\n�kJ�νt��<�>z�M!1�	\"k��i�O��F��ԘC��w\"�Ry�~�E���|���`�@���r�4�m@��^��4��8�#�U��P,�Y��R���*!�#T�TR�}>�T���ܳO�X��5r^���&����-���ǚ3�҆\'(�y�\'������4k.��r&7KNg��\\��)�M��\0=�ъY��~ү %��O v���x-�\'���D�!4��a��?��]�u��\"�K���s�r�f�yILM���@�kdGCBG�$N(AH���N���tA4\n��P)�hE�00�l�HҩZ�T@��Qu��Gc�Y\'!3�5�\'u@�Bo�\Z��/0���Sy�y���!v���3;��a�>r�>��M.i6�RiH���X�L�VJ��݉�(%1�\"���J�{v��,�M-�/$�S��&��*�3ދ��<����;��J��(~���b��������ty4���NX�q8��)����1�A��Rt�t��q�-j��\ZR-�XQ��%)(bz�� �O��Y�9a�l=MK�aO��4&L���F����ݿ���!�����^���I�.���Anl����ً׽���+*~����<�L��D�F��@FC��4Z�\\X��1I�����b/[\nM-��{6��}4��d>��Z�P*���aP��T�������ݏp��t\":�J��Z@�f�� ��_�t�1�C4�dzb�]S�x��m4�@�	LKў\0/���	�\03�i�zl�����^>y�2�xZ�i�{�K�`/z���Q����̥�J�������Өxgx��>C���G�3��Y��7H\"\Z�D�U��W+a�*@�\0i�`�tT��W����k?��[I�s.�έ�~�[��.A��A�<l.�_݂u�:�s�֭�惔��@Q��ˋ��������U\'\"\\�-�F7-�!�y�Pqk�/*kv��w@k?�+-�P���ƌd,_���T��I*�#\rE��H�ώ���[ߠi��֦f:�NP�2tۭ~|\r��/�������$~/cW~{�b\Z?w!f[;#��uם��f2��M?%{���1c�\"��6Qھ���G��4Q~m����\\�kV\'^OcW}���w�BVLb;�,D&Ҕ�~��o?B�	G�1>��8�=�#C�ǝ�����\Z���������{��sY^��(+�����n��Ȥ�ɋ��$,�B0M�zP���@�m��H��Q�q�;E�)A��ܠ.�d+Q�1�r��j?\\��L��r���^>x�\\?a酝4_p��B����͢���{�!�\"��Ɯ=������G�ZK�)���g�>��(2�As��#�nE�̳��Eu۫���{�Ǟ��`!n�6X���>�^�2��Ek)O���؇Υpͷp��D���I��t��6��r��>B���G�o}�\'��m�����ѵ2N��pB���I������$����Z�]t�b��E_�/�(5�D2R�n��4�0����Z��9!T�v�IH�=X��=�K�eU����>����ꢻ�i[�\n��`b� �(�ĉ���8�D� �H���Ƙ���<�+ iPPi���xuWWWս��{�9g�������������/��	��ק��3G����p7���ƛ�g�`���]����˴�cW����|�Kh�y����l�p\'b4y����1q�]9��?\n���������vV��<y�pi��[���)��$���9�������wP�^���\'y���x�M�6L��w9.�	`�3���4���n`�($�+�S�ݱ�@5�O���\"Vb=GC!Ռ�\'|T2+��¼����(r؞u�v��ڜ���<��ks���\0�����z�Vo�����,�76���Ysq}�	��wsʡ����߯�>�F��K~t���� 9H���$�� �|أw�M��������^1\"n����d���!V��}�e��5��.a��G��.�?��г#�G����[ʠ,h3�L�c��`y��\r��^��i�4P;�K,��}\Zve�����a��5Du,��ن�b	���|�4�:v��%�*hݬ������$Y��<z�g�{���Y�$M3�1�K��>N��;���o�\n��чi�y��=_#��aVR>���ױ���Ϝf��s�S����_���T���&>�7꧞ş~�[��밣%d�#W]�{g������?��a~��[<��L[��Hf�Z���V�ɅѸ�RQ�Z�r6Ⲃ���<�\"�+0\nZAYAӂk�dJ� �wܧZw1�ڀ��4Py�ɞxJ��QL� ,fJ��P�_� ��v�Ʈ~1	4\rH��R�N+�uSn<Rp��1���I֎c�Z��w�u�a�I��u\\Q�LL9A{��V0>�hK����[����,}�F������z�_N47w��x���z���<�㧶y�b�E;b�;���X*�&!�������7�TH�P�AHb�iI�d=�\"T����G3YQ,Ш W�~��f��j=�����${�_C\\��Or�$�1J\"0.鰥�`*aw\n�l�y����A;Tv���tP��-��\'/G5\\y�Uof����o�af�`�!��in׆T-��P��,��n�Q��Y�Kv�.2ך��x��om�85���M2$ֳN�8��M��\"#	5��V%��������1Bh���h��E������錥V#�b���r�J�QL����Ζ�Cg��6Ӻ�e�F���2m�͡�\nәBO1{<7�=יv\nF\"b[Lh���ǀK,&�$�<��\n��a�e�3D�m;$%M��VP��u�beA�R�|�¼�b��QKe��-;��4)ĆԁI�hض$У�#���ˮ)%�`H�)����%914�mU��y@`	\'�ĺ��]NT��~�\\���uZA�U�Dq[�Y�tA�+E�0���D-u���*z�2���5\n+#�40݄4v��#}��0,�R���R�T��fDWd��R�h�)�w�V����J;�y#��`�xM�f^,0��R����v���0\\�HiZ��)b#!Z�vCU�0Z\ro)� V�\"H;#-,�P�\Z��Yܾ�j֥J�g#�;����#��`���_&H;��\Z%��]�zJ��}\0�@����$)�|	���I�U4��~�o���V��6J����J?����=ʀP�)�m\'zlaml�̽��!���EB���0> 45l_R\\�a��]�`�{�9}�\"b����\\:��Z^@cd7_��n�$%�p&�\n-�B=ʺ���-��!C����DB�	�����\0�j�x��[\0\0\0\0IEND�B`�','image/png','stu','emp','2016-07-05 21:40:05',NULL,NULL,NULL);
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
