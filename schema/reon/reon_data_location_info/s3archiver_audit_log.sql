-- start

CREATE TABLE `s3archiver_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` ENUM('NEW','SKIPPED','IN_PROGRESS','SUCCESS','FAILED'),
  `objects_moved_cnt` int,
  `details` MEDIUMTEXT DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  KEY `org_id` (`id`,`org_id`)
); 

-- end
