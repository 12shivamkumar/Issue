

CREATE TABLE `trackable_entities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tracked_column_id` bigint(20) DEFAULT NULL,
  `entity_type` enum('ZONE','STORE','ORG','CONF_KEY','TILL','CONCEPT','ADMIN_USER') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tracked_column_id` (`tracked_column_id`,`entity_type`)
) ;

