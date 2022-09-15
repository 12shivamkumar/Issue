CREATE TABLE `fact_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scope` enum('CAP','VERTICAL','ORG') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `name` varchar(55) NOT NULL,
  `definition` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `primary_date_key_dimension` int(11) DEFAULT NULL,
  `primary_date_key_dimension_id` int(11) NOT NULL,
  `parent_src_tables` varchar(100) DEFAULT NULL,
  `partition_keys` varchar(500) NOT NULL,
  `context_keys` varchar(500) DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `incremental_period_in_year` int(11) NOT NULL,
  `type` enum('BASE','ETL_ONLY','EXPORT_ONLY','SCD_HISTORY') NOT NULL DEFAULT 'BASE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000000;

-- Dump completed on 2020-06-05 12:04:46
