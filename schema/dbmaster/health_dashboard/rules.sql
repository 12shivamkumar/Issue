

CREATE TABLE `rules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) DEFAULT NULL,
  `rule` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ;

