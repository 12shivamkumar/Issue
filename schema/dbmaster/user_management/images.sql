CREATE TABLE `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `entity_type` enum('REQUEST','CUSTOMER','REGULAR_TRANSACTION') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'REQUEST', 
  `entity_id` bigint(20) NOT NULL,
  `provider` enum('FILESERVICE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FILESERVICE',
  `serial` int(11) NOT NULL,
  `image_reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_entity_idx` (`org_id`,`entity_type`, `entity_id`),
  KEY `org_namespace_file_idx` (`org_id`,`namespace`,`file_name`),
  KEY `auto_update_time` (`auto_update_time`,`org_id`)
);