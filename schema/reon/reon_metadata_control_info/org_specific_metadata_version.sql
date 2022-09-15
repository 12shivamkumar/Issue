CREATE TABLE `org_specific_metadata_version` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
 `is_valid` tinyint(1) NOT NULL DEFAULT '0',
 `added_on` timestamp NULL DEFAULT NULL,
 `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 PRIMARY KEY (`id`),
 UNIQUE KEY `version_name` (`version`),
 UNIQUE KEY `UK5l0ve9hdwwn8uv7tpynt4m0im` (`version`)
);
