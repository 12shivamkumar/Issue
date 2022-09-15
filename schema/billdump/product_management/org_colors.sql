

CREATE TABLE `org_colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `ou_id` bigint(20) NOT NULL DEFAULT '-1',
  `hexpallette` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pallette` int(11) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hex_pallette_idx` (`org_id`,`hexpallette`),
  UNIQUE KEY `hex_pallette_ou_idx` (`org_id`,`ou_id`,`hexpallette`),
  UNIQUE KEY `pallette_idx` (`org_id`,`pallette`),
  UNIQUE KEY `pallette_ou_idx` (`org_id`,`ou_id`,`pallette`),
  KEY `auto_time_idx` (`auto_update_timestamp`)
) 

