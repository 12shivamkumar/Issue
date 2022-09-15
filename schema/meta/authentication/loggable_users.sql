

CREATE TABLE `loggable_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `cluster_region` enum('APAC','APAC-MORE','US','EU') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'APAC',
  `type` enum('TILL','ADMIN_USER','STR_SERVER','ASSOCIATE','USER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'TILL',
  `ref_id` int(11) NOT NULL,
  `password_salt` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `password_validity` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`),
  KEY `ref_id` (`ref_id`)
) 

