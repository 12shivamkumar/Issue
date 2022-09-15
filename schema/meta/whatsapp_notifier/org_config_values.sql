CREATE TABLE `org_config_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_key_id` bigint(20) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_org_id` (`org_id`),
  KEY `fk_config_key_id` (`config_key_id`)
);