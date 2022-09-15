CREATE TABLE `liability_split_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `component_type` enum('PROGRAM','PROMOTION') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT 'Checks if the liability split is active or not',
  `liability_owner_id` int(11) NOT NULL,
  `split_ratio` decimal(6,3) NOT NULL,
  `start_date` datetime NOT NULL COMMENT 'Date when the liability starts',
  `end_date` datetime NOT NULL COMMENT 'Date when the liability ends',
  `created_by` BIGINT(20) NOT NULL DEFAULT '-1' COMMENT 'user who created the liability split',
  `created_on` datetime NOT NULL COMMENT 'Date when the liability split was created',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `idx_liability_owner` (`org_id`,`component_id`,`component_type`,`is_active`,`liability_owner_id`),
  KEY `idx_auto_update_time` (`auto_update_time`) ,
  KEY `idx_org_auto_update_time` (`org_id`,`auto_update_time`)
) ;

