

CREATE TABLE `msging_default_values` (
  `org_id` int(11) NOT NULL,
  `field_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_value` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `org_id` (`org_id`,`field_name`)
) ;

