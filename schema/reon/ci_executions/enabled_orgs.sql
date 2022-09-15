

CREATE TABLE `enabled_orgs` (
  `org_id` int(11) NOT NULL,
  `org_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `is_on_reon` tinyint(1) NOT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB  COLLATE=utf8mb4_unicode_ci;

