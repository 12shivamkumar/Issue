CREATE TABLE `fleet_permission_meta` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
   `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
   `modules` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
   `default_value` tinyint(1) DEFAULT 1,
   `is_active` tinyint(1) DEFAULT 1,
   `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
   `created_by` int(11) NOT NULL,
   `updated_by` int(11),
   `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`),
   KEY `key_name` (`name`)
 )