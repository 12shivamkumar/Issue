

CREATE TABLE `outbox_inbox_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `outbox_id` int(11) NOT NULL,
  `database_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `archived_table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `outbox_idx` (`outbox_id`)
) ;

