

CREATE TABLE `subscription_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` bigint(20) NOT NULL,
  `org_unit_id` bigint(20) NOT NULL DEFAULT '-1',
  `org_source_id` bigint(20) NOT NULL,
  `comm_channel_id` bigint(20) NOT NULL,
  `priority` enum('TRANS','BULK') COLLATE utf8mb4_unicode_ci NOT NULL,
  `communication_category_id` bigint(20) NOT NULL DEFAULT '-1',
  `user_id` bigint(20) NOT NULL,
  `status` enum('OPTIN','OPTOUT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` bigint(20) NOT NULL,
  `added_on` datetime NOT NULL,
  `auto_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_unq` (`org_id`,`org_unit_id`,`org_source_id`,`comm_channel_id`,`priority`,`user_id`),
  KEY `org_user_status` (`org_id`,`user_id`),
  KEY `auto_update_time` (`auto_update_time`)
) ;

