CREATE TABLE `whatsapp_config_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_val` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_whatsapp_id` (`whatsapp_id`)
);