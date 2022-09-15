CREATE TABLE `model_scheduler` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `model_id` int(11) NOT NULL,
 `action` enum('PROCESS','ACTIVATE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PROCESS',
 `repeat_frequency` int(11) NOT NULL DEFAULT '0',
 `scheduled_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `last_processed` timestamp NULL DEFAULT NULL,
 `created_by` int(11) NOT NULL,
 `created_on` datetime NOT NULL,
 `is_active` int(11) NOT NULL DEFAULT '1',
`spark_config_json` mediumtext COLLATE utf8mb4_unicode_ci,
 `model_type_id` int(11) NOT NULL DEFAULT '1',
 PRIMARY KEY (`id`),
 KEY `org_id` (`org_id`)
);