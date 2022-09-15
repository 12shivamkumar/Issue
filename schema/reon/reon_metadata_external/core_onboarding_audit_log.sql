CREATE TABLE `core_onboarding_audit_log` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `activity_json` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'data type of payload depends on the activity type',
 `activity_type` varchar(200) NOT NULL,
 `activity_status` enum('NEW','INPUT_VALIDATION','WORKFLOW_VALIDATION','VALIDATION_DONE','PROCESSING','PROCESSED','REVERTED','CANCELLED','RELEASED','VERSION_CUT','FAILED','TEST_RELEASE_STARTED','TEST_RELEASE_DONE','TEST_RELEASE_FAILED','PROMOTION_STARTED','PROMOTION_DONE','PROMOTION_FAILED','RELEASE_STARTED','RELEASE_DONE','RELEASE_FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NEW',
 `comment` text,
 `created_by` varchar(200) DEFAULT NULL,
 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`) USING BTREE,
 `version_id`int NOT NULL DEFAULT -1,
 `token_id`varchar(40) DEFAULT NULL,
KEY activity_type_status_idx (`activity_type`, `activity_status`),
UNIQUE KEY `token_id` (`token_id`),
KEY status_idx (`activity_status`),
KEY created_by_filter_idx (`created_by`, `activity_status`, `activity_type`)
);
