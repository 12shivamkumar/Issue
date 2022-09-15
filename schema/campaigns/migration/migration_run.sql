

CREATE TABLE `migration_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('OPEN','PROCESSING','CLOSED','ERROR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_migration_time` datetime NOT NULL,
  `type` enum('MIGRATE','REVERT') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'MIGRATE for v1 to v2',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `org_last_migrated_time_k` (`org_id`,`last_migration_time`)
) 

