CREATE TABLE `reload_config_request` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `org_id` int(11) NOT NULL,
 `is_active` tinyint(1) NOT NULL DEFAULT '0',
 `is_processed` tinyint(1) NOT NULL DEFAULT '0',
 `is_forced` tinyint(1) NOT NULL DEFAULT '0',
 `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `created_by` int(11) NOT NULL,
 PRIMARY KEY (`id`)
);