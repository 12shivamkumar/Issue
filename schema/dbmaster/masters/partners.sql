CREATE TABLE `partners` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `org_id` bigint(20) NOT NULL,
    `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `website_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    `is_active` tinyint(1) NOT NULL,
    `added_by` int(11) NOT NULL,
    `added_on` datetime NOT NULL,
    `updated_by` int(11) NOT NULL,
    `updated_on` datetime NOT NULL,
    `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`,`org_id`),
    KEY `org_name_idx` (`org_id`,`name`),
    KEY `auto_time_idx` (`auto_update_time`,`org_id`)
)