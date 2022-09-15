

CREATE TABLE `api_keys` (
  `org_id` bigint(20) NOT NULL,
  `api_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`org_id`)
) ;

