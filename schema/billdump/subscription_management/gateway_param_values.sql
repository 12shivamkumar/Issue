

CREATE TABLE `gateway_param_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `org_gateways_id` int(11) DEFAULT NULL,
  `param_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `org_param` (`org_gateways_id`,`param_key`),
  KEY `auto_update_time` (`auto_update_time`,`org_id`)
) 

