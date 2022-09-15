CREATE TABLE `org_configs` (
  `org_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_location_aware` tinyint(1) NOT NULL DEFAULT '0',
  `location_type` enum('ZONE','STORE','NONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `is_mj` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`org_id`)
)