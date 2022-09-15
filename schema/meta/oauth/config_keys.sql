CREATE TABLE `config_keys` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `is_active` boolean NOT NULL DEFAULT TRUE,
                               `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                               `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               PRIMARY KEY (`id`),
                               KEY `name_idx` (`name`),
                               KEY `auto_update_time_idx` (`auto_update_time`)
);