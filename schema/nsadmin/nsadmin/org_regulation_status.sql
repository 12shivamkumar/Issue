CREATE TABLE `org_telecom_regulation_status` (
 `org_id` int(11) NOT NULL,
 `org_unit_id` int(11) NOT NULL,
 `type` enum('DLT') COLLATE utf8mb4_unicode_ci NOT NULL,
 `status` tinyint(1) NOT NULL DEFAULT '0',
 `entity_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
 `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`,`org_unit_id`)
)