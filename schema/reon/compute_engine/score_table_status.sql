CREATE TABLE `score_table_status` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `model_id` int(11) NOT NULL,
 `model_type_id` int(11) NOT NULL,
 `score_table` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
 `approved_status` enum('NOT_APPROVED','APPROVED','RELEASED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NOT_APPROVED',
 `year_month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 `created_by` int(11) NOT NULL,
 `created_on` datetime NOT NULL,
 `last_modified_by` int(11) NOT NULL,
 `last_modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
);

