CREATE TABLE `federated_sso_settings` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `org_id` bigint(20) NOT NULL,
    `is_org_attribute_enabled` tinyint(1) DEFAULT 0,
    `is_enabled` tinyint(1) DEFAULT 0,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `org_id` (`org_id`)
  );