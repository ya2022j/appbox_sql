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


-- bear_gin_db のデータベース構造をダンプしています
CREATE DATABASE IF NOT EXISTS `bear_gin_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `bear_gin_db`;

--  テーブル bear_gin_db.admin の構造をダンプしています
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '昵称',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_used` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用 1:是  -1:否',
  `is_deleted` tinyint(1) NOT NULL DEFAULT -1 COMMENT '是否删除 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';

-- テーブル bear_gin_db.admin: ~1 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`id`, `username`, `password`, `nickname`, `mobile`, `is_used`, `is_deleted`, `created_at`, `created_user`, `updated_at`, `updated_user`) VALUES
	(1, 'admin', 'f78382de80cf583cf854bbac0b6e796fbde36fe2739ca4ae072637010f179cb0', '管理员', '13888888888', 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', '');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--  テーブル bear_gin_db.admin_menu の構造をダンプしています
CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `menu_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '菜单栏ID',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `idx_admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='管理员菜单栏表';

-- テーブル bear_gin_db.admin_menu: ~25 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
REPLACE INTO `admin_menu` (`id`, `admin_id`, `menu_id`, `created_at`, `created_user`) VALUES
	(1, 1, 16, '2023-03-10 21:30:57', 'init'),
	(2, 1, 21, '2023-03-10 21:30:57', 'init'),
	(3, 1, 20, '2023-03-10 21:30:57', 'init'),
	(4, 1, 19, '2023-03-10 21:30:57', 'init'),
	(5, 1, 18, '2023-03-10 21:30:57', 'init'),
	(6, 1, 17, '2023-03-10 21:30:57', 'init'),
	(7, 1, 13, '2023-03-10 21:30:57', 'init'),
	(8, 1, 15, '2023-03-10 21:30:57', 'init'),
	(9, 1, 14, '2023-03-10 21:30:57', 'init'),
	(10, 1, 10, '2023-03-10 21:30:57', 'init'),
	(11, 1, 12, '2023-03-10 21:30:57', 'init'),
	(12, 1, 11, '2023-03-10 21:30:57', 'init'),
	(13, 1, 7, '2023-03-10 21:30:57', 'init'),
	(14, 1, 9, '2023-03-10 21:30:57', 'init'),
	(15, 1, 8, '2023-03-10 21:30:57', 'init'),
	(16, 1, 4, '2023-03-10 21:30:57', 'init'),
	(17, 1, 6, '2023-03-10 21:30:57', 'init'),
	(18, 1, 5, '2023-03-10 21:30:57', 'init'),
	(19, 1, 1, '2023-03-10 21:30:57', 'init'),
	(20, 1, 3, '2023-03-10 21:30:57', 'init'),
	(21, 1, 2, '2023-03-10 21:30:57', 'init'),
	(22, 1, 22, '2023-03-10 21:30:57', 'init'),
	(23, 1, 23, '2023-03-10 21:30:57', 'init'),
	(24, 1, 24, '2023-03-10 21:30:57', 'init'),
	(25, 1, 25, '2023-03-10 21:30:57', 'init');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

--  テーブル bear_gin_db.authorized の構造をダンプしています
CREATE TABLE IF NOT EXISTS `authorized` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_key` varchar(32) NOT NULL DEFAULT '' COMMENT '调用方key',
  `business_secret` varchar(60) NOT NULL DEFAULT '' COMMENT '调用方secret',
  `business_developer` varchar(60) NOT NULL DEFAULT '' COMMENT '调用方对接人',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_used` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用 1:是  -1:否',
  `is_deleted` tinyint(1) NOT NULL DEFAULT -1 COMMENT '是否删除 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_business_key` (`business_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='已授权的调用方表';

-- テーブル bear_gin_db.authorized: ~1 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `authorized` DISABLE KEYS */;
REPLACE INTO `authorized` (`id`, `business_key`, `business_secret`, `business_developer`, `remark`, `is_used`, `is_deleted`, `created_at`, `created_user`, `updated_at`, `updated_user`) VALUES
	(1, 'admin', '12878dd962115106db6d', '管理员', '管理面板调用', 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', '');
/*!40000 ALTER TABLE `authorized` ENABLE KEYS */;

--  テーブル bear_gin_db.authorized_api の構造をダンプしています
CREATE TABLE IF NOT EXISTS `authorized_api` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `business_key` varchar(32) NOT NULL DEFAULT '' COMMENT '调用方key',
  `method` varchar(30) NOT NULL DEFAULT '' COMMENT '请求方式',
  `api` varchar(100) NOT NULL DEFAULT '' COMMENT '请求地址',
  `is_deleted` tinyint(1) NOT NULL DEFAULT -1 COMMENT '是否删除 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='已授权接口地址表';

-- テーブル bear_gin_db.authorized_api: ~5 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `authorized_api` DISABLE KEYS */;
REPLACE INTO `authorized_api` (`id`, `business_key`, `method`, `api`, `is_deleted`, `created_at`, `created_user`, `updated_at`, `updated_user`) VALUES
	(1, 'admin', 'GET', '/api/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(2, 'admin', 'POST', '/api/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(3, 'admin', 'PUT', '/api/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(4, 'admin', 'DELETE', '/api/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(5, 'admin', 'PATCH', '/api/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', '');
/*!40000 ALTER TABLE `authorized_api` ENABLE KEYS */;

--  テーブル bear_gin_db.cron_task の構造をダンプしています
CREATE TABLE IF NOT EXISTS `cron_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `spec` varchar(64) NOT NULL DEFAULT '' COMMENT 'crontab 表达式',
  `command` varchar(255) NOT NULL DEFAULT '' COMMENT '执行命令',
  `protocol` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '执行方式 1:shell 2:http',
  `http_method` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT 'http 请求方式 1:get 2:post',
  `timeout` int(11) unsigned NOT NULL DEFAULT 60 COMMENT '超时时间(单位:秒)',
  `retry_times` tinyint(1) NOT NULL DEFAULT 3 COMMENT '重试次数',
  `retry_interval` int(11) NOT NULL DEFAULT 60 COMMENT '重试间隔(单位:秒)',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '执行结束是否通知 1:不通知 2:失败通知 3:结束通知 4:结果关键字匹配通知',
  `notify_type` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '通知类型 1:邮件 2:webhook',
  `notify_receiver_email` varchar(255) NOT NULL DEFAULT '' COMMENT '通知者邮箱地址(多个用,分割)',
  `notify_keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '通知匹配关键字(多个用,分割)',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `is_used` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='后台任务表';

-- テーブル bear_gin_db.cron_task: ~0 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `cron_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_task` ENABLE KEYS */;

--  テーブル bear_gin_db.menu の構造をダンプしています
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '父类ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `link` varchar(100) NOT NULL DEFAULT '' COMMENT '链接地址',
  `icon` varchar(60) NOT NULL DEFAULT '' COMMENT '图标',
  `level` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '菜单类型 1:一级菜单 2:二级菜单',
  `sort` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '排序',
  `is_used` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用 1:是 -1:否',
  `is_deleted` tinyint(1) NOT NULL DEFAULT -1 COMMENT '是否删除 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='左侧菜单栏表';

-- テーブル bear_gin_db.menu: ~25 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id`, `pid`, `name`, `link`, `icon`, `level`, `sort`, `is_used`, `is_deleted`, `created_at`, `created_user`, `updated_at`, `updated_user`) VALUES
	(1, 0, '配置信息', '', 'mdi-settings-box', 1, 10, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(2, 1, '告警邮箱', '/config/email', '', 2, 101, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(3, 1, '错误码', '/config/code', '', 2, 102, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(4, 0, '代码生成器', '', 'mdi-code-not-equal-variant', 1, 20, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(5, 4, '生成数据表 CURD', '/generator/gorm', '', 2, 201, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(6, 4, '生成控制器方法', '/generator/handler', '', 2, 202, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(7, 0, '授权调用方', '', 'mdi-playlist-check', 1, 30, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(8, 7, '调用方', '/authorized/list', '', 2, 301, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(9, 7, '使用说明', '/authorized/demo', '', 2, 302, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(10, 0, '系统管理员', '', 'mdi-account', 1, 50, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(11, 10, '管理员', '/admin/list', '', 2, 501, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(12, 10, '菜单管理', '/admin/menu', '', 2, 502, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(13, 0, '查询小助手', '', 'mdi-database-search', 1, 60, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(14, 13, '查询缓存', '/tool/cache', '', 2, 601, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(15, 13, '查询数据', '/tool/data', '', 2, 602, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(16, 0, '实用工具箱', '', 'mdi-tools', 1, 70, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(17, 16, 'Hashids', '/tool/hashids', '', 2, 702, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(18, 16, '调用日志', '/tool/logs', '', 2, 703, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(19, 16, '接口文档', '/swagger/index.html', '', 2, 704, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(20, 16, 'GraphQL', '/graphql', '', 2, 705, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(21, 16, '接口指标', '/metrics', '', 2, 706, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(22, 16, '服务升级', '/upgrade', '', 2, 701, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(23, 0, '后台任务', '', 'mdi-av-timer', 1, 40, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(24, 23, '任务列表', '/cron/list', '', 2, 401, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(25, 16, 'WebSocket', '/tool/websocket', '', 2, 707, 1, -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', '');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;

--  テーブル bear_gin_db.menu_action の構造をダンプしています
CREATE TABLE IF NOT EXISTS `menu_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '菜单栏ID',
  `method` varchar(30) NOT NULL DEFAULT '' COMMENT '请求方式',
  `api` varchar(100) NOT NULL DEFAULT '' COMMENT '请求地址',
  `is_deleted` tinyint(1) NOT NULL DEFAULT -1 COMMENT '是否删除 1:是  -1:否',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `created_user` varchar(60) NOT NULL DEFAULT '' COMMENT '创建人',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updated_user` varchar(60) NOT NULL DEFAULT '' COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `idx_menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COMMENT='功能权限表';

-- テーブル bear_gin_db.menu_action: ~48 rows (約) のデータをダンプしています
/*!40000 ALTER TABLE `menu_action` DISABLE KEYS */;
REPLACE INTO `menu_action` (`id`, `menu_id`, `method`, `api`, `is_deleted`, `created_at`, `created_user`, `updated_at`, `updated_user`) VALUES
	(1, 17, 'GET', '/api/tool/hashids/**', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(2, 14, 'POST', '/api/tool/cache/search', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(3, 14, 'PATCH', '/api/tool/cache/clear', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(4, 15, 'GET', '/api/tool/data/dbs', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(5, 15, 'POST', '/api/tool/data/mysql', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(6, 15, 'POST', '/api/tool/data/tables', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(7, 2, 'PATCH', '/api/config/email', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(8, 5, 'POST', '/generator/gorm/execute', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(9, 6, 'POST', '/generator/handler/execute', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(10, 8, 'GET', '/authorized/add', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(11, 8, 'GET', '/authorized/api/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(12, 8, 'GET', '/api/authorized', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(13, 8, 'PATCH', '/api/authorized/used', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(14, 8, 'DELETE', '/api/authorized/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(15, 8, 'POST', '/api/authorized', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(16, 8, 'GET', '/api/authorized_api', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(17, 8, 'POST', '/api/authorized_api', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(18, 8, 'DELETE', '/api/authorized_api/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(19, 11, 'GET', '/admin/add', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(20, 11, 'POST', '/api/admin', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(21, 11, 'GET', '/api/admin', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(22, 11, 'PATCH', '/api/admin/used', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(23, 11, 'PATCH', '/api/admin/reset_password/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(24, 11, 'DELETE', '/api/admin/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(25, 11, 'GET', '/admin/action/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(26, 11, 'GET', '/api/admin/menu/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(27, 11, 'POST', '/api/admin/menu', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(28, 12, 'GET', '/admin/menu_action/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(29, 12, 'GET', '/api/menu', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(30, 12, 'DELETE', '/api/menu/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(31, 12, 'GET', '/api/menu/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(32, 12, 'PATCH', '/api/menu/used', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(33, 12, 'POST', '/api/menu', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(34, 12, 'GET', '/api/menu_action', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(35, 12, 'POST', '/api/menu_action', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(36, 12, 'DELETE', '/api/menu_action/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(37, 22, 'POST', '/upgrade/execute', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(38, 11, 'PATCH', '/api/admin/offline', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(39, 12, 'PATCH', '/api/menu/sort', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(40, 24, 'GET', '/cron/add', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(41, 24, 'GET', '/cron/edit/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(42, 24, 'POST', '/api/cron', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(43, 24, 'POST', '/api/cron/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(44, 24, 'GET', '/api/cron', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(45, 24, 'GET', '/api/cron/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(46, 24, 'PATCH', '/api/cron/used', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(47, 24, 'PATCH', '/api/cron/exec/*', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', ''),
	(48, 25, 'POST', '/api/tool/send_message', -1, '2023-03-10 21:30:57', 'init', '2023-03-10 21:30:57', '');
/*!40000 ALTER TABLE `menu_action` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
