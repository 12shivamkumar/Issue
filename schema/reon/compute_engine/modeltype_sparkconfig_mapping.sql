CREATE TABLE `modeltype_sparkconfig_mapping` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `model_type_id` int(11) NOT NULL,
 `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
 `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'if model is deleted, corresponding sparkconfigs is deactivated',
 `created_on` datetime NOT NULL,
 `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`)
);