-- start  Schema : `ftp_config`
CREATE TABLE `ftp_config` (
 `id` varchar(120) NOT NULL,
 `ftp_server` varchar(100) NOT NULL,
 `ftp_user` varchar(20) NOT NULL,
 `ftp_password` text NOT NULL,
 `default_path` varchar(100) NOT NULL,
 `is_active` tinyint(1) NOT NULL DEFAULT '1',
 `scope_id` int(11) NOT NULL DEFAULT '-1000',
 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 UNIQUE KEY `fact_ftp_config_pk` (`ftp_server`,`ftp_user`,`scope_id`) USING BTREE
);
