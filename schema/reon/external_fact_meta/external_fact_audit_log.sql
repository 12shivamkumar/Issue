-- start  Schema : `external_fact_audit_log`
CREATE TABLE `external_fact_audit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` varchar(200) NOT NULL,
  `fact_name` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `s3_path` text NOT NULL,
  `status` enum('NEW','PROCESSED','UPDATED','PROCESSING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NEW',
  `created_by` varchar(200) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '1',
  `scope_id` int(11) NOT NULL DEFAULT '-1000',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
);
