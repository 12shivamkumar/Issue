CREATE TABLE `benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the benefit',
  `benefit_type` enum('POINTS','VOUCHER') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of benefit',
  `linked_program_type` enum('PARTNER','LOYALTY') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'benefit attached to loyalty or partner program',
  `program_id` int(11) NOT NULL COMMENT 'id of loyalty/partner program',
  `promotion_id` int(11) NOT NULL COMMENT 'maps to corresponding promotion',
  `is_active` tinyint(1) NOT NULL COMMENT 'Checks if benefit is active or not',
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL COMMENT 'Date of creation of benefit',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `benefit_name` (`org_id`, `name`),
  KEY `program_promo_idx` (`org_id`,`program_id`,`promotion_id`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`)
) ;