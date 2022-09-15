CREATE TABLE `points_expiry_extension_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` enum('IN_PROGRESS','FAILED','COMPLETED') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_constraint_orgId_customer_id` (`org_id`,`customer_id`),
  KEY `idx_org_customer_status` (`org_id`,`customer_id`,`status`)
);
