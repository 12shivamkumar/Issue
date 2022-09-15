

CREATE TABLE `email_links_redirection_stats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL COMMENT 'refers to email redirection link',
  `user_id` int(11) NOT NULL,
  `clicks` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `auto_update_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`org_id`),
  UNIQUE KEY `ref_id` (`ref_id`,`user_id`),
  KEY `org_id` (`org_id`,`ref_id`)
) ;

