

CREATE TABLE `camp_entity_ou_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `entity_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_ids` text COLLATE utf8mb4_unicode_ci,
  `entered_by` int(11) DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `unique` (`org_id`,`type`,`ref_id`,`entity_type`)
) ;

