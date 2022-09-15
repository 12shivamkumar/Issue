CREATE TABLE `whatsapp_config_values` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_key_id` bigint(20) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `whatsapp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_config_key_id` (`config_key_id`),
  KEY `fk_whatsapp_id` (`whatsapp_id`)
);