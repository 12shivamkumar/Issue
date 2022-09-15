CREATE TABLE `dimension` (
  `dim_id` int(11) NOT NULL AUTO_INCREMENT,
  `fact_column_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dim_table_id` int(11) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `display_name` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_type` enum('DIRECT','BRIDGE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bridge_table_src_type` enum('DIM','FACT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bridge_table_id` int(11) DEFAULT NULL,
  `fact_pk` int(11) DEFAULT NULL,
  `dim_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`dim_id`),
  UNIQUE KEY `dimension_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;
