-- start  Schema : `external_fact`
CREATE TABLE `external_fact` (
  `id` varchar(100) NOT NULL,
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `name` varchar(100) NOT NULL,
  `definition` text NOT NULL,
  `type` enum('INCREMENTAL','SNAPSHOT') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint(20) NOT NULL,
  `primary_date_column` varchar(200) DEFAULT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  `is_export_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fact_name` (`name`,`scope_id`,`version`)
);
