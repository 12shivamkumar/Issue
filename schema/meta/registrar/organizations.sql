

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `added_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `added_by` int(11) NOT NULL DEFAULT '-1' COMMENT 'Admin User Id',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `cluster` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Cluster to which this org belongs to',
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) 

