-- --------------------------------------------------------
-- ホスト:                          127.0.0.1
-- サーバーのバージョン:                   10.7.3-MariaDB - mariadb.org binary distribution
-- サーバー OS:                      Win64
-- HeidiSQL バージョン:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- gva のデータベース構造をダンプしています
CREATE DATABASE IF NOT EXISTS `gva` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `gva`;

--  テーブル gva.casbin_rule の構造をダンプしています
CREATE TABLE IF NOT EXISTS `casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.casbin_rule: ~168 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
REPLACE INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES
	(3, 'p', '888', '/api/createApi', 'POST', '', '', '', '', ''),
	(6, 'p', '888', '/api/deleteApi', 'POST', '', '', '', '', ''),
	(9, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '', '', ''),
	(8, 'p', '888', '/api/getAllApis', 'POST', '', '', '', '', ''),
	(5, 'p', '888', '/api/getApiById', 'POST', '', '', '', '', ''),
	(4, 'p', '888', '/api/getApiList', 'POST', '', '', '', '', ''),
	(7, 'p', '888', '/api/updateApi', 'POST', '', '', '', '', ''),
	(10, 'p', '888', '/authority/copyAuthority', 'POST', '', '', '', '', ''),
	(12, 'p', '888', '/authority/createAuthority', 'POST', '', '', '', '', ''),
	(13, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', '', '', ''),
	(14, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', '', '', ''),
	(15, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', '', '', ''),
	(11, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', '', '', ''),
	(89, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', '', '', ''),
	(88, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', '', '', ''),
	(87, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', '', '', ''),
	(62, 'p', '888', '/autoCode/createPackage', 'POST', '', '', '', '', ''),
	(65, 'p', '888', '/autoCode/createPlug', 'POST', '', '', '', '', ''),
	(59, 'p', '888', '/autoCode/createTemp', 'POST', '', '', '', '', ''),
	(64, 'p', '888', '/autoCode/delPackage', 'POST', '', '', '', '', ''),
	(60, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', '', '', ''),
	(57, 'p', '888', '/autoCode/getColumn', 'GET', '', '', '', '', ''),
	(53, 'p', '888', '/autoCode/getDB', 'GET', '', '', '', '', ''),
	(54, 'p', '888', '/autoCode/getMeta', 'POST', '', '', '', '', ''),
	(63, 'p', '888', '/autoCode/getPackage', 'POST', '', '', '', '', ''),
	(61, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', '', '', ''),
	(56, 'p', '888', '/autoCode/getTables', 'GET', '', '', '', '', ''),
	(66, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', '', '', ''),
	(55, 'p', '888', '/autoCode/preview', 'POST', '', '', '', '', ''),
	(58, 'p', '888', '/autoCode/rollback', 'POST', '', '', '', '', ''),
	(1, 'p', '888', '/base/login', 'POST', '', '', '', '', ''),
	(43, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', ''),
	(42, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', '', '', ''),
	(51, 'p', '888', '/customer/customer', 'DELETE', '', '', '', '', ''),
	(48, 'p', '888', '/customer/customer', 'GET', '', '', '', '', ''),
	(50, 'p', '888', '/customer/customer', 'POST', '', '', '', '', ''),
	(49, 'p', '888', '/customer/customer', 'PUT', '', '', '', '', ''),
	(52, 'p', '888', '/customer/customerList', 'GET', '', '', '', '', ''),
	(83, 'p', '888', '/email/emailTest', 'POST', '', '', '', '', ''),
	(36, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '', '', ''),
	(35, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '', '', ''),
	(39, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', ''),
	(40, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', ''),
	(34, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '', '', ''),
	(41, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', ''),
	(37, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '', '', ''),
	(38, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', ''),
	(44, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', ''),
	(18, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', '', '', ''),
	(20, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', '', '', ''),
	(22, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '', '', ''),
	(24, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', '', '', ''),
	(19, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '', '', ''),
	(16, 'p', '888', '/menu/getMenu', 'POST', '', '', '', '', ''),
	(21, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', '', '', ''),
	(17, 'p', '888', '/menu/getMenuList', 'POST', '', '', '', '', ''),
	(23, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', '', '', ''),
	(85, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '', '', ''),
	(86, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '', '', ''),
	(84, 'p', '888', '/simpleUploader/upload', 'POST', '', '', '', '', ''),
	(75, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '', '', ''),
	(76, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '', '', ''),
	(72, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '', '', ''),
	(74, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '', '', ''),
	(73, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '', '', ''),
	(69, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '', '', ''),
	(71, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '', '', ''),
	(67, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '', '', ''),
	(70, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '', '', ''),
	(68, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '', '', ''),
	(79, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '', '', ''),
	(81, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '', '', ''),
	(82, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '', '', ''),
	(77, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '', '', ''),
	(80, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '', '', ''),
	(78, 'p', '888', '/sysOperationRecord/updateSysOperationRecord', 'PUT', '', '', '', '', ''),
	(47, 'p', '888', '/system/getServerInfo', 'POST', '', '', '', '', ''),
	(45, 'p', '888', '/system/getSystemConfig', 'POST', '', '', '', '', ''),
	(46, 'p', '888', '/system/setSystemConfig', 'POST', '', '', '', '', ''),
	(2, 'p', '888', '/user/admin_register', 'POST', '', '', '', '', ''),
	(30, 'p', '888', '/user/changePassword', 'POST', '', '', '', '', ''),
	(29, 'p', '888', '/user/deleteUser', 'DELETE', '', '', '', '', ''),
	(25, 'p', '888', '/user/getUserInfo', 'GET', '', '', '', '', ''),
	(28, 'p', '888', '/user/getUserList', 'POST', '', '', '', '', ''),
	(33, 'p', '888', '/user/resetPassword', 'POST', '', '', '', '', ''),
	(27, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', '', '', ''),
	(32, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', '', '', ''),
	(31, 'p', '888', '/user/setUserAuthority', 'POST', '', '', '', '', ''),
	(26, 'p', '888', '/user/setUserInfo', 'PUT', '', '', '', '', ''),
	(92, 'p', '8881', '/api/createApi', 'POST', '', '', '', '', ''),
	(95, 'p', '8881', '/api/deleteApi', 'POST', '', '', '', '', ''),
	(97, 'p', '8881', '/api/getAllApis', 'POST', '', '', '', '', ''),
	(94, 'p', '8881', '/api/getApiById', 'POST', '', '', '', '', ''),
	(93, 'p', '8881', '/api/getApiList', 'POST', '', '', '', '', ''),
	(96, 'p', '8881', '/api/updateApi', 'POST', '', '', '', '', ''),
	(98, 'p', '8881', '/authority/createAuthority', 'POST', '', '', '', '', ''),
	(99, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', '', '', ''),
	(100, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', '', '', ''),
	(101, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', '', '', ''),
	(90, 'p', '8881', '/base/login', 'POST', '', '', '', '', ''),
	(119, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', ''),
	(118, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', '', '', ''),
	(125, 'p', '8881', '/customer/customer', 'DELETE', '', '', '', '', ''),
	(126, 'p', '8881', '/customer/customer', 'GET', '', '', '', '', ''),
	(123, 'p', '8881', '/customer/customer', 'POST', '', '', '', '', ''),
	(124, 'p', '8881', '/customer/customer', 'PUT', '', '', '', '', ''),
	(127, 'p', '8881', '/customer/customerList', 'GET', '', '', '', '', ''),
	(116, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', ''),
	(117, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', ''),
	(115, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', ''),
	(114, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', ''),
	(120, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', ''),
	(104, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', '', '', ''),
	(106, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '', '', ''),
	(108, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '', '', ''),
	(110, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '', '', ''),
	(105, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '', '', ''),
	(102, 'p', '8881', '/menu/getMenu', 'POST', '', '', '', '', ''),
	(107, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '', '', ''),
	(103, 'p', '8881', '/menu/getMenuList', 'POST', '', '', '', '', ''),
	(109, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '', '', ''),
	(121, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', '', '', ''),
	(122, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', '', '', ''),
	(91, 'p', '8881', '/user/admin_register', 'POST', '', '', '', '', ''),
	(111, 'p', '8881', '/user/changePassword', 'POST', '', '', '', '', ''),
	(128, 'p', '8881', '/user/getUserInfo', 'GET', '', '', '', '', ''),
	(112, 'p', '8881', '/user/getUserList', 'POST', '', '', '', '', ''),
	(113, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', '', '', ''),
	(131, 'p', '9528', '/api/createApi', 'POST', '', '', '', '', ''),
	(134, 'p', '9528', '/api/deleteApi', 'POST', '', '', '', '', ''),
	(136, 'p', '9528', '/api/getAllApis', 'POST', '', '', '', '', ''),
	(133, 'p', '9528', '/api/getApiById', 'POST', '', '', '', '', ''),
	(132, 'p', '9528', '/api/getApiList', 'POST', '', '', '', '', ''),
	(135, 'p', '9528', '/api/updateApi', 'POST', '', '', '', '', ''),
	(137, 'p', '9528', '/authority/createAuthority', 'POST', '', '', '', '', ''),
	(138, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', '', '', ''),
	(139, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', '', '', ''),
	(140, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', '', '', ''),
	(167, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', '', '', ''),
	(129, 'p', '9528', '/base/login', 'POST', '', '', '', '', ''),
	(158, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', ''),
	(157, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', '', '', ''),
	(165, 'p', '9528', '/customer/customer', 'DELETE', '', '', '', '', ''),
	(163, 'p', '9528', '/customer/customer', 'GET', '', '', '', '', ''),
	(164, 'p', '9528', '/customer/customer', 'POST', '', '', '', '', ''),
	(162, 'p', '9528', '/customer/customer', 'PUT', '', '', '', '', ''),
	(166, 'p', '9528', '/customer/customerList', 'GET', '', '', '', '', ''),
	(155, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', ''),
	(156, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', ''),
	(154, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', ''),
	(153, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', ''),
	(159, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', ''),
	(143, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', '', '', ''),
	(145, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '', '', ''),
	(147, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '', '', ''),
	(149, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '', '', ''),
	(144, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '', '', ''),
	(141, 'p', '9528', '/menu/getMenu', 'POST', '', '', '', '', ''),
	(146, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '', '', ''),
	(142, 'p', '9528', '/menu/getMenuList', 'POST', '', '', '', '', ''),
	(148, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '', '', ''),
	(160, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', '', '', ''),
	(161, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', '', '', ''),
	(130, 'p', '9528', '/user/admin_register', 'POST', '', '', '', '', ''),
	(150, 'p', '9528', '/user/changePassword', 'POST', '', '', '', '', ''),
	(168, 'p', '9528', '/user/getUserInfo', 'GET', '', '', '', '', ''),
	(151, 'p', '9528', '/user/getUserList', 'POST', '', '', '', '', ''),
	(152, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '', '', '');
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;

--  テーブル gva.exa_customers の構造をダンプしています
CREATE TABLE IF NOT EXISTS `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.exa_customers: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `exa_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_customers` ENABLE KEYS */;

--  テーブル gva.exa_files の構造をダンプしています
CREATE TABLE IF NOT EXISTS `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.exa_files: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `exa_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_files` ENABLE KEYS */;

--  テーブル gva.exa_file_chunks の構造をダンプしています
CREATE TABLE IF NOT EXISTS `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.exa_file_chunks: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `exa_file_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_file_chunks` ENABLE KEYS */;

--  テーブル gva.exa_file_upload_and_downloads の構造をダンプしています
CREATE TABLE IF NOT EXISTS `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.exa_file_upload_and_downloads: ~3 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` DISABLE KEYS */;
REPLACE INTO `exa_file_upload_and_downloads` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `url`, `tag`, `key`) VALUES
	(1, '2023-03-11 10:53:51.738', '2023-03-11 10:53:51.738', NULL, '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png'),
	(2, '2023-03-11 10:53:51.738', '2023-03-11 10:53:51.738', NULL, 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png'),
	(3, '2023-03-11 11:56:26.646', '2023-03-11 11:56:26.646', NULL, 'logo2.PNG', 'uploads/file/1a30804f0ba63955ccefb2d6470b33f4_20230311115626.PNG', 'PNG', '1a30804f0ba63955ccefb2d6470b33f4_20230311115626.PNG');
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` ENABLE KEYS */;

--  テーブル gva.jwt_blacklists の構造をダンプしています
CREATE TABLE IF NOT EXISTS `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text DEFAULT NULL COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.jwt_blacklists: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `jwt_blacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `jwt_blacklists` ENABLE KEYS */;

--  テーブル gva.sys_apis の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_apis: ~95 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_apis` DISABLE KEYS */;
REPLACE INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES
	(1, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/base/login', '用户登录(必选)', 'base', 'POST'),
	(2, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST'),
	(3, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE'),
	(4, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/admin_register', '用户注册', '系统用户', 'POST'),
	(5, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST'),
	(6, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT'),
	(7, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT'),
	(8, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET'),
	(9, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST'),
	(10, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST'),
	(11, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST'),
	(12, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST'),
	(13, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/createApi', '创建api', 'api', 'POST'),
	(14, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/deleteApi', '删除Api', 'api', 'POST'),
	(15, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/updateApi', '更新Api', 'api', 'POST'),
	(16, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/getApiList', '获取api列表', 'api', 'POST'),
	(17, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST'),
	(18, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST'),
	(19, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE'),
	(20, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST'),
	(21, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST'),
	(22, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST'),
	(23, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT'),
	(24, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST'),
	(25, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST'),
	(26, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST'),
	(27, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST'),
	(28, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST'),
	(29, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST'),
	(30, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST'),
	(31, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST'),
	(32, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST'),
	(33, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST'),
	(34, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST'),
	(35, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST'),
	(36, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST'),
	(37, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET'),
	(38, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST'),
	(39, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST'),
	(40, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST'),
	(41, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/upload', '文件上传示例', '文件上传与下载', 'POST'),
	(42, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST'),
	(43, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST'),
	(44, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST'),
	(45, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST'),
	(46, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST'),
	(47, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST'),
	(48, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/customer/customer', '更新客户', '客户', 'PUT'),
	(49, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/customer/customer', '创建客户', '客户', 'POST'),
	(50, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/customer/customer', '删除客户', '客户', 'DELETE'),
	(51, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/customer/customer', '获取单一客户', '客户', 'GET'),
	(52, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET'),
	(53, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET'),
	(54, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET'),
	(55, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST'),
	(56, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST'),
	(57, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET'),
	(58, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/createPlug', '自动创建插件包', '代码生成器', 'POST'),
	(59, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST'),
	(60, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/createPackage', '生成包(package)', '包（pkg）生成器', 'POST'),
	(61, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getPackage', '获取所有包(package)', '包（pkg）生成器', 'POST'),
	(62, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/delPackage', '删除包(package)', '包（pkg）生成器', 'POST'),
	(63, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST'),
	(64, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST'),
	(65, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST'),
	(66, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST'),
	(67, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT'),
	(68, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST'),
	(69, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE'),
	(70, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET'),
	(71, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET'),
	(72, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST'),
	(73, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE'),
	(74, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT'),
	(75, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典', '系统字典', 'GET'),
	(76, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET'),
	(77, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST'),
	(78, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET'),
	(79, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET'),
	(80, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE'),
	(81, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE'),
	(82, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST'),
	(83, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET'),
	(84, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET'),
	(85, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST'),
	(86, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/email/emailSend', '发送邮件示例', 'email', 'POST'),
	(87, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST'),
	(88, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST'),
	(89, '2023-03-11 10:53:51.484', '2023-03-11 10:53:51.484', NULL, '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST'),
	(90, '2023-03-11 12:14:52.879', '2023-03-11 12:14:52.879', NULL, '/todos/createTodos', '新增todos表', 'todos', 'POST'),
	(91, '2023-03-11 12:14:52.889', '2023-03-11 12:14:52.889', NULL, '/todos/deleteTodos', '删除todos表', 'todos', 'DELETE'),
	(92, '2023-03-11 12:14:52.891', '2023-03-11 12:14:52.891', NULL, '/todos/deleteTodosByIds', '批量删除todos表', 'todos', 'DELETE'),
	(93, '2023-03-11 12:14:52.892', '2023-03-11 12:14:52.892', NULL, '/todos/updateTodos', '更新todos表', 'todos', 'PUT'),
	(94, '2023-03-11 12:14:52.894', '2023-03-11 12:14:52.894', NULL, '/todos/findTodos', '根据ID获取todos表', 'todos', 'GET'),
	(95, '2023-03-11 12:14:52.896', '2023-03-11 12:14:52.896', NULL, '/todos/getTodosList', '获取todos表列表', 'todos', 'GET');
/*!40000 ALTER TABLE `sys_apis` ENABLE KEYS */;

--  テーブル gva.sys_authorities の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9529 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_authorities: ~3 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_authorities` DISABLE KEYS */;
REPLACE INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`) VALUES
	('2023-03-11 10:53:51.505', '2023-03-11 10:53:51.721', NULL, 888, '普通用户', 0, 'dashboard'),
	('2023-03-11 10:53:51.505', '2023-03-11 10:53:51.733', NULL, 8881, '普通用户子角色', 888, 'dashboard'),
	('2023-03-11 10:53:51.505', '2023-03-11 10:53:51.727', NULL, 9528, '测试角色', 0, 'dashboard');
/*!40000 ALTER TABLE `sys_authorities` ENABLE KEYS */;

--  テーブル gva.sys_authority_btns の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_authority_btns` (
  `authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_authority_btns: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_authority_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_authority_btns` ENABLE KEYS */;

--  テーブル gva.sys_authority_menus の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_authority_menus: ~47 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_authority_menus` DISABLE KEYS */;
REPLACE INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES
	(1, 888),
	(1, 8881),
	(1, 9528),
	(2, 888),
	(2, 8881),
	(2, 9528),
	(3, 888),
	(4, 888),
	(4, 8881),
	(5, 888),
	(5, 8881),
	(6, 888),
	(6, 8881),
	(7, 888),
	(7, 8881),
	(8, 888),
	(8, 8881),
	(8, 9528),
	(9, 888),
	(9, 8881),
	(10, 888),
	(10, 8881),
	(11, 888),
	(11, 8881),
	(12, 888),
	(13, 888),
	(13, 8881),
	(14, 888),
	(14, 8881),
	(15, 888),
	(15, 8881),
	(16, 888),
	(16, 8881),
	(17, 888),
	(17, 8881),
	(18, 888),
	(19, 888),
	(20, 888),
	(21, 888),
	(22, 888),
	(23, 888),
	(24, 888),
	(25, 888),
	(26, 888),
	(27, 888),
	(28, 888),
	(29, 888);
/*!40000 ALTER TABLE `sys_authority_menus` ENABLE KEYS */;

--  テーブル gva.sys_auto_codes の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_auto_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) DEFAULT NULL COMMENT '包名',
  `label` varchar(191) DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_auto_codes: ~2 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_auto_codes` DISABLE KEYS */;
REPLACE INTO `sys_auto_codes` (`id`, `created_at`, `updated_at`, `deleted_at`, `package_name`, `label`, `desc`) VALUES
	(1, '2023-03-11 11:47:07.321', '2023-03-11 11:47:07.321', NULL, 'gin', '', ''),
	(2, '2023-03-11 11:47:07.332', '2023-03-11 11:47:07.332', NULL, 'gorm', '', '');
/*!40000 ALTER TABLE `sys_auto_codes` ENABLE KEYS */;

--  テーブル gva.sys_auto_code_histories の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) DEFAULT NULL,
  `business_db` varchar(191) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text DEFAULT NULL,
  `auto_code_path` text DEFAULT NULL,
  `injection_meta` text DEFAULT NULL,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_auto_code_histories: ~1 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_auto_code_histories` DISABLE KEYS */;
REPLACE INTO `sys_auto_code_histories` (`id`, `created_at`, `updated_at`, `deleted_at`, `package`, `business_db`, `table_name`, `request_meta`, `auto_code_path`, `injection_meta`, `struct_name`, `struct_cn_name`, `api_ids`, `flag`) VALUES
	(1, '2023-03-11 12:14:57.303', '2023-03-11 12:14:57.303', NULL, 'gin', '', 'todos', '{"structName":"Todos","tableName":"todos","packageName":"todos","humpPackageName":"todos","abbreviation":"todos","description":"todos表","autoCreateApiToSql":true,"autoCreateResource":false,"autoMoveFile":true,"businessDB":"","fields":[{"fieldName":"Title","fieldDesc":"title字段","fieldType":"string","fieldJson":"title","dataTypeLong":"255","comment":"","columnName":"title","fieldSearchType":"","dictType":"","require":false,"errorText":"","clearable":true,"sort":false},{"fieldName":"Status","fieldDesc":"status字段","fieldType":"bool","fieldJson":"status","dataTypeLong":"","comment":"","columnName":"status","fieldSearchType":"","dictType":"","require":false,"errorText":"","clearable":true,"sort":false}],"HasTimer":false,"package":"gin"}', 'C:\\gin-vue-admin\\server\\api\\v1\\gin\\todos.go;C:\\gin-vue-admin\\server\\model\\gin\\todos.go;C:\\gin-vue-admin\\server\\model\\gin\\request\\todos.go;C:\\gin-vue-admin\\server\\router\\gin\\todos.go;C:\\gin-vue-admin\\server\\service\\gin\\todos.go;C:\\gin-vue-admin\\web\\src\\api\\todos.js;C:\\gin-vue-admin\\web\\src\\view\\todos\\todosForm.vue;C:\\gin-vue-admin\\web\\src\\view\\todos\\todos.vue;', 'C:\\gin-vue-admin\\server\\api\\v1\\gin\\enter.go@ApiGroup@TodosApi;C:\\gin-vue-admin\\server\\router\\gin\\enter.go@RouterGroup@TodosRouter;C:\\gin-vue-admin\\server\\service\\gin\\enter.go@ServiceGroup@TodosService;', 'Todos', 'todos表', '90;91;92;93;94;95;', 0);
/*!40000 ALTER TABLE `sys_auto_code_histories` ENABLE KEYS */;

--  テーブル gva.sys_base_menus の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_base_menus: ~29 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_base_menus` DISABLE KEYS */;
REPLACE INTO `sys_base_menus` (`id`, `created_at`, `updated_at`, `deleted_at`, `menu_level`, `parent_id`, `path`, `name`, `hidden`, `component`, `sort`, `active_name`, `keep_alive`, `default_menu`, `title`, `icon`, `close_tab`) VALUES
	(1, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, '', 0, 0, '仪表盘', 'odometer', 0),
	(2, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'about', 'about', 0, 'view/about/index.vue', 9, '', 0, 0, '关于我们', 'info-filled', 0),
	(3, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, '', 0, 0, '超级管理员', 'user', 0),
	(4, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, '', 0, 0, '角色管理', 'avatar', 0),
	(5, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, '', 1, 0, '菜单管理', 'tickets', 0),
	(6, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, '', 1, 0, 'api管理', 'platform', 0),
	(7, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, '', 0, 0, '用户管理', 'coordinate', 0),
	(8, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, '', 0, 0, '字典管理', 'notebook', 0),
	(9, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'dictionaryDetail/:id', 'dictionaryDetail', 1, 'view/superAdmin/dictionary/sysDictionaryDetail.vue', 1, 'dictionary', 0, 0, '字典详情-${id}', 'list', 0),
	(10, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '3', 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, '', 0, 0, '操作历史', 'pie-chart', 0),
	(11, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'person', 'person', 1, 'view/person/person.vue', 4, '', 0, 0, '个人信息', 'message', 0),
	(12, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'example', 'example', 0, 'view/example/index.vue', 7, '', 0, 0, '示例文件', 'management', 0),
	(13, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '12', 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, '', 0, 0, '媒体库（上传下载）', 'upload', 0),
	(14, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '12', 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, '', 0, 0, '断点续传', 'upload-filled', 0),
	(15, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '12', 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, '', 0, 0, '客户列表（资源示例）', 'avatar', 0),
	(16, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, '', 0, 0, '系统工具', 'tools', 0),
	(17, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, '', 1, 0, '代码生成器', 'cpu', 0),
	(18, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 2, '', 1, 0, '表单生成器', 'magic-stick', 0),
	(19, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'system', 'system', 0, 'view/systemTools/system/system.vue', 3, '', 0, 0, '系统配置', 'operation', 0),
	(20, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'autoCodeAdmin', 'autoCodeAdmin', 0, 'view/systemTools/autoCodeAdmin/index.vue', 1, '', 0, 0, '自动化代码管理', 'magic-stick', 0),
	(21, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'autoCodeEdit/:id', 'autoCodeEdit', 1, 'view/systemTools/autoCode/index.vue', 0, '', 0, 0, '自动化代码-${id}', 'magic-stick', 0),
	(22, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '16', 'autoPkg', 'autoPkg', 0, 'view/systemTools/autoPkg/autoPkg.vue', 0, '', 0, 0, '自动化package', 'folder', 0),
	(23, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, '', 0, 0, '官方网站', 'home-filled', 0),
	(24, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'state', 'state', 0, 'view/system/state.vue', 8, '', 0, 0, '服务器状态', 'cloudy', 0),
	(25, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '0', 'plugin', 'plugin', 0, 'view/routerHolder.vue', 6, '', 0, 0, '插件系统', 'cherry', 0),
	(26, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '25', 'https://plugin.gin-vue-admin.com/', 'https://plugin.gin-vue-admin.com/', 0, 'https://plugin.gin-vue-admin.com/', 0, '', 0, 0, '插件市场', 'shop', 0),
	(27, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '25', 'installPlugin', 'installPlugin', 0, 'view/systemTools/installPlugin/index.vue', 1, '', 0, 0, '插件安装', 'box', 0),
	(28, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '25', 'autoPlug', 'autoPlug', 0, 'view/systemTools/autoPlug/autoPlug.vue', 2, '', 0, 0, '插件模板', 'folder', 0),
	(29, '2023-03-11 10:53:51.554', '2023-03-11 10:53:51.554', NULL, 0, '25', 'plugin-email', 'plugin-email', 0, 'plugin/email/view/index.vue', 3, '', 0, 0, '邮件插件', 'message', 0);
/*!40000 ALTER TABLE `sys_base_menus` ENABLE KEYS */;

--  テーブル gva.sys_base_menu_btns の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_base_menu_btns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_base_menu_btns: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_base_menu_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_btns` ENABLE KEYS */;

--  テーブル gva.sys_base_menu_parameters の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_base_menu_parameters: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_base_menu_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_parameters` ENABLE KEYS */;

--  テーブル gva.sys_data_authority_id の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_data_authority_id` (
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_data_authority_id: ~5 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_data_authority_id` DISABLE KEYS */;
REPLACE INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES
	(888, 888),
	(888, 8881),
	(888, 9528),
	(9528, 8881),
	(9528, 9528);
/*!40000 ALTER TABLE `sys_data_authority_id` ENABLE KEYS */;

--  テーブル gva.sys_dictionaries の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_dictionaries: ~6 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
REPLACE INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES
	(1, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.530', NULL, '性别', 'gender', 1, '性别字典'),
	(2, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.533', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型'),
	(3, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.536', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型'),
	(4, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.539', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型'),
	(5, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.546', NULL, '数据库字符串', 'string', 1, '数据库字符串'),
	(6, '2023-03-11 10:53:51.523', '2023-03-11 10:53:51.548', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;

--  テーブル gva.sys_dictionary_details の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_dictionary_details: ~25 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_dictionary_details` DISABLE KEYS */;
REPLACE INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES
	(1, '2023-03-11 10:53:51.531', '2023-03-11 10:53:51.531', NULL, '男', 1, 1, 1, 1),
	(2, '2023-03-11 10:53:51.531', '2023-03-11 10:53:51.531', NULL, '女', 2, 1, 2, 1),
	(3, '2023-03-11 10:53:51.534', '2023-03-11 10:53:51.534', NULL, 'smallint', 1, 1, 1, 2),
	(4, '2023-03-11 10:53:51.534', '2023-03-11 10:53:51.534', NULL, 'mediumint', 2, 1, 2, 2),
	(5, '2023-03-11 10:53:51.534', '2023-03-11 10:53:51.534', NULL, 'int', 3, 1, 3, 2),
	(6, '2023-03-11 10:53:51.534', '2023-03-11 10:53:51.534', NULL, 'bigint', 4, 1, 4, 2),
	(7, '2023-03-11 10:53:51.537', '2023-03-11 10:53:51.537', NULL, 'date', 0, 1, 0, 3),
	(8, '2023-03-11 10:53:51.537', '2023-03-11 10:53:51.537', NULL, 'time', 1, 1, 1, 3),
	(9, '2023-03-11 10:53:51.537', '2023-03-11 10:53:51.537', NULL, 'year', 2, 1, 2, 3),
	(10, '2023-03-11 10:53:51.537', '2023-03-11 10:53:51.537', NULL, 'datetime', 3, 1, 3, 3),
	(11, '2023-03-11 10:53:51.537', '2023-03-11 10:53:51.537', NULL, 'timestamp', 5, 1, 5, 3),
	(12, '2023-03-11 10:53:51.544', '2023-03-11 10:53:51.544', NULL, 'float', 0, 1, 0, 4),
	(13, '2023-03-11 10:53:51.544', '2023-03-11 10:53:51.544', NULL, 'double', 1, 1, 1, 4),
	(14, '2023-03-11 10:53:51.544', '2023-03-11 10:53:51.544', NULL, 'decimal', 2, 1, 2, 4),
	(15, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'char', 0, 1, 0, 5),
	(16, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'varchar', 1, 1, 1, 5),
	(17, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'tinyblob', 2, 1, 2, 5),
	(18, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'tinytext', 3, 1, 3, 5),
	(19, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'text', 4, 1, 4, 5),
	(20, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'blob', 5, 1, 5, 5),
	(21, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'mediumblob', 6, 1, 6, 5),
	(22, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'mediumtext', 7, 1, 7, 5),
	(23, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'longblob', 8, 1, 8, 5),
	(24, '2023-03-11 10:53:51.546', '2023-03-11 10:53:51.546', NULL, 'longtext', 9, 1, 9, 5),
	(25, '2023-03-11 10:53:51.549', '2023-03-11 10:53:51.549', NULL, 'tinyint', 0, 1, 0, 6);
/*!40000 ALTER TABLE `sys_dictionary_details` ENABLE KEYS */;

--  テーブル gva.sys_operation_records の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` text DEFAULT NULL COMMENT '请求Body',
  `resp` text DEFAULT NULL COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_operation_records: ~1 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_operation_records` DISABLE KEYS */;
REPLACE INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES
	(1, '2023-03-11 11:55:36.103', '2023-03-11 11:55:36.103', NULL, '127.0.0.1', 'POST', '/system/getServerInfo', 200, 373497700, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', '', '', '{"code":0,"data":{"server":{"os":{"goos":"windows","numCpu":4,"compiler":"gc","goVersion":"go1.20.2","numGoroutine":9},"cpu":{"cpus":[46.666666666666664,78.57142857142857,73.33333333333333,42.857142857142854],"cores":4},"ram":{"usedMb":7064,"totalMb":8110,"usedPercent":87},"disk":{"usedMb":179301,"usedGb":175,"totalMb":243414,"totalGb":237,"usedPercent":73}}},"msg":"获取成功"}', 1);
/*!40000 ALTER TABLE `sys_operation_records` ENABLE KEYS */;

--  テーブル gva.sys_users の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` bigint(20) unsigned DEFAULT 888 COMMENT '用户角色ID',
  `phone` varchar(191) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint(20) DEFAULT 1 COMMENT '用户是否被冻结 1正常 2冻结',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_username` (`username`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_users: ~2 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
REPLACE INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `side_mode`, `header_img`, `base_color`, `active_color`, `authority_id`, `phone`, `email`, `enable`) VALUES
	(1, '2023-03-11 10:53:51.709', '2023-03-11 10:53:51.712', NULL, '2e6cef36-9713-4cde-a098-b76a65605fd3', 'admin', '$2a$10$65Uk8dwMk9QnHKHg6/eFteDaaeg5eIcyo4X5NVAkFz1bOyRszGij6', 'Mr.奇淼', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', 888, '17611111111', '333333333@qq.com', 1),
	(2, '2023-03-11 10:53:51.709', '2023-03-11 10:53:51.715', NULL, '4b620de0-38bd-4b75-9b95-5a5f5622a1d7', 'a303176530', '$2a$10$yym7pblWI1TLZaRGjpNZEekNBjxoWAKQ9p1d7GUP..pklKn0t3uXq', '用户1', 'dark', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', '#fff', '#1890ff', 9528, '17611111111', '333333333@qq.com', 1);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;

--  テーブル gva.sys_user_authority の構造をダンプしています
CREATE TABLE IF NOT EXISTS `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- テーブル gva.sys_user_authority: ~4 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `sys_user_authority` DISABLE KEYS */;
REPLACE INTO `sys_user_authority` (`sys_user_id`, `sys_authority_authority_id`) VALUES
	(1, 888),
	(1, 8881),
	(1, 9528),
	(2, 888);
/*!40000 ALTER TABLE `sys_user_authority` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
