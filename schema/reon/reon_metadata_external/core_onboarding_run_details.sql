CREATE TABLE `core_onboarding_run_details` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `core_audit_log_id` int(11) NOT NULL,
 `type` varchar(30) NOT NULL,
 `status` enum('IN_PROGRESS', 'DONE', 'FAILED' ,'SUCCESS') DEFAULT 'IN_PROGRESS',
 `details` text DEFAULT NULL,
 `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`) USING BTREE,
 KEY audit_log_idx (`core_audit_log_id`));   