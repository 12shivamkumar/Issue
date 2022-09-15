-- start  Schema : `fact_ftp_config`
CREATE TABLE `fact_ftp_config` (
 `id` varchar(150) NOT NULL,
 `ftp_config_id` varchar(150) NOT NULL,
 `fact_name` varchar(100) NOT NULL,
 `is_active` tinyint(1) NOT NULL DEFAULT '1',
 `scope_id` int(11) NOT NULL DEFAULT '-1000',
 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 UNIQUE KEY `fact_ftp_config_pk` (`ftp_config_id`,`fact_name`,`scope_id`) USING BTREE
);
