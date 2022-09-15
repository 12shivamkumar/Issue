CREATE TABLE `data_validation_result` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `model_id` int(11) NOT NULL,
 `type` enum('INVENTORY','TRANSACTION') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `threshold` double NOT NULL,
 `created_by` int(11) NOT NULL DEFAULT '0',
 `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
);