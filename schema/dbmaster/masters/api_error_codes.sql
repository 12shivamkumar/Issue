

CREATE TABLE `api_error_codes` (
  `error_code` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success` tinyint(1) DEFAULT '0',
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   KEY `UniqueErrorCodeInResource` (`error_code`,`resource`)
) ;

