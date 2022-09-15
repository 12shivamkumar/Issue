CREATE TABLE `onboarding_run_details` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `audit_log_id` int(11) NOT NULL,
 `type` enum('INPUT_VALIDATION', 'COMMIT_TO_METADATA', 'NEW_VERSION_CUT', 'ADD_ORG_TO_FULL_RUN', 'CANCEL_REQUEST','ENABLE_VERSION','ETL_RUN') NOT NULL,
 `status` enum('IN_PROGRESS', 'DONE', 'FAILED') DEFAULT 'IN_PROGRESS',
 `details` text DEFAULT NULL,
 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`) USING BTREE,
 KEY org_audit_log_idx (`org_id`, `audit_log_id`),
 KEY audit_log_idx (`audit_log_id`)
);