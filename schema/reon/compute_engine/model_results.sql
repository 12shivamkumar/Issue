CREATE TABLE `model_results` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `model_id` int(11) NOT NULL,
 `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `is_active` tinyint(1) NOT NULL DEFAULT '1',
 `created_by` int(11) NOT NULL DEFAULT '0',
 `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
);