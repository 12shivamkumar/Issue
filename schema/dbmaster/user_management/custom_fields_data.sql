

CREATE TABLE `custom_fields_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `cf_id` int(11) NOT NULL COMMENT 'reference to the custom field',
  `assoc_id` bigint(20) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `entered_by` bigint(20) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_id` (`org_id`,`assoc_id`,`cf_id`),
  KEY `org_id_2` (`org_id`,`cf_id`),
  KEY `auto_time_idx` (`modified`) 
) ;

