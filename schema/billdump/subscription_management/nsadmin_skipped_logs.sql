

CREATE TABLE `nsadmin_skipped_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `resolved_tags` mediumtext COLLATE utf8mb4_unicode_ci,
  `last_updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`,`org_id`)
) 

