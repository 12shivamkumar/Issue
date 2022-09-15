

CREATE TABLE `jwk_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jwk_json` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

