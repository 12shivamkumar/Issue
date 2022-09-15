

CREATE TABLE `voucher_issual_item_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) NOT NULL,
  `system_rule_id` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  auto_update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  KEY `system_rule_id` (`system_rule_id`),
  INDEX auto_update_time (auto_update_time),
 INDEX org_auto_time_idx (org_id,auto_update_time)
) ;

