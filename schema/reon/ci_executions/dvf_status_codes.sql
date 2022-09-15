CREATE TABLE `dvf_status_codes` (
 `status_code` smallint(6) NOT NULL,
 `observations` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
 PRIMARY KEY (`status_code`)
);