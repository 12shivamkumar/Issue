

CREATE TABLE `org_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `rate_limit_threshold` int(11) NOT NULL DEFAULT '10',
  `updated_by` bigint(20) NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
   add_custom_sender enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`, org_id)
) 

