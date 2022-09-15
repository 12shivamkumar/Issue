

CREATE TABLE `tender_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_tender_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_earning` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Specifies if tender is eligible for points earning or not',
  `added_by` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `priority` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `program_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `org_auto_time_idx` (`org_id`,`auto_update_time`) 
) ;

