

CREATE TABLE `groups_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `org_id` bigint(20) NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_on` date NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`org_id`),
  KEY `group_id` (`group_id`,`org_id`)
) ;

