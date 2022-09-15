-- start  Schema : `cdc_source_table_info`
CREATE TABLE `cdc_source_table_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `range_partition_col` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point_type`  enum('MYSQL','MONGO','ES','S3') NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `db_table` (`db_name`,`table_name`)
) COLLATE=utf8mb4_unicode_ci;