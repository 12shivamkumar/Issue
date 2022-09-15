

CREATE TABLE `promotions_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  `field_name` varchar(100),
  `field_id` int(11) DEFAULT -1 COMMENT 'auto_increment id from custom_fields table for fields of promotion type. -1 when the field is not brand defined',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_orgId_programId_identifier` (`org_id`,`program_id`,`auto_update_time`)
) ;

