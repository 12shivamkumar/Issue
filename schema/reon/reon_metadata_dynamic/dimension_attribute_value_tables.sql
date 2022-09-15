CREATE TABLE `dimension_attribute_value_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_prefix` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` enum('CAP','VERTICAL','ORG') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_id` (`scope`,`table_prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;
