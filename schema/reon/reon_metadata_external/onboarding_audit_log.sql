CREATE TABLE `onboarding_audit_log` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `activity_details` text NOT NULL,
 `activity_type` varchar(200) NOT NULL,
 `status` enum('NEW','PROCESSED','VALIDATION_FAILED','FAILED','PROCESSING','RELEASED','REVERTED','CANCELLED','TAGGED_TO_VERSION','VERSION_ENABLED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NEW',
 `comment` text,
 `is_valid` tinyint(1) NOT NULL DEFAULT '1',
 `org_id` int(11) NOT NULL,
 `version_id` int NOT NULL DEFAULT -1,
 `created_by` varchar(200) DEFAULT NULL,
 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`) USING BTREE,
 KEY org_activity_type_status_idx (`org_id`, `activity_type`, `status`),
 KEY activity_type_status_idx (`activity_type`, `status`),
 KEY status_idx (`status`),
 KEY created_at_idx (`created_at`)
);
