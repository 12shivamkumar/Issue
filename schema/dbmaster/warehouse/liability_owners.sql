CREATE TABLE `liability_owners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` enum('PROGRAM','PARTNER') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` BIGINT(20) NOT NULL DEFAULT '-1' COMMENT 'user who created the liability owners',
  `created_on` datetime NOT NULL COMMENT 'Date when the liability owner was created',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `idx_liability_owner` (`org_id`,`owner_id`,`owner_type`),
  KEY `idx_auto_update_time` (`auto_update_time`) ,
  KEY `idx_org_auto_update_time` (`org_id`,`auto_update_time`)
) ;