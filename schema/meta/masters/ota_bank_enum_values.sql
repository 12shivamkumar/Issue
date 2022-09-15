CREATE TABLE `ota_bank_enum_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_id_value` (`id`,`value`)
)
