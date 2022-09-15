

CREATE TABLE `partner_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `loyalty_program_id` int(11) NOT NULL COMMENT 'Loyalty program to which the partner program is linked',
  `partner_program_identifier` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Extenal identifier of the partner program',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the partner program',
  `type` enum('EXTERNAL','SUPPLEMENTARY') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'EXTERNAL',
  `description` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'Description of the partner program',
  `is_active` tinyint(1) NOT NULL COMMENT 'Checks if the partner program is active or not',
  `is_tier_based` tinyint(1) NOT NULL COMMENT 'Checks if the partner program has tiers',
  `points_exchange_ratio` decimal(15,3) NOT NULL COMMENT 'Loyalty program to partner program points conversion ratio',
  `expiry_date` datetime DEFAULT NULL COMMENT 'expiry date of supplementary partner program',
  `backup_partner_program_id` int(11) DEFAULT NULL COMMENT 'backup partner program after partner program expiry',
  `created_on` datetime NOT NULL COMMENT 'Date of creation of partner program',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `partner_program_name_idx` (`org_id`,`name`),
  KEY `auto_update_time_idx` (`auto_update_time`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`)
) ;
