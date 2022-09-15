

CREATE TABLE `domain_gateway_validation_log` (
  `domain_gateway_map_id` int(11) NOT NULL,
  `domain_prop_id` int(11) NOT NULL DEFAULT '-1',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `is_manually_triggered` tinyint(1) NOT NULL DEFAULT '0',
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `triggered_by` int(11) NOT NULL DEFAULT '-1',
  `validation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `organization_identifier` (`org_id`,`gateway_id`,`domain_prop_id`),
  KEY `domain_gateway_identifier` (`domain_gateway_map_id`)
) 

