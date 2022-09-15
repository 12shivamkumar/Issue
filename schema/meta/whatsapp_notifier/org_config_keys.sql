CREATE TABLE `org_config_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) DEFAULT NULL,
  `default_val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);